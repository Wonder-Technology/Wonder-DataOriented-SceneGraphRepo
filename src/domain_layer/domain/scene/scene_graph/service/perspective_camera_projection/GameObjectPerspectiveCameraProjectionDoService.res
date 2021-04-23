let getGameObject = cameraProjection =>
  PerspectiveCameraProjectionRepo.getGameObject(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )->OptionSt.map(GameObjectEntity.create)
