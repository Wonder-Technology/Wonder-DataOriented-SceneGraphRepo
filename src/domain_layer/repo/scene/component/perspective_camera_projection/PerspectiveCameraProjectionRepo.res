open PerspectiveCameraProjectionPOType

let getMaxIndex = () => ContainerManager.getPerspectiveCameraProjection().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setPerspectiveCameraProjection({
    ...ContainerManager.getPerspectiveCameraProjection(),
    maxIndex: maxIndex,
  })

let getGameObject = cameraProjection =>
  ContainerManager.getPerspectiveCameraProjection().gameObjectMap->ImmutableSparseMap.get(cameraProjection)

let setGameObject = (cameraProjection, gameObject) => {
  let {gameObjectMap} as cameraProjectionPO = ContainerManager.getPerspectiveCameraProjection()

  ContainerManager.setPerspectiveCameraProjection({
    ...cameraProjectionPO,
    gameObjectMap: gameObjectMap->ImmutableSparseMap.set(cameraProjection, gameObject),
  })
}

let getPMatrix = cameraProjection =>
  ContainerManager.getPerspectiveCameraProjection().pMatrixMap->ImmutableSparseMap.get(cameraProjection)

let setPMatrix = (cameraProjection, pMatrix) => {
  let {pMatrixMap} as cameraProjectionPO = ContainerManager.getPerspectiveCameraProjection()

  ContainerManager.setPerspectiveCameraProjection({
    ...cameraProjectionPO,
    pMatrixMap: pMatrixMap->ImmutableSparseMap.set(cameraProjection, pMatrix),
  })
}

let getFovy = cameraProjection =>
  ContainerManager.getPerspectiveCameraProjection().fovyMap->ImmutableSparseMap.get(cameraProjection)

let setFovy = (cameraProjection, fovy) => {
  let {fovyMap} as cameraProjectionPO = ContainerManager.getPerspectiveCameraProjection()

  ContainerManager.setPerspectiveCameraProjection({
    ...cameraProjectionPO,
    fovyMap: fovyMap->ImmutableSparseMap.set(cameraProjection, fovy),
  })
}

let getAspect = cameraProjection =>
  ContainerManager.getPerspectiveCameraProjection().aspectMap->ImmutableSparseMap.get(cameraProjection)

let setAspect = (cameraProjection, aspect) => {
  let {aspectMap} as cameraProjectionPO = ContainerManager.getPerspectiveCameraProjection()

  ContainerManager.setPerspectiveCameraProjection({
    ...cameraProjectionPO,
    aspectMap: aspectMap->ImmutableSparseMap.set(cameraProjection, aspect),
  })
}

let getNear = cameraProjection =>
  ContainerManager.getPerspectiveCameraProjection().nearMap->ImmutableSparseMap.get(cameraProjection)

let setNear = (cameraProjection, near) => {
  let {nearMap} as cameraProjectionPO = ContainerManager.getPerspectiveCameraProjection()

  ContainerManager.setPerspectiveCameraProjection({
    ...cameraProjectionPO,
    nearMap: nearMap->ImmutableSparseMap.set(cameraProjection, near),
  })
}

let getFar = cameraProjection =>
  ContainerManager.getPerspectiveCameraProjection().farMap->ImmutableSparseMap.get(cameraProjection)

let setFar = (cameraProjection, far) => {
  let {farMap} as cameraProjectionPO = ContainerManager.getPerspectiveCameraProjection()

  ContainerManager.setPerspectiveCameraProjection({
    ...cameraProjectionPO,
    farMap: farMap->ImmutableSparseMap.set(cameraProjection, far),
  })
}

let _mark = (cameraProjection, operateDirtyArrayFunc) => {
  let {dirtyList} as cameraProjectionPO = ContainerManager.getPerspectiveCameraProjection()

  ContainerManager.setPerspectiveCameraProjection({
    ...cameraProjectionPO,
    dirtyList: dirtyList->operateDirtyArrayFunc(cameraProjection),
  })
}

let markDirty = cameraProjection => _mark(cameraProjection, DirtyListRepoUtils.addToDirtyList)

let markNotDirty = cameraProjection =>
  _mark(cameraProjection, DirtyListRepoUtils.removeFromDirtyList)

let addToDirtyList = cameraProjection => markDirty(cameraProjection)

let getDirtyList = () => ContainerManager.getPerspectiveCameraProjection().dirtyList

let clearDirtyList = () =>
  ContainerManager.setPerspectiveCameraProjection({
    ...ContainerManager.getPerspectiveCameraProjection(),
    dirtyList: DirtyListRepoUtils.create(),
  })
