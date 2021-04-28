type uid = int

type gameObject = uid

type gameObjectPO = {
  maxUID: gameObject,
  transformMap: ImmutableSparseMap.t<gameObject, TransformPOType.transform>,
  pbrMaterialMap: ImmutableSparseMap.t<gameObject, PBRMaterialPOType.pbrMaterial>,
  geometryMap: ImmutableSparseMap.t<gameObject, GeometryPOType.geometry>,
  directionLightMap: ImmutableSparseMap.t<gameObject, DirectionLightPOType.directionLight>,
  basicCameraViewMap: ImmutableSparseMap.t<gameObject, BasicCameraViewPOType.basicCameraView>,
  perspectiveCameraProjectionMap: ImmutableSparseMap.t<
    gameObject,
    PerspectiveCameraProjectionPOType.perspectiveCameraProjection,
  >,
  arcballCameraControllerMap: ImmutableSparseMap.t<
    gameObject,
    ArcballCameraControllerPOType.arcballCameraController,
  >,
}
