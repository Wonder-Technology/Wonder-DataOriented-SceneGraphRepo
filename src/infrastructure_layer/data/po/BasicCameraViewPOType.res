open ComponentPOType

type basicCameraView = index

type basicCameraViewPO = {
  maxIndex: ComponentPOType.index,
  isActiveMap: ImmutableSparseMap.t<ComponentPOType.index, bool>,
  gameObjectMap: ComponentPOType.gameObjectMap,
}
