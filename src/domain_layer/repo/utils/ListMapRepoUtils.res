let addValue = (map, key, value) =>
  switch map->WonderCommonlib.ImmutableSparseMap.get(key) {
  | None => map->WonderCommonlib.ImmutableSparseMap.set(key, list{value})
  | Some(list) => map->WonderCommonlib.ImmutableSparseMap.set(key, list{value, ...list})
  }
