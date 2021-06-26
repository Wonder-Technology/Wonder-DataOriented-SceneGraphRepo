let getGameObject = cameraProjection =>
  PerspectiveCameraProjectionRepo.getGameObject(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )->WonderCommonlib.OptionSt.map(GameObjectEntity.create)
