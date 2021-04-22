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
