let addValue = (map, key, value) =>
  switch map->ImmutableSparseMap.get(key) {
  | None => map->ImmutableSparseMap.set(key, list{value})
  | Some(list) => map->ImmutableSparseMap.set(key, list{value, ...list})
  }
