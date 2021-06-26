open DirectionLightPOType

open DirectionLightSharedArrayBufferDataType

let getMaxIndex = () => ContainerManager.getExnDirectionLight().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setDirectionLight({
    ...ContainerManager.getExnDirectionLight(),
    maxIndex: maxIndex,
  })

let getGameObject = light =>
  ContainerManager.getExnDirectionLight().gameObjectMap->WonderCommonlib.ImmutableSparseMap.get(light)

let setGameObject = (light, gameObject) => {
  let {gameObjectMap} as lightPO = ContainerManager.getExnDirectionLight()

  ContainerManager.setDirectionLight({
    ...lightPO,
    gameObjectMap: gameObjectMap->WonderCommonlib.ImmutableSparseMap.set(light, gameObject),
  })
}

let getColor = light =>
  OperateTypeArrayDirectionLightRepoUtils.getColor(
    light,
    ContainerManager.getExnDirectionLight().colors,
  )

let setColor = (light, color) =>
  OperateTypeArrayDirectionLightRepoUtils.setColor(
    light,
    color,
    ContainerManager.getExnDirectionLight().colors,
  )

let getIntensity = light =>
  OperateTypeArrayDirectionLightRepoUtils.getIntensity(
    light,
    ContainerManager.getExnDirectionLight().intensities,
  )

let setIntensity = (light, intensity) =>
  OperateTypeArrayDirectionLightRepoUtils.setIntensity(
    light,
    intensity,
    ContainerManager.getExnDirectionLight().intensities,
  )

let getSharedArrayBufferData = () => {
  let {buffer, colors, intensities} = ContainerManager.getExnDirectionLight()

  {buffer: buffer, colors: colors, intensities: intensities}
}
