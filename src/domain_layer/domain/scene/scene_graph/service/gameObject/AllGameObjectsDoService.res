let getAllGameObjectGeometries = () =>
  GameObjectRepo.getAllGameObjectGeometries()->ListSt.map(GeometryEntity.create)

let getAllGameObjectPBRMaterials = () =>
  GameObjectRepo.getAllGameObjectPBRMaterials()->ListSt.map(PBRMaterialEntity.create)