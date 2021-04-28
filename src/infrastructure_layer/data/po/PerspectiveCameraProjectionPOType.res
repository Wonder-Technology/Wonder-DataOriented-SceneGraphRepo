type perspectiveCameraProjection = ComponentPOType.index

type perspectiveCameraProjectionPO = {
  maxIndex: ComponentPOType.index,
  dirtyList: list<perspectiveCameraProjection>,
  pMatrixMap: ImmutableSparseMap.t<perspectiveCameraProjection, Js.Typed_array.Float32Array.t>,
  nearMap: ImmutableSparseMap.t<perspectiveCameraProjection, float>,
  farMap: ImmutableSparseMap.t<perspectiveCameraProjection, float>,
  fovyMap: ImmutableSparseMap.t<perspectiveCameraProjection, float>,
  aspectMap: ImmutableSparseMap.t<perspectiveCameraProjection, float>,
  gameObjectMap: ComponentPOType.gameObjectMap,
}
