type arcballCameraController = ComponentPOType.index

type arcballCameraControllerPO = {
  maxIndex: ComponentPOType.index,
  gameObjectMap: ComponentPOType.gameObjectMap,
  dirtyList: list<arcballCameraController>,
  distanceMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, float>,
  minDistanceMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, float>,
  phiMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, float>,
  thetaMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, float>,
  thetaMarginMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, float>,
  targetMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, (float, float, float)>,
  moveSpeedXMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, float>,
  moveSpeedYMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, float>,
  rotateSpeedMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, float>,
  wheelSpeedMap: WonderCommonlib.ImmutableSparseMap.t<arcballCameraController, float>,
}
