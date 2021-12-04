# flutter_extended_collection

A flutter package provides collection extentions, like LRU cache.

## Getting Started

#### 1. Add dependency

```
dependencies:

  flutter_extended_collection: ^0.0.1
```

#### 2. How to use

- LruCache:

  ```
  LruCache lruCache = LruCache<int, String>(capacity: 3);
  ```

| operate| Result|
| :-----------------------| ------------------ |
| lruCache.put(0, "0");(same as lruCache[0] = "0";) | {0: 0}|
| lruCache.put(1, "1");| {0: 0, 1: 1}       |
| lruCache.put(2, "2");| {0: 0, 1: 1, 2: 2} |
| lruCache.put(1, "1");| {0: 0, 2: 2, 1: 1} |
| lruCache.put(3, "3");| {2: 2, 1: 1, 3: 3} |
| lruCache.clear();|{}|
