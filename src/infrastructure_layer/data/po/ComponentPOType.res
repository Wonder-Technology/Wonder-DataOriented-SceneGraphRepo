type index = int

type uid = int

type gameObjectMap = WonderCommonlib.ImmutableSparseMap.t<index, uid>

type gameObjectsMap = WonderCommonlib.ImmutableSparseMap.t<index, list<uid>>
