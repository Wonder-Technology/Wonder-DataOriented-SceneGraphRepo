let getGameObjects = geometry =>
  GeometryRepo.getGameObjects(
    geometry->GeometryEntity.value,
  )->WonderCommonlib.OptionSt.map(gameObjects => gameObjects->WonderCommonlib.ListSt.map(GameObjectEntity.create))
