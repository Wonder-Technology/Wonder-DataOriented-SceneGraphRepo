open ComponentPOType

type perspectiveCameraProjection = index

type perspectiveCameraProjectionPO = {
  maxIndex: ComponentPOType.index,
  dirtyList: list<ComponentPOType.index>,
  pMatrixMap: ImmutableSparseMap.t<ComponentPOType.index, Js.Typed_array.Float32Array.t>,
  nearMap: ImmutableSparseMap.t<ComponentPOType.index, float>,
  farMap: ImmutableSparseMap.t<ComponentPOType.index, float>,
  fovyMap: ImmutableSparseMap.t<ComponentPOType.index, float>,
  aspectMap: ImmutableSparseMap.t<ComponentPOType.index, float>,
  gameObjectMap: ComponentPOType.gameObjectMap,
}
