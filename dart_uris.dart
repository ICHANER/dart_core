import 'dart:core';

void main() {
  //fully qualified URIs
  var uri = 'https://example.org/api?foo=some message';
  var encoded = Uri.encodeFull(uri); //fully qualified URIs
  assert(encoded == 'https://example.org/api?foo=some%20message');
  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);

  //En/Decoding URI components
  uri = 'https://example.org/api?foo=some message';
  encoded = Uri.encodeComponent(uri);
  assert(encoded == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');
  decoded = Uri.decodeComponent(encoded);
  assert(uri == decoded);

//parsing
  Uri uri2;
  uri2 = Uri.parse('https://example.org:8080/foo/bar#frag');
  assert(uri2.scheme == 'https');
  assert(uri2.host == 'example.org');
  assert(uri2.path == '/foo/bar');
  assert(uri2.fragment == 'frag');
  assert(uri2.origin == 'https://example.org:8080');

//building uri
  var uri3 = Uri(
      scheme: 'https',
      host: 'example.org',
      path: '/foo/bar',
      fragment: 'frag',
      queryParameters: {'lang': 'dart'});
  assert(uri3.toString() == 'https://example.org/foo/bar?lang=dart#frag');
}
