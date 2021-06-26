let create = () => {
  let index = IndexGeometryDoService.getMaxIndex()
  let newIndex = index->IndexComponentDoService.generateIndex

  IndexGeometryDoService.setMaxIndex(newIndex)

  index
  ->BufferComponentDoService.checkNotExceedMaxCountByIndex(ConfigRepo.getGeometryCount())
  ->WonderCommonlib.Result.mapSuccess(GeometryEntity.create)
}
