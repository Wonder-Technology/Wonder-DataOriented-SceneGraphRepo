let create = () => {
  let index = IndexGeometryDoService.getMaxIndex()
  let newIndex = index->IndexComponentDoService.generateIndex

  IndexGeometryDoService.setMaxIndex(newIndex)

  index
  ->BufferComponentDoService.checkNotExceedMaxCountByIndex(ConfigRepo.getGeometryCount())
  ->Result.mapSuccess(GeometryEntity.create)
}
