let getIndices = geometry =>
  GeometryRepo.getIndices(
    geometry->GeometryEntity.value,
  )->WonderCommonlib.Result.mapSuccess(IndicesVO.create)

let setIndices = (geometry, indices) =>
  GeometryRepo.setIndices(
    geometry->GeometryEntity.value,
    indices->IndicesVO.value,
  )

let hasIndices = geometry =>
  GeometryRepo.hasIndices(geometry->GeometryEntity.value)

let getIndicesCount = geometry =>
  GeometryRepo.getIndicesCount(geometry->GeometryEntity.value)
