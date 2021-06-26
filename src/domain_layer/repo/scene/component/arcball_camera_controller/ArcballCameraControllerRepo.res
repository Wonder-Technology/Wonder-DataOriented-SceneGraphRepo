open ArcballCameraControllerPOType

let getMaxIndex = () => ContainerManager.getArcballCameraController().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setArcballCameraController({
    ...ContainerManager.getArcballCameraController(),
    maxIndex: maxIndex,
  })

let getGameObject = cameraController =>
  ContainerManager.getArcballCameraController().gameObjectMap->WonderCommonlib.ImmutableSparseMap.get(
    cameraController,
  )

let setGameObject = (cameraController, gameObject) => {
  let {gameObjectMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    gameObjectMap: gameObjectMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, gameObject),
  })
}

let getDistance = cameraController =>
  ContainerManager.getArcballCameraController().distanceMap->WonderCommonlib.ImmutableSparseMap.get(
    cameraController,
  )

let setDistance = (cameraController, distance) => {
  let {distanceMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    distanceMap: distanceMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, distance),
  })
}

let getMinDistance = cameraController =>
  ContainerManager.getArcballCameraController().minDistanceMap->WonderCommonlib.ImmutableSparseMap.get(
    cameraController,
  )

let setMinDistance = (cameraController, minDistance) => {
  let {minDistanceMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    minDistanceMap: minDistanceMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, minDistance),
  })
}

let getWheelSpeed = cameraController =>
  ContainerManager.getArcballCameraController().wheelSpeedMap->WonderCommonlib.ImmutableSparseMap.get(
    cameraController,
  )

let setWheelSpeed = (cameraController, wheelSpeed) => {
  let {wheelSpeedMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    wheelSpeedMap: wheelSpeedMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, wheelSpeed),
  })
}

let getPhi = cameraController =>
  ContainerManager.getArcballCameraController().phiMap->WonderCommonlib.ImmutableSparseMap.get(cameraController)

let setPhi = (cameraController, phi) => {
  let {phiMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    phiMap: phiMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, phi),
  })
}

let getTheta = cameraController =>
  ContainerManager.getArcballCameraController().thetaMap->WonderCommonlib.ImmutableSparseMap.get(cameraController)

let setTheta = (cameraController, theta) => {
  let {thetaMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    thetaMap: thetaMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, theta),
  })
}

let getThetaMargin = cameraController =>
  ContainerManager.getArcballCameraController().thetaMarginMap->WonderCommonlib.ImmutableSparseMap.get(
    cameraController,
  )

let setThetaMargin = (cameraController, thetaMargin) => {
  let {thetaMarginMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    thetaMarginMap: thetaMarginMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, thetaMargin),
  })
}

let getTarget = cameraController =>
  ContainerManager.getArcballCameraController().targetMap->WonderCommonlib.ImmutableSparseMap.get(cameraController)

let setTarget = (cameraController, target) => {
  let {targetMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    targetMap: targetMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, target),
  })
}

let getMoveSpeedX = cameraController =>
  ContainerManager.getArcballCameraController().moveSpeedXMap->WonderCommonlib.ImmutableSparseMap.get(
    cameraController,
  )

let setMoveSpeedX = (cameraController, moveSpeedX) => {
  let {moveSpeedXMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    moveSpeedXMap: moveSpeedXMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, moveSpeedX),
  })
}

let getMoveSpeedY = cameraController =>
  ContainerManager.getArcballCameraController().moveSpeedYMap->WonderCommonlib.ImmutableSparseMap.get(
    cameraController,
  )

let setMoveSpeedY = (cameraController, moveSpeedY) => {
  let {moveSpeedYMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    moveSpeedYMap: moveSpeedYMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, moveSpeedY),
  })
}

let getRotateSpeed = cameraController =>
  ContainerManager.getArcballCameraController().rotateSpeedMap->WonderCommonlib.ImmutableSparseMap.get(
    cameraController,
  )

let setRotateSpeed = (cameraController, rotateSpeed) => {
  let {rotateSpeedMap} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    rotateSpeedMap: rotateSpeedMap->WonderCommonlib.ImmutableSparseMap.set(cameraController, rotateSpeed),
  })
}

let _mark = (cameraController, operateDirtyArrayFunc) => {
  let {dirtyList} as cameraControllerPO = ContainerManager.getArcballCameraController()

  ContainerManager.setArcballCameraController({
    ...cameraControllerPO,
    dirtyList: dirtyList->operateDirtyArrayFunc(cameraController),
  })
}

let markDirty = cameraController => _mark(cameraController, DirtyListRepoUtils.addToDirtyList)

let markNotDirty = cameraController =>
  _mark(cameraController, DirtyListRepoUtils.removeFromDirtyList)

let addToDirtyList = cameraController => markDirty(cameraController)

let getDirtyList = () => ContainerManager.getArcballCameraController().dirtyList

let clearDirtyList = () =>
  ContainerManager.setArcballCameraController({
    ...ContainerManager.getArcballCameraController(),
    dirtyList: DirtyListRepoUtils.create(),
  })
