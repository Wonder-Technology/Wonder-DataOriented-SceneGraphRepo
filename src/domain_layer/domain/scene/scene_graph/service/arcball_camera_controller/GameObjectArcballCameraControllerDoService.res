let getGameObject = camerController =>
  ArcballCameraControllerRepo.getGameObject(
    camerController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(GameObjectEntity.create)
