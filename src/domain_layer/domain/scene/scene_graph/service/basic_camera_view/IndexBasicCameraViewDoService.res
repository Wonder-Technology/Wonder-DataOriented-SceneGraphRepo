let getMaxIndex = () => BasicCameraViewRepo.getMaxIndex()

let setMaxIndex = maxIndex => BasicCameraViewRepo.setMaxIndex(maxIndex)

let getIndex = cameraView => cameraView->BasicCameraViewEntity.value

let toComponent = index => index->BasicCameraViewEntity.create
