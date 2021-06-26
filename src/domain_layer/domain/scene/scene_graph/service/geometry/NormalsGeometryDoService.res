let getNormals = geometry =>
  GeometryRepo.getNormals(
    geometry->GeometryEntity.value,
  )->WonderCommonlib.Result.mapSuccess(NormalsVO.create)

let setNormals = (geometry, normals) =>
  GeometryRepo.setNormals(
    geometry->GeometryEntity.value,
    normals->NormalsVO.value,
  )

let hasNormals = geometry =>
  GeometryRepo.hasNormals(geometry->GeometryEntity.value)
