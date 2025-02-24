import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hue_dart/src/core/serializers.dart';

part 'bridge_exception.g.dart';

abstract class BridgeException
    implements Built<BridgeException, BridgeExceptionBuilder> {
  String? get address;

  String? get description;

  int? get type;

  static Serializer<BridgeException> get serializer =>
      _$bridgeExceptionSerializer;

  factory BridgeException([Function(BridgeExceptionBuilder b) updates]) =
      $BridgeException;

  BridgeException._();

  factory BridgeException.fromJson(Map? json) {
    return serializers.deserializeWith(BridgeException.serializer, json)!;
  }
}
