open Js.Typed_array

let getId = light => light->IndexDirectionLightDoService.getId

let create = () => CreateDirectionLightDoService.create()

let getGameObject = light => GameObjectDirectionLightDoService.getGameObject(light)

let getColor = light => OperateDirectionLightDoService.getColor(light)

let setColor = (light, color) => OperateDirectionLightDoService.setColor(light, color)

let getIntensity = light => OperateDirectionLightDoService.getIntensity(light)

let setIntensity = (light, intensity) =>
  OperateDirectionLightDoService.setIntensity(light, intensity)

let getAllLights = () => AllDirectionLightsDoService.getAllLights()

let getDirection = light => DirectionDirectionLightDoService.getDirection(light)

let getLightCount = () => AllDirectionLightsDoService.getLightCount()

let isDirectionLight = light => {
  open Wonder_jest
  open Expect
  open! Expect.Operators
  expect(light->DirectionLightEntity.value) >= 0
}

let getMaxIndex = () => ContainerManager.getExnDirectionLight().maxIndex

let createGameObject = () => {
  let light = create()->ResultTool.getExnSuccessValue
  let gameObject = GameObjectTool.create()->ResultTool.getExnSuccessValue

  GameObjectTool.addDirectionLight(gameObject, light)->ResultTool.getExnSuccessValueIgnore

  (gameObject, light)
}

let truncateColor = color => {
  let (r, g, b) = color->Color3VO.value

  (
    TruncateTool.truncateFloatValue(5, r),
    TruncateTool.truncateFloatValue(5, g),
    TruncateTool.truncateFloatValue(5, b),
  )->Color3VO.create
}

let getDirection = light =>
  DirectionDirectionLightDoService.getDirection(light)
  ->OptionSt.getExn
  ->DirectionVO.value
  ->Vector3Tool.truncate(3)
