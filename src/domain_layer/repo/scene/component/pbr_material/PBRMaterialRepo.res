open PBRMaterialPOType

let getMaxIndex = () => ContainerManager.getExnPBRMaterial().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setPBRMaterial({...ContainerManager.getExnPBRMaterial(), maxIndex: maxIndex})

let getGameObjects = material =>
  ContainerManager.getExnPBRMaterial().gameObjectsMap->ImmutableSparseMap.get(material)

let addGameObject = (material, gameObject) => {
  let {gameObjectsMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    gameObjectsMap: gameObjectsMap->ListMapRepoUtils.addValue(material, gameObject),
  })
}

let getDiffuseColor = material =>
  OperateTypeArrayPBRMaterialRepoUtils.getDiffuseColor(
    material,
    ContainerManager.getExnPBRMaterial().diffuseColors,
  )

let setDiffuseColor = (material, color) =>
  OperateTypeArrayPBRMaterialRepoUtils.setDiffuseColor(
    material,
    color,
    ContainerManager.getExnPBRMaterial().diffuseColors,
  )

let getSpecular = material =>
  OperateTypeArrayPBRMaterialRepoUtils.getSpecular(
    material,
    ContainerManager.getExnPBRMaterial().speculars,
  )

let setSpecular = (material, specular) =>
  OperateTypeArrayPBRMaterialRepoUtils.setSpecular(
    material,
    specular,
    ContainerManager.getExnPBRMaterial().speculars,
  )

let getSpecularColor = material =>
  OperateTypeArrayPBRMaterialRepoUtils.getSpecularColor(
    material,
    ContainerManager.getExnPBRMaterial().specularColors,
  )

let setSpecularColor = (material, color) =>
  OperateTypeArrayPBRMaterialRepoUtils.setSpecularColor(
    material,
    color,
    ContainerManager.getExnPBRMaterial().specularColors,
  )

let getRoughness = material =>
  OperateTypeArrayPBRMaterialRepoUtils.getRoughness(
    material,
    ContainerManager.getExnPBRMaterial().roughnesses,
  )

let setRoughness = (material, roughness) =>
  OperateTypeArrayPBRMaterialRepoUtils.setRoughness(
    material,
    roughness,
    ContainerManager.getExnPBRMaterial().roughnesses,
  )

let getMetalness = material =>
  OperateTypeArrayPBRMaterialRepoUtils.getMetalness(
    material,
    ContainerManager.getExnPBRMaterial().metalnesses,
  )

let setMetalness = (material, metalness) =>
  OperateTypeArrayPBRMaterialRepoUtils.setMetalness(
    material,
    metalness,
    ContainerManager.getExnPBRMaterial().metalnesses,
  )

let getTransmission = material =>
  OperateTypeArrayPBRMaterialRepoUtils.getTransmission(
    material,
    ContainerManager.getExnPBRMaterial().transmissions,
  )

let setTransmission = (material, transmission) =>
  OperateTypeArrayPBRMaterialRepoUtils.setTransmission(
    material,
    transmission,
    ContainerManager.getExnPBRMaterial().transmissions,
  )

let getIOR = material =>
  OperateTypeArrayPBRMaterialRepoUtils.getIOR(material, ContainerManager.getExnPBRMaterial().iors)

let setIOR = (material, ior) =>
  OperateTypeArrayPBRMaterialRepoUtils.setIOR(
    material,
    ior,
    ContainerManager.getExnPBRMaterial().iors,
  )

let getDiffuseMap = material =>
  ContainerManager.getExnPBRMaterial().diffuseMapMap->ImmutableSparseMap.get(material)

let setDiffuseMap = (material, id) => {
  let {diffuseMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    diffuseMapMap: diffuseMapMap->ImmutableSparseMap.set(material, id),
  })
}

let getChannelRoughnessMetallicMap = material =>
  ContainerManager.getExnPBRMaterial().channelRoughnessMetallicMapMap->ImmutableSparseMap.get(
    material,
  )

let setChannelRoughnessMetallicMap = (material, id) => {
  let {channelRoughnessMetallicMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    channelRoughnessMetallicMapMap: channelRoughnessMetallicMapMap->ImmutableSparseMap.set(
      material,
      id,
    ),
  })
}

let getEmissionMap = material =>
  ContainerManager.getExnPBRMaterial().emissionMapMap->ImmutableSparseMap.get(material)

let setEmissionMap = (material, id) => {
  let {emissionMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    emissionMapMap: emissionMapMap->ImmutableSparseMap.set(material, id),
  })
}

let getNormalMap = material =>
  ContainerManager.getExnPBRMaterial().normalMapMap->ImmutableSparseMap.get(material)

let setNormalMap = (material, id) => {
  let {normalMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    normalMapMap: normalMapMap->ImmutableSparseMap.set(material, id),
  })
}

let getTransmissionMap = material =>
  ContainerManager.getExnPBRMaterial().transmissionMapMap->ImmutableSparseMap.get(material)

let setTransmissionMap = (material, id) => {
  let {transmissionMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    transmissionMapMap: transmissionMapMap->ImmutableSparseMap.set(material, id),
  })
}

let getSpecularMap = material =>
  ContainerManager.getExnPBRMaterial().specularMapMap->ImmutableSparseMap.get(material)

let setSpecularMap = (material, id) => {
  let {specularMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    specularMapMap: specularMapMap->ImmutableSparseMap.set(material, id),
  })
}
