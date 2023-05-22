import 'dart:core';

int meaningOfLife = 42;
double valueOfPi = 3.141592;
bool visible = true;
String shakespeareQuote = "All the world's a stage, ...";
var moreShakespeare = StringBuffer();

void main(List<String> args) {
  moreShakespeare.write('AAA'); //该语句不可在全局范围私用，必须在某个函数、方法或初始化器中执行
  moreShakespeare.write('BBB');
  print('part 1: ' + moreShakespeare.toString());

  assert(int.parse('42') == 42); //将字符串解析为整型
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);

  assert(num.parse('42') is int);
  assert(num.parse('0x42') is int);
  assert(num.parse('0.50') is double);

  assert(int.parse('42', radix: 16) == 66);

  // Convert
  assert(42.toString() == '42');
  assert(123.456.toString() == '123.456');

  // Specify the number of digits after the decimal.
  assert(123.456.toStringAsFixed(2) == '123.46');

  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);

  // Convert to uppercase.
  assert('web apps'.toUpperCase() == 'WEB APPS');

  // Convert to lowercase.
  assert('WEB APPS'.toLowerCase() == 'web apps');

  // Check whether a string contains another string.
  assert('Never odd or even'.contains('odd'));

  // Does a string start with another string?
  assert('Never odd or even'.startsWith('Never'));

  // Does a string end with another string?
  assert('Never odd or even'.endsWith('even'));

  // Find the location of a string inside a string.
  assert('Never odd or even'.indexOf('odd') == 6);

  // Grab a substring.  子串
  assert('Never odd or even'.substring(6, 9) == 'odd');

  // Split a string using a string pattern. 拆分字符串
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');

  // Get a UTF-16 code unit (as a string) by index.
  assert('Never odd or even'[0] == 'N');

  // Use split() with an empty string parameter to get
  // a list of all characters (as Strings); good for
  // iterating.
  for (final char in 'hello'.split('')) {
    print(char);
  }

  // Get all the UTF-16 code units in the string.
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);

  // Trim a string.  去除空格
  assert('  hello  '.trim() == 'hello');
  // Check whether a string is empty.
  assert(''.isEmpty);
  // Strings with only white space are not empty.
  assert('  '.isNotEmpty);
}
