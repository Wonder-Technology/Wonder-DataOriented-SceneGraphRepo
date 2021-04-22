let getGameObjects = geometry =>
  GeometryRepo.getGameObjects(
    geometry->GeometryEntity.value,
  )->OptionSt.map(gameObjects => gameObjects->ListSt.map(GameObjectEntity.create))
