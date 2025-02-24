// Mocks generated by Mockito 5.0.7 from annotations
// in hue_dart/test/hue_test.dart.
// Do not manually edit this file.

import 'dart:async' as i6;
import 'dart:convert' as i7;
import 'dart:typed_data' as i3;

import 'package:http/src/base_request.dart' as i8;
import 'package:http/src/client.dart' as i5;
import 'package:http/src/response.dart' as i2;
import 'package:http/src/streamed_response.dart' as i4;
import 'package:mockito/mockito.dart' as i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: prefer_const_constructors

// ignore_for_file: avoid_redundant_argument_values

class _FakeResponse extends i1.Fake implements i2.Response {}

class _FakeUint8List extends i1.Fake implements i3.Uint8List {}

class _FakeStreamedResponse extends i1.Fake implements i4.StreamedResponse {}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends i1.Mock implements i5.Client {
  MockClient() {
    i1.throwOnMissingStub(this);
  }

  @override
  i6.Future<i2.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<i2.Response>.value(_FakeResponse()),)
          as i6.Future<i2.Response>);
  @override
  i6.Future<i2.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<i2.Response>.value(_FakeResponse()),)
          as i6.Future<i2.Response>);
  @override
  i6.Future<i2.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          i7.Encoding? encoding,}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding},),
              returnValue: Future<i2.Response>.value(_FakeResponse()),)
          as i6.Future<i2.Response>);
  @override
  i6.Future<i2.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          i7.Encoding? encoding,}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding},),
              returnValue: Future<i2.Response>.value(_FakeResponse()),)
          as i6.Future<i2.Response>);
  @override
  i6.Future<i2.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          i7.Encoding? encoding,}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding},),
              returnValue: Future<i2.Response>.value(_FakeResponse()),)
          as i6.Future<i2.Response>);
  @override
  i6.Future<i2.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          i7.Encoding? encoding,}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding},),
              returnValue: Future<i2.Response>.value(_FakeResponse()),)
          as i6.Future<i2.Response>);
  @override
  i6.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value(''),) as i6.Future<String>);
  @override
  i6.Future<i3.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers,}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<i3.Uint8List>.value(_FakeUint8List()),)
          as i6.Future<i3.Uint8List>);
  @override
  i6.Future<i4.StreamedResponse> send(i8.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<i4.StreamedResponse>.value(_FakeStreamedResponse()),)
          as i6.Future<i4.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null,);
}
