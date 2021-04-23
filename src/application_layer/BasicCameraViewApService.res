open VODOConvertApService

let create = () => CreateBasicCameraViewDoService.create()->basicCameraViewDOToBasicCameraViewVO

let getGameObject = cameraView =>
  GameObjectBasicCameraViewDoService.getGameObject(
    cameraView->basicCameraViewVOToBasicCameraViewDO,
  )->OptionSt.map(gameObjectDOToGameObjectVO)

let getViewWorldToCameraMatrix = cameraView =>
  ViewMatrixBasicCameraViewDoService.getViewWorldToCameraMatrix(
    cameraView->basicCameraViewVOToBasicCameraViewDO,
  )->Result.mapSuccess(viewWorldToCameraMatrix =>
    viewWorldToCameraMatrix->OptionSt.map(ViewMatrixVO.value)
  )

let isActive = cameraView =>
  ActiveBasicCameraViewDoService.isActive(cameraView->basicCameraViewVOToBasicCameraViewDO)

let active = cameraView =>
  ActiveBasicCameraViewDoService.active(cameraView->basicCameraViewVOToBasicCameraViewDO)

let unactive = cameraView =>
  ActiveBasicCameraViewDoService.unactive(cameraView->basicCameraViewVOToBasicCameraViewDO)

let setActive = (cameraView, isActive) =>
  ActiveBasicCameraViewDoService.setActive(
    cameraView->basicCameraViewVOToBasicCameraViewDO,
    isActive,
  )

let getActiveBasicCameraView = () =>
  ActiveBasicCameraViewDoService.getActiveCameraView()->Result.mapSuccess(cameraView =>
    cameraView->OptionSt.map(basicCameraViewDOToBasicCameraViewVO)
  )
