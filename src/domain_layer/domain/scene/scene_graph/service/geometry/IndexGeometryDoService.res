let getMaxIndex = () => GeometryRepo.getMaxIndex()

let setMaxIndex = maxIndex => GeometryRepo.setMaxIndex(maxIndex)

let getIndex = geometry => geometry->GeometryEntity.value

let toComponent = index => index->GeometryEntity.create
