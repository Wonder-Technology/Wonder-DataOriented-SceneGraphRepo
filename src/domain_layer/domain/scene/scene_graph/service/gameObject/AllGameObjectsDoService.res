let getAllGameObjects = () =>
  GameObjectRepo.getAllGameObjects()->ListSt.map(GameObjectEntity.create)

let getAllRenderGameObjects = () =>
  GameObjectRepo.getAllRenderGameObjects()->ListSt.map(GameObjectEntity.create)

let getAllGameObjectGeometries = () =>
  GameObjectRepo.getAllGameObjectGeometries()->ListSt.map(GeometryEntity.create)

let getAllGameObjectPBRMaterials = () =>
  GameObjectRepo.getAllGameObjectPBRMaterials()->ListSt.map(PBRMaterialEntity.create)
