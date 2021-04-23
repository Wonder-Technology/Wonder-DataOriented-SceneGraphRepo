open DirectionLightPOType

let getMaxIndex = () => ContainerManager.getExnDirectionLight().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setDirectionLight({
    ...ContainerManager.getExnDirectionLight(),
    maxIndex: maxIndex,
  })

let getGameObject = light =>
  ContainerManager.getExnDirectionLight().gameObjectMap->ImmutableSparseMap.get(light)

let setGameObject = (light, gameObject) => {
  let {gameObjectMap} as lightPO = ContainerManager.getExnDirectionLight()

  ContainerManager.setDirectionLight({
    ...lightPO,
    gameObjectMap: gameObjectMap->ImmutableSparseMap.set(light, gameObject),
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