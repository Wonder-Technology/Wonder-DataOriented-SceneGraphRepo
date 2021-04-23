type uid = int

type gameObject = uid

type gameObjectPO = {
  maxUID: gameObject,
  transformMap: ImmutableSparseMap.t<gameObject, TransformPOType.transform>,
  pbrMaterialMap: ImmutableSparseMap.t<gameObject, PBRMaterialPOType.pbrMaterial>,
  geometryMap: ImmutableSparseMap.t<gameObject, GeometryPOType.geometry>,
  directionLightMap: ImmutableSparseMap.t<gameObject, DirectionLightPOType.directionLight>,
  //   basicCameraViewMap: ImmutableSparseMap.t<gameObject, componentIndex>,
  //   perspectiveCameraProjectionMap: ImmutableSparseMap.t<gameObject, componentIndex>,
}
