open Js.Typed_array

let create = () => CreatePBRMaterialDoService.create()

let getGameObjects = material => GameObjectPBRMaterialDoService.getGameObjects(material)

let getDiffuseColor = material => OperatePBRMaterialDoService.getDiffuseColor(material)

let setDiffuseColor = (material, color) =>
  OperatePBRMaterialDoService.setDiffuseColor(material, color)

let getSpecular = material => OperatePBRMaterialDoService.getSpecular(material)

let setSpecular = (material, specular) =>
  OperatePBRMaterialDoService.setSpecular(material, specular)

let getSpecularColor = material => OperatePBRMaterialDoService.getSpecularColor(material)

let setSpecularColor = (material, color) =>
  OperatePBRMaterialDoService.setSpecularColor(material, color)

let getRoughness = material => OperatePBRMaterialDoService.getRoughness(material)

let setRoughness = (material, roughness) =>
  OperatePBRMaterialDoService.setRoughness(material, roughness)

let getMetalness = material => OperatePBRMaterialDoService.getMetalness(material)

let setMetalness = (material, metalness) =>
  OperatePBRMaterialDoService.setMetalness(material, metalness)

let getTransmission = material => OperatePBRMaterialDoService.getTransmission(material)

let setTransmission = (material, transmission) =>
  OperatePBRMaterialDoService.setTransmission(material, transmission)

let getIOR = material => OperatePBRMaterialDoService.getIOR(material)

let setIOR = (material, ior) => OperatePBRMaterialDoService.setIOR(material, ior)

let getDiffuseMap = material => OperatePBRMaterialDoService.getDiffuseMap(material)

let setDiffuseMap = (material, id) => OperatePBRMaterialDoService.setDiffuseMap(material, id)

let getChannelRoughnessMetallicMap = material =>
  OperatePBRMaterialDoService.getChannelRoughnessMetallicMap(material)

let setChannelRoughnessMetallicMap = (material, id) =>
  OperatePBRMaterialDoService.setChannelRoughnessMetallicMap(material, id)

let getEmissionMap = material => OperatePBRMaterialDoService.getEmissionMap(material)

let setEmissionMap = (material, id) => OperatePBRMaterialDoService.setEmissionMap(material, id)

let getNormalMap = material => OperatePBRMaterialDoService.getNormalMap(material)

let setNormalMap = (material, id) => OperatePBRMaterialDoService.setNormalMap(material, id)

let getTransmissionMap = material => OperatePBRMaterialDoService.getTransmissionMap(material)

let setTransmissionMap = (material, id) =>
  OperatePBRMaterialDoService.setTransmissionMap(material, id)

let getSpecularMap = material => OperatePBRMaterialDoService.getSpecularMap(material)

let setSpecularMap = (material, id) => OperatePBRMaterialDoService.setSpecularMap(material, id)

let isPBRMaterial = material => {
  open Wonder_jest
  open Expect
  open! Expect.Operators
  expect(material->PBRMaterialEntity.value) >= 0
}

let getMaxIndex = () => ContainerManager.getExnPBRMaterial().maxIndex

let createDiffuseColor = color => color->Color3VO.create->DiffuseVO.create

let createSpecularColor = color => color->Color3VO.create->SpecularColorVO.create

let _truncateColor = ((r, g, b)) => (
  TruncateTool.truncateFloatValue(5, r),
  TruncateTool.truncateFloatValue(5, g),
  TruncateTool.truncateFloatValue(5, b),
)

let truncateDiffuseColor = color =>
  color->DiffuseVO.getPrimitiveValue->_truncateColor->createDiffuseColor

let truncateSpecularColor = color =>
  color->SpecularColorVO.getPrimitiveValue->_truncateColor->createSpecularColor
