let create = (): POType.po => {
  globalTemp: {
    float9Array1: Js.Typed_array.Float32Array.make([1., 0., 0., 0., 1., 0., 0., 0., 1.]),
    float32Array1: Js.Typed_array.Float32Array.make([
      1.,
      0.,
      0.,
      0.,
      0.,
      1.,
      0.,
      0.,
      0.,
      0.,
      1.,
      0.,
      0.,
      0.,
      0.,
      1.,
    ]),
  },
  config: {
    isDebug: true,
    transformCount: 10,
    geometryCount: 10,
    geometryPointCount: 10,
    pbrMaterialCount: 10,
    directionLightCount: 10,
  },
  canvas: None,
  scene: {
    scene: None,
  },
  gameObject: {
    maxUID: 0,
    transformMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    geometryMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    pbrMaterialMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    directionLightMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    basicCameraViewMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    perspectiveCameraProjectionMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    arcballCameraControllerMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
  },
  transform: None,
  geometry: None,
  pbrMaterial: None,
  directionLight: None,
  basicCameraView: {
    maxIndex: 0,
    isActiveMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    gameObjectMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
  },
  perspectiveCameraProjection: {
    maxIndex: 0,
    dirtyList: list{},
    pMatrixMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    nearMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    farMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    fovyMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    aspectMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    gameObjectMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
  },
  arcballCameraController: {
    maxIndex: 0,
    dirtyList: list{},
    gameObjectMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    distanceMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    minDistanceMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    phiMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    thetaMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    thetaMarginMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    targetMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    moveSpeedXMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    moveSpeedYMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    rotateSpeedMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
    wheelSpeedMap: WonderCommonlib.ImmutableSparseMap.createEmpty(),
  },
}
