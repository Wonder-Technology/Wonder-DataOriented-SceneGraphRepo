let getGameObjects = material =>
  PBRMaterialRepo.getGameObjects(
    material->PBRMaterialEntity.value,
  )->WonderCommonlib.OptionSt.map(gameObjects => gameObjects->WonderCommonlib.ListSt.map(GameObjectEntity.create))
