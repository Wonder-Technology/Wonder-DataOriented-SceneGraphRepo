let getMaxIndex = () => DirectionLightRepo.getMaxIndex()

let setMaxIndex = maxIndex => DirectionLightRepo.setMaxIndex(maxIndex)

let getIndex = light => light->DirectionLightEntity.value

let toComponent = index => index->DirectionLightEntity.create
