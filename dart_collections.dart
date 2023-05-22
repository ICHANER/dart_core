void main() {
  //Lists
  var grains = <String>[];
  assert(grains.isEmpty);

  var fruits = ['apples', 'oranges'];
  fruits.add('pineapple');
  fruits.addAll(['grapes', 'bananas']); //Add multiple items to a list.
  assert(fruits.length == 5);

  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);

  fruits.clear();
  assert(fruits.isEmpty);

  var vegetables = List.filled(99, 'broccoli');
  //List.filled创建了包含99个元素的列表，每个都为"broccoli"
  assert(vegetables.every((v) => v == 'broccoli'));
  //list.every内置方法用于检查一个列表中所有元素是否都满足某个条件 均满足返回true

  var fruitss = ['apples', 'oranges'];
  // Access a list item by index.
  assert(fruitss[0] == 'apples');
  // Find an item in a list.
  assert(fruitss.indexOf('apples') == 0);

  var fruitsss = ['bananas', 'apples', 'oranges'];
  // Sort a list.
  fruitsss.sort((a, b) => a.compareTo(b));
  assert(fruitsss[0] == 'apples');

  // This list should contain only strings.
  var xfruits = <String>[];
  xfruits.add('apples');
  var fruit = xfruits[0];
  assert(fruit is String);

// Create an empty set of strings.
  var ingredients = <String>{};
// Add new items to it.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);
// Adding a duplicate复制 item has no effect. ----list不会重复
  ingredients.add('gold');
  assert(ingredients.length == 3);
// Remove an item from a set.
  ingredients.remove('gold');
  assert(ingredients.length == 2);
// You can also create sets using
// one of the constructors.
  var atomicNumbers = Set.from([79, 22, 54]);

  var ingredients2 = Set<String>();
  ingredients2.addAll(['gold', 'titanium', 'xenon']);
// Create the intersection of two sets.
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients2.intersection(nobleGases); //获取交集
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));

// Maps
// often use strings as keys.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

// Maps can be built from a constructor.
  var searchTerms = Map();

// Maps are parameterized types; you can specify what
// types the key and value should be.
  var nobleGases2 = Map<int, String>();
  var nobleGases3 = {54: 'xenon'};
// Retrieve a value with a key.
  assert(nobleGases3[54] == 'xenon');
// Check whether a map contains a key.
  assert(nobleGases3.containsKey(54));
// Remove a key and its value.
  nobleGases3.remove(54);
  assert(!nobleGases3.containsKey(54));
}
