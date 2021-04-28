let create = () => {
  let index = IndexPerspectiveCameraProjectionDoService.getMaxIndex()
  let newIndex = index->IndexComponentDoService.generateIndex

  IndexPerspectiveCameraProjectionDoService.setMaxIndex(newIndex)

  PerspectiveCameraProjectionRepo.addToDirtyList(index)
  PerspectiveCameraProjectionRepo.setPMatrix(index, Matrix4.createIdentityMatrix4())

  index->PerspectiveCameraProjectionEntity.create
}
