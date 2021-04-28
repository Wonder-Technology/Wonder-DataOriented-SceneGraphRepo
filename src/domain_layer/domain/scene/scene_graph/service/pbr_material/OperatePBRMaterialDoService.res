let getDiffuseColor = material =>
  PBRMaterialRepo.getDiffuseColor(material->PBRMaterialEntity.value)
  ->Color3VO.create
  ->DiffuseVO.create

let setDiffuseColor = (material, color) =>
  PBRMaterialRepo.setDiffuseColor(
    material->PBRMaterialEntity.value,
    color->DiffuseVO.getPrimitiveValue,
  )

let getSpecular = material =>
  PBRMaterialRepo.getSpecular(material->PBRMaterialEntity.value)->SpecularVO.create

let setSpecular = (material, specular) =>
  PBRMaterialRepo.setSpecular(material->PBRMaterialEntity.value, specular->SpecularVO.value)

let getSpecularColor = material =>
  PBRMaterialRepo.getSpecularColor(material->PBRMaterialEntity.value)
  ->Color3VO.create
  ->SpecularColorVO.create

let setSpecularColor = (material, color) =>
  PBRMaterialRepo.setSpecularColor(
    material->PBRMaterialEntity.value,
    color->SpecularColorVO.getPrimitiveValue,
  )

let getRoughness = material =>
  PBRMaterialRepo.getRoughness(material->PBRMaterialEntity.value)->RoughnessVO.create

let setRoughness = (material, roughness) =>
  PBRMaterialRepo.setRoughness(material->PBRMaterialEntity.value, roughness->RoughnessVO.value)

let getMetalness = material =>
  PBRMaterialRepo.getMetalness(material->PBRMaterialEntity.value)->MetalnessVO.create

let setMetalness = (material, metalness) =>
  PBRMaterialRepo.setMetalness(material->PBRMaterialEntity.value, metalness->MetalnessVO.value)

let getTransmission = material =>
  PBRMaterialRepo.getTransmission(material->PBRMaterialEntity.value)->TransmissionVO.create

let setTransmission = (material, transmission) =>
  PBRMaterialRepo.setTransmission(
    material->PBRMaterialEntity.value,
    transmission->TransmissionVO.value,
  )

let getIOR = material => PBRMaterialRepo.getIOR(material->PBRMaterialEntity.value)->IORVO.create

let setIOR = (material, ior) =>
  PBRMaterialRepo.setIOR(material->PBRMaterialEntity.value, ior->IORVO.value)

let getDiffuseMap = material => PBRMaterialRepo.getDiffuseMap(material->PBRMaterialEntity.value)

let setDiffuseMap = (material, map) =>
  PBRMaterialRepo.setDiffuseMap(material->PBRMaterialEntity.value, map)

let getChannelRoughnessMetallicMap = material =>
  PBRMaterialRepo.getChannelRoughnessMetallicMap(material->PBRMaterialEntity.value)

let setChannelRoughnessMetallicMap = (material, map) =>
  PBRMaterialRepo.setChannelRoughnessMetallicMap(material->PBRMaterialEntity.value, map)

let getEmissionMap = material => PBRMaterialRepo.getEmissionMap(material->PBRMaterialEntity.value)

let setEmissionMap = (material, map) =>
  PBRMaterialRepo.setEmissionMap(material->PBRMaterialEntity.value, map)

let getNormalMap = material => PBRMaterialRepo.getNormalMap(material->PBRMaterialEntity.value)

let setNormalMap = (material, map) =>
  PBRMaterialRepo.setNormalMap(material->PBRMaterialEntity.value, map)

let getTransmissionMap = material =>
  PBRMaterialRepo.getTransmissionMap(material->PBRMaterialEntity.value)

let setTransmissionMap = (material, map) =>
  PBRMaterialRepo.setTransmissionMap(material->PBRMaterialEntity.value, map)

let getSpecularMap = material => PBRMaterialRepo.getSpecularMap(material->PBRMaterialEntity.value)

let setSpecularMap = (material, map) =>
  PBRMaterialRepo.setSpecularMap(material->PBRMaterialEntity.value, map)
