let _initDataWhenCreate = index => TransformRepo.setChildren(index, list{})

let create = () => {
  let index = IndexTransformDoService.getMaxIndex()
  let newIndex = index->IndexComponentDoService.generateIndex

  IndexTransformDoService.setMaxIndex(newIndex)

  _initDataWhenCreate(index)

  TransformRepo.setIsDirty(index, true)

  index
  ->BufferComponentDoService.checkNotExceedMaxCountByIndex(ConfigRepo.getTransformCount())
  ->WonderCommonlib.Result.mapSuccess(TransformEntity.create)
}
