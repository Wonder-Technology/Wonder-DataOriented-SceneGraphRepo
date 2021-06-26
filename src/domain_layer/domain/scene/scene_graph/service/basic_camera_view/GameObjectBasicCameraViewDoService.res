let getGameObject = cameraView =>
  BasicCameraViewRepo.getGameObject(
    cameraView->BasicCameraViewEntity.value,
  )->WonderCommonlib.OptionSt.map(GameObjectEntity.create)
