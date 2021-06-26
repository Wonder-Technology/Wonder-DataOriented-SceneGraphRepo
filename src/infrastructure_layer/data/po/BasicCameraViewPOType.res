type basicCameraView = ComponentPOType.index

type basicCameraViewPO = {
  maxIndex: ComponentPOType.index,
  isActiveMap: WonderCommonlib.ImmutableSparseMap.t<basicCameraView, bool>,
  gameObjectMap: ComponentPOType.gameObjectMap,
}
