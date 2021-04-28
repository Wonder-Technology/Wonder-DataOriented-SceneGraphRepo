type arcballCameraController = ComponentPOType.index

type arcballCameraControllerPO = {
  maxIndex: ComponentPOType.index,
  gameObjectMap: ComponentPOType.gameObjectMap,
  dirtyList: list<arcballCameraController>,
  distanceMap: ImmutableSparseMap.t<arcballCameraController, float>,
  minDistanceMap: ImmutableSparseMap.t<arcballCameraController, float>,
  phiMap: ImmutableSparseMap.t<arcballCameraController, float>,
  thetaMap: ImmutableSparseMap.t<arcballCameraController, float>,
  thetaMarginMap: ImmutableSparseMap.t<arcballCameraController, float>,
  targetMap: ImmutableSparseMap.t<arcballCameraController, (float, float, float)>,
  moveSpeedXMap: ImmutableSparseMap.t<arcballCameraController, float>,
  moveSpeedYMap: ImmutableSparseMap.t<arcballCameraController, float>,
  rotateSpeedMap: ImmutableSparseMap.t<arcballCameraController, float>,
  wheelSpeedMap: ImmutableSparseMap.t<arcballCameraController, float>,
}
