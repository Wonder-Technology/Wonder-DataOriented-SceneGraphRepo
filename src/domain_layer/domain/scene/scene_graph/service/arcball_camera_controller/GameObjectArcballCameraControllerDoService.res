let getGameObject = camerController =>
  ArcballCameraControllerRepo.getGameObject(
    camerController->ArcballCameraControllerEntity.value,
  )->WonderCommonlib.OptionSt.map(GameObjectEntity.create)
