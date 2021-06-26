open VODOConvertApService

let getIndex = cameraView =>
  cameraView->basicCameraViewVOToBasicCameraViewDO->IndexBasicCameraViewDoService.getIndex

let toComponent = index =>
  index->IndexBasicCameraViewDoService.toComponent->basicCameraViewDOToBasicCameraViewVO

let create = () => CreateBasicCameraViewDoService.create()->basicCameraViewDOToBasicCameraViewVO

let getGameObject = cameraView =>
  GameObjectBasicCameraViewDoService.getGameObject(
    cameraView->basicCameraViewVOToBasicCameraViewDO,
  )->WonderCommonlib.OptionSt.map(gameObjectDOToGameObjectVO)

let getViewWorldToCameraMatrix = cameraView =>
  ViewMatrixBasicCameraViewDoService.getViewWorldToCameraMatrix(
    cameraView->basicCameraViewVOToBasicCameraViewDO,
  )->WonderCommonlib.Result.mapSuccess(viewWorldToCameraMatrix =>
    viewWorldToCameraMatrix->WonderCommonlib.OptionSt.map(ViewMatrixVO.value)
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
  ActiveBasicCameraViewDoService.getActiveCameraView()->WonderCommonlib.Result.mapSuccess(cameraView =>
    cameraView->WonderCommonlib.OptionSt.map(basicCameraViewDOToBasicCameraViewVO)
  )
