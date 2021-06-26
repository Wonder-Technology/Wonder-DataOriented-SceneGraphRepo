type uid = int

type gameObject = uid

type gameObjectPO = {
  maxUID: gameObject,
  transformMap: WonderCommonlib.ImmutableSparseMap.t<gameObject, TransformPOType.transform>,
  pbrMaterialMap: WonderCommonlib.ImmutableSparseMap.t<gameObject, PBRMaterialPOType.pbrMaterial>,
  geometryMap: WonderCommonlib.ImmutableSparseMap.t<gameObject, GeometryPOType.geometry>,
  directionLightMap: WonderCommonlib.ImmutableSparseMap.t<gameObject, DirectionLightPOType.directionLight>,
  basicCameraViewMap: WonderCommonlib.ImmutableSparseMap.t<gameObject, BasicCameraViewPOType.basicCameraView>,
  perspectiveCameraProjectionMap: WonderCommonlib.ImmutableSparseMap.t<
    gameObject,
    PerspectiveCameraProjectionPOType.perspectiveCameraProjection,
  >,
  arcballCameraControllerMap: WonderCommonlib.ImmutableSparseMap.t<
    gameObject,
    ArcballCameraControllerPOType.arcballCameraController,
  >,
}
