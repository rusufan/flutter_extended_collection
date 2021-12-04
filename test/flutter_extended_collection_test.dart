import 'package:flutter_extended_collection/cache/lru_cache.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testLru();
}

testLru() {
  test('Lru cache test', (){
    LruCache lruCache = LruCache<int, String>(capacity: 3);
    lruCache.put(0, "0");
    print(lruCache.toString());
    lruCache.put(1, "1");
    print(lruCache.toString());
    lruCache.put(2, "2");
    print(lruCache.toString());
    lruCache.put(1, "1");
    print(lruCache.toString());
    lruCache.put(3, "3");
    print(lruCache.toString());
    lruCache[2] = "22";
    print(lruCache.toString());
    lruCache.clear();
    print(lruCache.toString());
  });
}
