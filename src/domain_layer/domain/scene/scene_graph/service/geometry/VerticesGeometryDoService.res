let getVertices = geometry =>
  GeometryRepo.getVertices(
    geometry->GeometryEntity.value,
  )->Result.mapSuccess(VerticesVO.create)

let setVertices = (geometry, vertices) =>
  GeometryRepo.setVertices(
    geometry->GeometryEntity.value,
    vertices->VerticesVO.value,
  )

let hasVertices = geometry =>
  GeometryRepo.hasVertices(geometry->GeometryEntity.value)
