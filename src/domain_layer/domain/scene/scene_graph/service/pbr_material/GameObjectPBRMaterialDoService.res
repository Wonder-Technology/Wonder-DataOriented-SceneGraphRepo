let getGameObjects = material =>
  PBRMaterialRepo.getGameObjects(
    material->PBRMaterialEntity.value,
  )->OptionSt.map(gameObjects => gameObjects->ListSt.map(GameObjectEntity.create))
