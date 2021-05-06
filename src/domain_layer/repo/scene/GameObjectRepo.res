let getMaxUID = () => ContainerManager.getGameObject().maxUID

let setMaxUID = maxUID =>
  ContainerManager.setGameObject({...ContainerManager.getGameObject(), maxUID: maxUID})

let addTransform = (gameObject, transform) => {
  let {transformMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    transformMap: transformMap->ImmutableSparseMap.set(gameObject, transform),
  })
}

let getTransform = gameObject =>
  ContainerManager.getGameObject().transformMap->ImmutableSparseMap.get(gameObject)

let hasTransform = gameObject =>
  ContainerManager.getGameObject().transformMap->ImmutableSparseMap.has(gameObject)

let addGeometry = (gameObject, geometry) => {
  let {geometryMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    geometryMap: geometryMap->ImmutableSparseMap.set(gameObject, geometry),
  })
}

let getGeometry = gameObject =>
  ContainerManager.getGameObject().geometryMap->ImmutableSparseMap.get(gameObject)

let hasGeometry = gameObject =>
  ContainerManager.getGameObject().geometryMap->ImmutableSparseMap.has(gameObject)

let addPBRMaterial = (gameObject, material) => {
  let {pbrMaterialMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    pbrMaterialMap: pbrMaterialMap->ImmutableSparseMap.set(gameObject, material),
  })
}

let getPBRMaterial = gameObject =>
  ContainerManager.getGameObject().pbrMaterialMap->ImmutableSparseMap.get(gameObject)

let hasPBRMaterial = gameObject =>
  ContainerManager.getGameObject().pbrMaterialMap->ImmutableSparseMap.has(gameObject)

let addDirectionLight = (gameObject, light) => {
  let {directionLightMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    directionLightMap: directionLightMap->ImmutableSparseMap.set(gameObject, light),
  })
}

let getDirectionLight = gameObject =>
  ContainerManager.getGameObject().directionLightMap->ImmutableSparseMap.get(gameObject)

let hasDirectionLight = gameObject =>
  ContainerManager.getGameObject().directionLightMap->ImmutableSparseMap.has(gameObject)

let addBasicCameraView = (gameObject, cameraView) => {
  let {basicCameraViewMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    basicCameraViewMap: basicCameraViewMap->ImmutableSparseMap.set(gameObject, cameraView),
  })
}

let getBasicCameraView = gameObject =>
  ContainerManager.getGameObject().basicCameraViewMap->ImmutableSparseMap.get(gameObject)

let hasBasicCameraView = gameObject =>
  ContainerManager.getGameObject().basicCameraViewMap->ImmutableSparseMap.has(gameObject)

let addPerspectiveCameraProjection = (gameObject, cameraProjection) => {
  let {perspectiveCameraProjectionMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    perspectiveCameraProjectionMap: perspectiveCameraProjectionMap->ImmutableSparseMap.set(
      gameObject,
      cameraProjection,
    ),
  })
}

let getPerspectiveCameraProjection = gameObject =>
  ContainerManager.getGameObject().perspectiveCameraProjectionMap->ImmutableSparseMap.get(
    gameObject,
  )

let hasPerspectiveCameraProjection = gameObject =>
  ContainerManager.getGameObject().perspectiveCameraProjectionMap->ImmutableSparseMap.has(
    gameObject,
  )

let addArcballCameraController = (gameObject, cameraController) => {
  let {arcballCameraControllerMap} as gameObjectPO = ContainerManager.getGameObject()

  ContainerManager.setGameObject({
    ...gameObjectPO,
    arcballCameraControllerMap: arcballCameraControllerMap->ImmutableSparseMap.set(
      gameObject,
      cameraController,
    ),
  })
}

let getArcballCameraController = gameObject =>
  ContainerManager.getGameObject().arcballCameraControllerMap->ImmutableSparseMap.get(gameObject)

let hasArcballCameraController = gameObject =>
  ContainerManager.getGameObject().arcballCameraControllerMap->ImmutableSparseMap.has(gameObject)

let getAllGameObjects = () =>
  ContainerManager.getGameObject().transformMap->ImmutableSparseMap.getKeys->ListSt.fromArray

let getAllRenderGameObjects = () =>
  ContainerManager.getGameObject().geometryMap->ImmutableSparseMap.getKeys->ListSt.fromArray

let getAllGameObjectGeometries = () =>
  ContainerManager.getGameObject().geometryMap->ImmutableSparseMap.getValues->ListSt.fromArray

let getAllGameObjectPBRMaterials = () =>
  ContainerManager.getGameObject().pbrMaterialMap->ImmutableSparseMap.getValues->ListSt.fromArray
