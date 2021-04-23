let getGameObject = light =>
  DirectionLightRepo.getGameObject(
    light->DirectionLightEntity.value,
  )->OptionSt.map(GameObjectEntity.create)
