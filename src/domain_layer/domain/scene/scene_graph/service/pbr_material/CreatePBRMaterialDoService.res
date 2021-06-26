let create = () => {
  let index = IndexPBRMaterialDoService.getMaxIndex()
  let newIndex = index->IndexComponentDoService.generateIndex

  IndexPBRMaterialDoService.setMaxIndex(newIndex)

  index
  ->BufferComponentDoService.checkNotExceedMaxCountByIndex(
    ConfigRepo.getPBRMaterialCount(),
  )
  ->WonderCommonlib.Result.mapSuccess(PBRMaterialEntity.create)
}
