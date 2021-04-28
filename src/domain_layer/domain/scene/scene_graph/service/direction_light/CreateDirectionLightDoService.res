let create = () => {
  let index = IndexDirectionLightDoService.getMaxIndex()
  let newIndex = index->IndexComponentDoService.generateIndex

  IndexDirectionLightDoService.setMaxIndex(newIndex)

  index
  ->BufferComponentDoService.checkNotExceedMaxCountByIndex(ConfigRepo.getDirectionLightCount())
  ->Result.mapSuccess(DirectionLightEntity.create)
}
