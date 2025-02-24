// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppData> _$appDataSerializer = new _$AppDataSerializer();

class _$AppDataSerializer implements StructuredSerializer<AppData> {
  @override
  final Iterable<Type> types = const [AppData, $AppData];
  @override
  final String wireName = 'AppData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AppData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.version;
    if (value != null) {
      result
        ..add('version')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(String),
          ),
        );
    }
    return result;
  }

  @override
  AppData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = new AppDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'version':
          result.version = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          break;
        case 'data':
          result.data = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          break;
      }
    }

    return result.build();
  }
}

class $AppData extends AppData {
  @override
  final int? version;
  @override
  final String? data;

  factory $AppData([void Function(AppDataBuilder)? updates]) =>
      (new AppDataBuilder()..update(updates)).build();

  $AppData._({this.version, this.data}) : super._();

  @override
  AppData rebuild(void Function(AppDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppDataBuilder toBuilder() => new AppDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppData && version == other.version && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, version.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppData')
          ..add('version', version)
          ..add('data', data))
        .toString();
  }
}

class AppDataBuilder implements Builder<AppData, AppDataBuilder> {
  $AppData? _$v;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  AppDataBuilder();

  AppDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as $AppData;
  }

  @override
  void update(void Function(AppDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AppData build() {
    final $result = _$v ?? new $AppData._(version: version, data: data);
    replace($result);
    return $result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
