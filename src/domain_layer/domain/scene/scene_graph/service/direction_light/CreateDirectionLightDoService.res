let create = () => {
  let index = IndexDirectionLightDoService.getMaxIndex()
  let newIndex = index->IndexComponentDoService.generateIndex

  IndexDirectionLightDoService.setMaxIndex(newIndex)

  index
  ->BufferComponentDoService.checkNotExceedMaxCountByIndex(ConfigRepo.getDirectionLightCount())
  ->WonderCommonlib.Result.mapSuccess(DirectionLightEntity.create)
}
