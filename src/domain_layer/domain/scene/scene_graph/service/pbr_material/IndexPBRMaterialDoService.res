let getMaxIndex = () => PBRMaterialRepo.getMaxIndex()

let setMaxIndex = maxIndex => PBRMaterialRepo.setMaxIndex(maxIndex)

let getIndex = material => material->PBRMaterialEntity.value

let toComponent = index => index->PBRMaterialEntity.create
