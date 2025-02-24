// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Command> _$commandSerializer = new _$CommandSerializer();

class _$CommandSerializer implements StructuredSerializer<Command> {
  @override
  final Iterable<Type> types = const [Command, $Command];
  @override
  final String wireName = 'Command';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Command object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'address',
      serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      ),
      'method',
      serializers.serialize(
        object.method,
        specifiedType: const FullType(String),
      ),
      'body',
      serializers.serialize(
        object.body,
        specifiedType: const FullType(
          BuiltMap,
          const [const FullType(String), const FullType(String)],
        ),
      ),
    ];

    return result;
  }

  @override
  Command deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = new CommandBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          break;
        case 'method':
          result.method = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          break;
        case 'body':
          result.body.replace(
            serializers.deserialize(
              value,
              specifiedType: const FullType(
                BuiltMap,
                const [const FullType(String), const FullType(String)],
              ),
            )!,
          );
          break;
      }
    }

    return result.build();
  }
}

class $Command extends Command {
  @override
  final String address;
  @override
  final String method;
  @override
  final BuiltMap<String, String> body;

  factory $Command([void Function(CommandBuilder)? updates]) =>
      (new CommandBuilder()..update(updates)).build();

  $Command._({required this.address, required this.method, required this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(address, 'Command', 'address');
    BuiltValueNullFieldError.checkNotNull(method, 'Command', 'method');
    BuiltValueNullFieldError.checkNotNull(body, 'Command', 'body');
  }

  @override
  Command rebuild(void Function(CommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommandBuilder toBuilder() => new CommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Command &&
        address == other.address &&
        method == other.method &&
        body == other.body;
  }

  @override
  int get hashCode {
    return $jf(
      $jc($jc($jc(0, address.hashCode), method.hashCode), body.hashCode),
    );
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Command')
          ..add('address', address)
          ..add('method', method)
          ..add('body', body))
        .toString();
  }
}

class CommandBuilder implements Builder<Command, CommandBuilder> {
  $Command? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  MapBuilder<String, String>? _body;
  MapBuilder<String, String> get body =>
      _$this._body ??= new MapBuilder<String, String>();
  set body(MapBuilder<String, String>? body) => _$this._body = body;

  CommandBuilder();

  CommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _method = $v.method;
      _body = $v.body.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Command other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as $Command;
  }

  @override
  void update(void Function(CommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Command build() {
    $Command $result;
    try {
      $result = _$v ??
          new $Command._(
            address: BuiltValueNullFieldError.checkNotNull(
              address,
              'Command',
              'address',
            ),
            method: BuiltValueNullFieldError.checkNotNull(
              method,
              'Command',
              'method',
            ),
            body: body.build(),
          );
    } catch (_) {
      late String $failedField;
      try {
        $failedField = 'body';
        body.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
          'Command',
          $failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace($result);
    return $result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
