let getAllGameObjects = () =>
  GameObjectRepo.getAllGameObjects()->WonderCommonlib.ListSt.map(GameObjectEntity.create)

let getAllRenderGameObjects = () =>
  GameObjectRepo.getAllRenderGameObjects()->WonderCommonlib.ListSt.map(GameObjectEntity.create)

let getAllGameObjectGeometries = () =>
  GameObjectRepo.getAllGameObjectGeometries()->WonderCommonlib.ListSt.map(GeometryEntity.create)

let getAllGameObjectPBRMaterials = () =>
  GameObjectRepo.getAllGameObjectPBRMaterials()->WonderCommonlib.ListSt.map(PBRMaterialEntity.create)
