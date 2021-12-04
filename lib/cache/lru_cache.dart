
import 'dart:collection';

///
/// LRU策略的缓存map
///
class LruCache<K, V> {

  late LinkedHashMap<K, V> _cache;
  int _capacity = 20;

  LruCache({int capacity = 20}) {
    _cache = new LinkedHashMap();
    if (capacity <= 0) {
      print("Capacity should be positive, force set to default capacity:${this._capacity}");
    } else {
      this._capacity = capacity;
    }
  }

  operator [](K? key) => _cache[key];

  void operator []=(key, value) {
    put(key, value);
  }

  Map<K, V> getAll() {
    return Map.from(_cache);
  }

  V? get(K key) {
    return _cache[key];
  }

  put(K key, V value) {
    if (containsKey(key)) {
      remove(key);
    }
    if (length >= _capacity) {
      remove(_cache.keys.first);
    }
    _cache[key] = value;
  }

  V? remove(K key) {
    _cache.remove(key);
  }

  bool containsKey(Object? key) {
    return _cache.containsKey(key);
  }

  bool containsValue(Object? value) {
    return _cache.containsValue(value);
  }

  bool get isEmpty => _cache.isEmpty;

  bool get isNotEmpty => _cache.isNotEmpty;

  Iterable<K> get keys => _cache.keys;

  Iterable<V> get values => _cache.values;

  int get length => _cache.length;

  clear() {
    _cache.clear();
  }

  @override
  String toString() {
    return _cache.toString();
  }

}