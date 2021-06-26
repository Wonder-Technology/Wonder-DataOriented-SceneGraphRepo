type perspectiveCameraProjection = ComponentPOType.index

type perspectiveCameraProjectionPO = {
  maxIndex: ComponentPOType.index,
  dirtyList: list<perspectiveCameraProjection>,
  pMatrixMap: WonderCommonlib.ImmutableSparseMap.t<perspectiveCameraProjection, Js.Typed_array.Float32Array.t>,
  nearMap: WonderCommonlib.ImmutableSparseMap.t<perspectiveCameraProjection, float>,
  farMap: WonderCommonlib.ImmutableSparseMap.t<perspectiveCameraProjection, float>,
  fovyMap: WonderCommonlib.ImmutableSparseMap.t<perspectiveCameraProjection, float>,
  aspectMap: WonderCommonlib.ImmutableSparseMap.t<perspectiveCameraProjection, float>,
  gameObjectMap: ComponentPOType.gameObjectMap,
}
