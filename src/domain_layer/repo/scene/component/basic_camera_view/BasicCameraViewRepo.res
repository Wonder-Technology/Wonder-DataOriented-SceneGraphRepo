open BasicCameraViewPOType

let getMaxIndex = () => ContainerManager.getBasicCameraView().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setBasicCameraView({
    ...ContainerManager.getBasicCameraView(),
    maxIndex: maxIndex,
  })

let getGameObject = cameraView =>
  ContainerManager.getBasicCameraView().gameObjectMap->ImmutableSparseMap.get(cameraView)

let setGameObject = (cameraView, gameObject) => {
  let {gameObjectMap} as cameraViewPO = ContainerManager.getBasicCameraView()

  ContainerManager.setBasicCameraView({
    ...cameraViewPO,
    gameObjectMap: gameObjectMap->ImmutableSparseMap.set(cameraView, gameObject),
  })
}

let isActive = cameraView =>
  ContainerManager.getBasicCameraView().isActiveMap
  ->ImmutableSparseMap.get(cameraView)
  ->OptionSt.getWithDefault(false)

let setAllNotActive = () => {
  let {isActiveMap} as cameraViewPO = ContainerManager.getBasicCameraView()

  ContainerManager.setBasicCameraView({
    ...cameraViewPO,
    isActiveMap: isActiveMap->ImmutableSparseMap.map((. value) => false),
  })
}

let setActive = (cameraView, isActive) => {
  let {isActiveMap} as cameraViewPO = ContainerManager.getBasicCameraView()

  ContainerManager.setBasicCameraView({
    ...cameraViewPO,
    isActiveMap: isActiveMap->ImmutableSparseMap.set(cameraView, isActive),
  })
}

let getActiveBasicCameraViews = () =>
  ContainerManager.getBasicCameraView().isActiveMap
  ->ImmutableSparseMap.reducei(
    (. list, isActive, cameraView) => isActive === true ? list->ListSt.push(cameraView) : list,
    list{},
  )
  ->Contract.ensureCheck(r => {
    open Contract
    open Operators
    test(
      Log.buildAssertMessage(~expect=j`only has one active cameraView at most`, ~actual=j`not`),
      () => r->ListSt.length <= 1,
    )
  }, ConfigRepo.getIsDebug())
