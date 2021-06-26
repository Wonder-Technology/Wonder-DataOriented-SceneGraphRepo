let isActive = cameraView =>
  BasicCameraViewRepo.isActive(cameraView->BasicCameraViewEntity.value)

let active = cameraView => {
  BasicCameraViewRepo.setAllNotActive()

  BasicCameraViewRepo.setActive(
    cameraView->BasicCameraViewEntity.value,
    true,
  )
}

let unactive = cameraView =>
  BasicCameraViewRepo.setActive(
    cameraView->BasicCameraViewEntity.value,
    false,
  )

let setActive = (cameraView, isActive) =>
  BasicCameraViewRepo.setActive(
    cameraView->BasicCameraViewEntity.value,
    isActive,
  )

let getActiveCameraView = () =>
  BasicCameraViewRepo.getActiveBasicCameraViews()->WonderCommonlib.Result.mapSuccess(
    activeCameraViews => activeCameraViews->WonderCommonlib.ListSt.head->WonderCommonlib.OptionSt.map(BasicCameraViewEntity.create),
  )
