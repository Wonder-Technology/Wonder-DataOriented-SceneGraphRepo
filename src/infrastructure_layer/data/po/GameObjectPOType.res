type uid = int

type gameObject = uid

// type componentIndex = int
type gameObjectPO = {
  maxUID: gameObject,
  transformMap: ImmutableSparseMap.t<gameObject, TransformPOType.transform>,
  //   bsdfMaterialMap: ImmutableSparseMap.t<gameObject, componentIndex>,
  //   geometryMap: ImmutableSparseMap.t<gameObject, componentIndex>,
  //   directionLightMap: ImmutableSparseMap.t<gameObject, componentIndex>,
  //   basicCameraViewMap: ImmutableSparseMap.t<gameObject, componentIndex>,
  //   perspectiveCameraProjectionMap: ImmutableSparseMap.t<gameObject, componentIndex>,
}
