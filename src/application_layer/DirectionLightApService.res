open VODOConvertApService

let getIndex = light =>
  light->directionLightVOToDirectionLightDO->IndexDirectionLightDoService.getIndex

let toComponent = index =>
  index->IndexDirectionLightDoService.toComponent->directionLightDOToDirectionLightVO

let create = () =>
  CreateDirectionLightDoService.create()->Result.mapSuccess(directionLightDOToDirectionLightVO)

let getGameObject = light =>
  GameObjectDirectionLightDoService.getGameObject(
    light->directionLightVOToDirectionLightDO,
  )->OptionSt.map(gameObjectDOToGameObjectVO)

let getColor = light =>
  OperateDirectionLightDoService.getColor(light->directionLightVOToDirectionLightDO)->Color3VO.value

let setColor = (light, color) =>
  OperateDirectionLightDoService.setColor(
    light->directionLightVOToDirectionLightDO,
    color->Color3VO.create,
  )

let getIntensity = light =>
  OperateDirectionLightDoService.getIntensity(
    light->directionLightVOToDirectionLightDO,
  )->IntensityVO.value

let setIntensity = (light, intensity) =>
  OperateDirectionLightDoService.setIntensity(
    light->directionLightVOToDirectionLightDO,
    intensity->IntensityVO.create,
  )

let getAllLights = () =>
  AllDirectionLightsDoService.getAllLights()
  ->ListSt.map(directionLightDOToDirectionLightVO)
  ->ListSt.toArray

let getDirection = light =>
  DirectionDirectionLightDoService.getDirection(
    light->directionLightVOToDirectionLightDO,
  )->OptionSt.map(DirectionVO.value)

let getLightCount = () => AllDirectionLightsDoService.getLightCount()
