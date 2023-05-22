class FooException implements Exception {
  final String? msg;

  const FooException([this.msg]);

  @override
  String toString() => msg ?? 'FooException';
}

void fun() {
  var i = 1;
  if (i < 100) {
    throw FooException('the i is less than 100.');
  }
  //print('ok');
}

void main(List<String> args) {
  fun();
}
