import 'dart:async';

import 'package:hue_dart/src/configuration/configuration_api.dart';
import 'package:hue_dart/src/configuration/pushlink_storage.dart';
import 'package:hue_dart/src/core/bloc_base.dart';
import 'package:hue_dart/src/core/bridge.dart';
import 'package:hue_dart/src/core/bridge_discovery.dart';
import 'package:hue_dart/src/core/discovery_result.dart';

class PushlinkBloc extends BlocBase {
  final PushlinkStorage _pushlinkStorage;
  final BridgeDiscovery _discovery;

  StreamController<bool> _hasUsername = StreamController();
  Stream<bool> get hasUsername => _hasUsername.stream;

  StreamController<List<DiscoveryResult>> _discoveryResults =
      StreamController();
  Stream<List<DiscoveryResult>> get discoveryResults =>
      _discoveryResults.stream;

  StreamController<String> _manualSearch = StreamController();
  Sink<String> get manualSearch => _manualSearch.sink;

  final StreamController<DiscoveryResult> _manualSearchResult =
      StreamController();
  Stream<DiscoveryResult> get manualSearchResult => _manualSearchResult.stream;

  StreamController<int> _progress = StreamController();
  Stream<int> get progress => _progress.stream;

  StreamController<bool> _restart = StreamController();
  Stream<bool> get restart => _restart.stream;

  StreamController<Bridge> _bridge = StreamController();
  Sink<Bridge> get bridge => _bridge.sink;

  StreamController<HueApiDeviceType> _start = StreamController();
  Sink<HueApiDeviceType> get start => _start.sink;

  PushlinkBloc(this._pushlinkStorage, this._discovery);

  @override
  Future<void> init() async {
    final hasUsername = await _pushlinkStorage.usernameExists();
    _hasUsername.add(hasUsername);
    _start.stream.listen(_startPushlink);
    _discoveryResults.onListen = () async {
      try {
        final results = await _discovery.automatic();
        _discoveryResults.add(results);
      } catch (error, stacktrace) {
        _discoveryResults.addError(error, stacktrace);
      }
    };

    _manualSearch.stream.listen((ipAddress) async {
      try {
        final result = await _discovery.manual(ipAddress);
        _manualSearchResult.add(result);
      } catch (error, stacktrace) {
        _manualSearchResult.addError(error, stacktrace);
      }
    });
  }

  Future<void> _startPushlink(HueApiDeviceType deviceType) async {
    _restart.add(false);
    for (var i = 1; i <= 30; i++) {
      await Future.delayed(const Duration(seconds: 1));
      _progress.add(i);
      final bridge = await _bridge.stream.last;
      final response = await bridge.createUser(deviceType: deviceType);
      final hasUsername = response.username != null;
      if (hasUsername) {
        final savedUsername =
            await _pushlinkStorage.saveUsername(response.username!);
        _hasUsername.add(savedUsername);
        break;
      }
    }
    _restart.add(true);
  }

  @override
  void dispose() {
    _hasUsername.close();
    _hasUsername = StreamController();
    _start.close();
    _start = StreamController();
    _progress.close();
    _progress = StreamController();
    _restart.close();
    _restart = StreamController();
    _manualSearch.close();
    _manualSearch = StreamController();
    _discoveryResults.close();
    _discoveryResults = StreamController();
    _bridge.close();
    _bridge = StreamController();
    init();
  }
}
