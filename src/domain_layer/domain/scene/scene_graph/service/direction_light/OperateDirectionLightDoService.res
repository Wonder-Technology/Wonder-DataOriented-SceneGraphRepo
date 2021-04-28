let getColor = light =>
  DirectionLightRepo.getColor(light->DirectionLightEntity.value)->Color3VO.create

let setColor = (light, color) =>
  DirectionLightRepo.setColor(light->DirectionLightEntity.value, color->Color3VO.value)

let getIntensity = light =>
  DirectionLightRepo.getIntensity(light->DirectionLightEntity.value)->IntensityVO.create

let setIntensity = (light, intensity) =>
  DirectionLightRepo.setIntensity(light->DirectionLightEntity.value, intensity->IntensityVO.value)
