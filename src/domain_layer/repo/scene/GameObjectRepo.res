let getMaxUID = () => ContainerManager.getGameObject().maxUID

let setMaxUID = maxUID =>
  ContainerManager.setGameObject({...ContainerManager.getGameObject(), maxUID: maxUID})

let addTransform = (gameObject, transform) => {
  let {transformMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    transformMap: transformMap->WonderCommonlib.ImmutableSparseMap.set(gameObject, transform),
  })
}

let getTransform = gameObject =>
  ContainerManager.getGameObject().transformMap->WonderCommonlib.ImmutableSparseMap.get(gameObject)

let hasTransform = gameObject =>
  ContainerManager.getGameObject().transformMap->WonderCommonlib.ImmutableSparseMap.has(gameObject)

let addGeometry = (gameObject, geometry) => {
  let {geometryMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    geometryMap: geometryMap->WonderCommonlib.ImmutableSparseMap.set(gameObject, geometry),
  })
}

let getGeometry = gameObject =>
  ContainerManager.getGameObject().geometryMap->WonderCommonlib.ImmutableSparseMap.get(gameObject)

let hasGeometry = gameObject =>
  ContainerManager.getGameObject().geometryMap->WonderCommonlib.ImmutableSparseMap.has(gameObject)

let addPBRMaterial = (gameObject, material) => {
  let {pbrMaterialMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    pbrMaterialMap: pbrMaterialMap->WonderCommonlib.ImmutableSparseMap.set(gameObject, material),
  })
}

let getPBRMaterial = gameObject =>
  ContainerManager.getGameObject().pbrMaterialMap->WonderCommonlib.ImmutableSparseMap.get(gameObject)

let hasPBRMaterial = gameObject =>
  ContainerManager.getGameObject().pbrMaterialMap->WonderCommonlib.ImmutableSparseMap.has(gameObject)

let addDirectionLight = (gameObject, light) => {
  let {directionLightMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    directionLightMap: directionLightMap->WonderCommonlib.ImmutableSparseMap.set(gameObject, light),
  })
}

let getDirectionLight = gameObject =>
  ContainerManager.getGameObject().directionLightMap->WonderCommonlib.ImmutableSparseMap.get(gameObject)

let hasDirectionLight = gameObject =>
  ContainerManager.getGameObject().directionLightMap->WonderCommonlib.ImmutableSparseMap.has(gameObject)

let addBasicCameraView = (gameObject, cameraView) => {
  let {basicCameraViewMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    basicCameraViewMap: basicCameraViewMap->WonderCommonlib.ImmutableSparseMap.set(gameObject, cameraView),
  })
}

let getBasicCameraView = gameObject =>
  ContainerManager.getGameObject().basicCameraViewMap->WonderCommonlib.ImmutableSparseMap.get(gameObject)

let hasBasicCameraView = gameObject =>
  ContainerManager.getGameObject().basicCameraViewMap->WonderCommonlib.ImmutableSparseMap.has(gameObject)

let addPerspectiveCameraProjection = (gameObject, cameraProjection) => {
  let {perspectiveCameraProjectionMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    perspectiveCameraProjectionMap: perspectiveCameraProjectionMap->WonderCommonlib.ImmutableSparseMap.set(
      gameObject,
      cameraProjection,
    ),
  })
}

let getPerspectiveCameraProjection = gameObject =>
  ContainerManager.getGameObject().perspectiveCameraProjectionMap->WonderCommonlib.ImmutableSparseMap.get(
    gameObject,
  )

let hasPerspectiveCameraProjection = gameObject =>
  ContainerManager.getGameObject().perspectiveCameraProjectionMap->WonderCommonlib.ImmutableSparseMap.has(
    gameObject,
  )

let addArcballCameraController = (gameObject, cameraController) => {
  let {arcballCameraControllerMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    arcballCameraControllerMap: arcballCameraControllerMap->WonderCommonlib.ImmutableSparseMap.set(
      gameObject,
      cameraController,
    ),
  })
}

let getArcballCameraController = gameObject =>
  ContainerManager.getGameObject().arcballCameraControllerMap->WonderCommonlib.ImmutableSparseMap.get(gameObject)

let hasArcballCameraController = gameObject =>
  ContainerManager.getGameObject().arcballCameraControllerMap->WonderCommonlib.ImmutableSparseMap.has(gameObject)

let getAllGameObjects = () =>
  ContainerManager.getGameObject().transformMap->WonderCommonlib.ImmutableSparseMap.getKeys->WonderCommonlib.ListSt.fromArray

let getAllRenderGameObjects = () =>
  ContainerManager.getGameObject().geometryMap->WonderCommonlib.ImmutableSparseMap.getKeys->WonderCommonlib.ListSt.fromArray

let getAllGameObjectGeometries = () =>
  ContainerManager.getGameObject().geometryMap->WonderCommonlib.ImmutableSparseMap.getValues->WonderCommonlib.ListSt.fromArray

let getAllGameObjectPBRMaterials = () =>
  ContainerManager.getGameObject().pbrMaterialMap->WonderCommonlib.ImmutableSparseMap.getValues->WonderCommonlib.ListSt.fromArray
