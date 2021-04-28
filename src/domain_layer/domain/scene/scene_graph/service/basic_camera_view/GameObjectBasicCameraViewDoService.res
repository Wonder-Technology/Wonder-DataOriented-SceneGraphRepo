let getGameObject = cameraView =>
  BasicCameraViewRepo.getGameObject(
    cameraView->BasicCameraViewEntity.value,
  )->OptionSt.map(GameObjectEntity.create)
