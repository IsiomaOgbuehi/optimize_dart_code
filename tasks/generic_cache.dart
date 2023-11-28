
/*
Write a Dart class that implements a generic cache with the following requirements:

    The cache should have a maximum size limit. Once the limit is reached, the least recently used item should be removed when a new item is added.
    The cache should support adding an item, retrieving an item by key, and clearing the entire cache.
    Implement efficient data structures and algorithms to ensure fast access and removal operations.

Please include the necessary error handling and consider thread safety in your implementation.
*/

class GenericCache<K, V> {
  final int maxSize;

  GenericCache(this.maxSize);

  void addItem(K key, V value) {}

  V? getItem(K key) {}

  void clearCache() {}

}

void main() {
  var cache = GenericCache<String, int>(3);

  cache.addItem('one', 1);
  cache.addItem('two', 2);
  cache.addItem('three', 3);

  print(cache.getItem('one'));  // Output: 1

  cache.addItem('four', 4);  // 'two' should be removed due to the size limit

  print(cache.getItem('two'));  // Output: null

  cache.clearCache();
}
