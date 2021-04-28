type basicCameraView = ComponentPOType.index

type basicCameraViewPO = {
  maxIndex: ComponentPOType.index,
  isActiveMap: ImmutableSparseMap.t<basicCameraView, bool>,
  gameObjectMap: ComponentPOType.gameObjectMap,
}
