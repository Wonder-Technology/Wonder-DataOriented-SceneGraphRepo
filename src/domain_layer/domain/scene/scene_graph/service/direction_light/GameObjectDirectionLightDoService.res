let getGameObject = light =>
  DirectionLightRepo.getGameObject(
    light->DirectionLightEntity.value,
  )->WonderCommonlib.OptionSt.map(GameObjectEntity.create)
