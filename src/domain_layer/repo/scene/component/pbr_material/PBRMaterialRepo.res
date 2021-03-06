open PBRMaterialPOType

open PBRMaterialSharedArrayBufferDataType

let getMaxIndex = () => ContainerManager.getExnPBRMaterial().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setPBRMaterial({...ContainerManager.getExnPBRMaterial(), maxIndex: maxIndex})

let getGameObjects = material =>
  ContainerManager.getExnPBRMaterial().gameObjectsMap->WonderCommonlib.ImmutableSparseMap.get(material)

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
  ContainerManager.getExnPBRMaterial().diffuseMapMap->WonderCommonlib.ImmutableSparseMap.get(material)

let setDiffuseMap = (material, id) => {
  let {diffuseMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    diffuseMapMap: diffuseMapMap->WonderCommonlib.ImmutableSparseMap.set(material, id),
  })
}

let getChannelRoughnessMetallicMap = material =>
  ContainerManager.getExnPBRMaterial().channelRoughnessMetallicMapMap->WonderCommonlib.ImmutableSparseMap.get(
    material,
  )

let setChannelRoughnessMetallicMap = (material, id) => {
  let {channelRoughnessMetallicMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    channelRoughnessMetallicMapMap: channelRoughnessMetallicMapMap->WonderCommonlib.ImmutableSparseMap.set(
      material,
      id,
    ),
  })
}

let getEmissionMap = material =>
  ContainerManager.getExnPBRMaterial().emissionMapMap->WonderCommonlib.ImmutableSparseMap.get(material)

let setEmissionMap = (material, id) => {
  let {emissionMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    emissionMapMap: emissionMapMap->WonderCommonlib.ImmutableSparseMap.set(material, id),
  })
}

let getNormalMap = material =>
  ContainerManager.getExnPBRMaterial().normalMapMap->WonderCommonlib.ImmutableSparseMap.get(material)

let setNormalMap = (material, id) => {
  let {normalMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    normalMapMap: normalMapMap->WonderCommonlib.ImmutableSparseMap.set(material, id),
  })
}

let getTransmissionMap = material =>
  ContainerManager.getExnPBRMaterial().transmissionMapMap->WonderCommonlib.ImmutableSparseMap.get(material)

let setTransmissionMap = (material, id) => {
  let {transmissionMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    transmissionMapMap: transmissionMapMap->WonderCommonlib.ImmutableSparseMap.set(material, id),
  })
}

let getSpecularMap = material =>
  ContainerManager.getExnPBRMaterial().specularMapMap->WonderCommonlib.ImmutableSparseMap.get(material)

let setSpecularMap = (material, id) => {
  let {specularMapMap} as materialPO = ContainerManager.getExnPBRMaterial()

  ContainerManager.setPBRMaterial({
    ...materialPO,
    specularMapMap: specularMapMap->WonderCommonlib.ImmutableSparseMap.set(material, id),
  })
}

let getSharedArrayBufferData = () => {
  let {
    buffer,
    diffuseColors,
    speculars,
    specularColors,
    roughnesses,
    metalnesses,
    transmissions,
    iors,
  } = ContainerManager.getExnPBRMaterial()

  {
    buffer: buffer,
    diffuseColors: diffuseColors,
    speculars: speculars,
    specularColors: specularColors,
    roughnesses: roughnesses,
    metalnesses: metalnesses,
    transmissions: transmissions,
    iors: iors,
  }
}
