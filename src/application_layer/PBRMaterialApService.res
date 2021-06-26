open VODOConvertApService

let getIndex = material =>
  material->pbrMaterialVOToPBRMaterialDO->IndexPBRMaterialDoService.getIndex

let toComponent = index =>
  index->IndexPBRMaterialDoService.toComponent->pbrMaterialDOToPBRMaterialVO

let create = () =>
  CreatePBRMaterialDoService.create()->WonderCommonlib.Result.mapSuccess(pbrMaterialDOToPBRMaterialVO)

let getGameObjects = material =>
  GameObjectPBRMaterialDoService.getGameObjects(
    material->pbrMaterialVOToPBRMaterialDO,
  )->WonderCommonlib.OptionSt.map(gameObjects => gameObjects->WonderCommonlib.ListSt.map(gameObjectDOToGameObjectVO))

let getDiffuseColor = material =>
  OperatePBRMaterialDoService.getDiffuseColor(
    material->pbrMaterialVOToPBRMaterialDO,
  )->DiffuseVO.getPrimitiveValue

let setDiffuseColor = (material, color) =>
  OperatePBRMaterialDoService.setDiffuseColor(
    material->pbrMaterialVOToPBRMaterialDO,
    color->Color3VO.create->DiffuseVO.create,
  )

let getSpecular = material =>
  OperatePBRMaterialDoService.getSpecular(material->pbrMaterialVOToPBRMaterialDO)->SpecularVO.value

let setSpecular = (material, specular) =>
  OperatePBRMaterialDoService.setSpecular(
    material->pbrMaterialVOToPBRMaterialDO,
    specular->SpecularVO.create,
  )

let getSpecularColor = material =>
  OperatePBRMaterialDoService.getSpecularColor(
    material->pbrMaterialVOToPBRMaterialDO,
  )->SpecularColorVO.getPrimitiveValue

let setSpecularColor = (material, color) =>
  OperatePBRMaterialDoService.setSpecularColor(
    material->pbrMaterialVOToPBRMaterialDO,
    color->Color3VO.create->SpecularColorVO.create,
  )

let getRoughness = material =>
  OperatePBRMaterialDoService.getRoughness(
    material->pbrMaterialVOToPBRMaterialDO,
  )->RoughnessVO.value

let setRoughness = (material, roughness) =>
  OperatePBRMaterialDoService.setRoughness(
    material->pbrMaterialVOToPBRMaterialDO,
    roughness->RoughnessVO.create,
  )

let getMetalness = material =>
  OperatePBRMaterialDoService.getMetalness(
    material->pbrMaterialVOToPBRMaterialDO,
  )->MetalnessVO.value

let setMetalness = (material, metalness) =>
  OperatePBRMaterialDoService.setMetalness(
    material->pbrMaterialVOToPBRMaterialDO,
    metalness->MetalnessVO.create,
  )

let getTransmission = material =>
  OperatePBRMaterialDoService.getTransmission(
    material->pbrMaterialVOToPBRMaterialDO,
  )->TransmissionVO.value

let setTransmission = (material, transmission) =>
  OperatePBRMaterialDoService.setTransmission(
    material->pbrMaterialVOToPBRMaterialDO,
    transmission->TransmissionVO.create,
  )

let getIOR = material =>
  OperatePBRMaterialDoService.getIOR(material->pbrMaterialVOToPBRMaterialDO)->IORVO.value

let setIOR = (material, ior) =>
  OperatePBRMaterialDoService.setIOR(material->pbrMaterialVOToPBRMaterialDO, ior->IORVO.create)

let getDiffuseMap = material =>
  OperatePBRMaterialDoService.getDiffuseMap(material->pbrMaterialVOToPBRMaterialDO)->WonderCommonlib.OptionSt.map(
    diffuseMapDOToDiffuseMapVO,
  )

let setDiffuseMap = (material, map) =>
  OperatePBRMaterialDoService.setDiffuseMap(
    material->pbrMaterialVOToPBRMaterialDO,
    map->diffuseMapVOToDiffuseMapDO,
  )

let getChannelRoughnessMetallicMap = material =>
  OperatePBRMaterialDoService.getChannelRoughnessMetallicMap(
    material->pbrMaterialVOToPBRMaterialDO,
  )->WonderCommonlib.OptionSt.map(channelRoughnessMetallicMapDOToChannelRoughnessMetallicMapVO)

let setChannelRoughnessMetallicMap = (material, map) =>
  OperatePBRMaterialDoService.setChannelRoughnessMetallicMap(
    material->pbrMaterialVOToPBRMaterialDO,
    map->channelRoughnessMetallicMapVOToChannelRoughnessMetallicMapDO,
  )

let getEmissionMap = material =>
  OperatePBRMaterialDoService.getEmissionMap(material->pbrMaterialVOToPBRMaterialDO)->WonderCommonlib.OptionSt.map(
    emissionMapDOToEmissionMapVO,
  )

let setEmissionMap = (material, map) =>
  OperatePBRMaterialDoService.setEmissionMap(
    material->pbrMaterialVOToPBRMaterialDO,
    map->emissionMapVOToEmissionMapDO,
  )

let getNormalMap = material =>
  OperatePBRMaterialDoService.getNormalMap(material->pbrMaterialVOToPBRMaterialDO)->WonderCommonlib.OptionSt.map(
    normalMapDOToNormalMapVO,
  )

let setNormalMap = (material, map) =>
  OperatePBRMaterialDoService.setNormalMap(
    material->pbrMaterialVOToPBRMaterialDO,
    map->normalMapVOToNormalMapDO,
  )

let getTransmissionMap = material =>
  OperatePBRMaterialDoService.getTransmissionMap(
    material->pbrMaterialVOToPBRMaterialDO,
  )->WonderCommonlib.OptionSt.map(transmissionMapDOToTransmissionMapVO)

let setTransmissionMap = (material, map) =>
  OperatePBRMaterialDoService.setTransmissionMap(
    material->pbrMaterialVOToPBRMaterialDO,
    map->transmissionMapVOToTransmissionMapDO,
  )

let getSpecularMap = material =>
  OperatePBRMaterialDoService.getSpecularMap(material->pbrMaterialVOToPBRMaterialDO)->WonderCommonlib.OptionSt.map(
    specularMapDOToSpecularMapVO,
  )

let setSpecularMap = (material, map) =>
  OperatePBRMaterialDoService.setSpecularMap(
    material->pbrMaterialVOToPBRMaterialDO,
    map->specularMapVOToSpecularMapDO,
  )
