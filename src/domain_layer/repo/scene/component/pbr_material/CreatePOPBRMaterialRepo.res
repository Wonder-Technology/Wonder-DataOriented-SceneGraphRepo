let _setAllTypeArrDataToDefault = (
  (diffuseColors, speculars, specularColors, roughnesses, metalnesses, transmissions, iors),
  count,
  (
    defaultDiffuseColor,
    defaultSpecular,
    defaultSpecularColor,
    defaultRoughness,
    defaultMetalness,
    defaultTransmission,
    defaultIOR,
  ),
) =>
  ListSt.range(0, count - 1)
  ->ListSt.reduce(Result.succeed(), (result, index) =>
    result->Result.bind(() =>
      ListResult.mergeResults(list{
        OperateTypeArrayPBRMaterialRepoUtils.setDiffuseColor(
          index,
          defaultDiffuseColor,
          diffuseColors,
        ),
        OperateTypeArrayPBRMaterialRepoUtils.setSpecular(index, defaultSpecular, speculars),
        OperateTypeArrayPBRMaterialRepoUtils.setSpecularColor(
          index,
          defaultSpecularColor,
          specularColors,
        ),
        OperateTypeArrayPBRMaterialRepoUtils.setRoughness(index, defaultRoughness, roughnesses),
        OperateTypeArrayPBRMaterialRepoUtils.setMetalness(index, defaultMetalness, metalnesses),
        OperateTypeArrayPBRMaterialRepoUtils.setTransmission(
          index,
          defaultTransmission,
          transmissions,
        ),
        OperateTypeArrayPBRMaterialRepoUtils.setIOR(index, defaultIOR, iors),
      })
    )
  )
  ->Result.mapSuccess(() => (
    diffuseColors,
    speculars,
    specularColors,
    roughnesses,
    metalnesses,
    transmissions,
    iors,
  ))

let _initBufferData = (count, defaultDataTuple) =>
  BufferPBRMaterialRepoUtils.createBuffer(count)->Result.bind(buffer =>
    CreateTypeArrayPBRMaterialRepoUtils.createTypeArrays(buffer, count)
    ->_setAllTypeArrDataToDefault(count, defaultDataTuple)
    ->Result.mapSuccess(typeArrData => (buffer, typeArrData))
  )

let createPOWithSharedArrayBufferData = (
  {
    buffer,
    diffuseColors,
    speculars,
    specularColors,
    roughnesses,
    metalnesses,
    transmissions,
    iors,
  }: PBRMaterialSharedArrayBufferDataType.pbrMaterialSharedArrayBufferData,
): PBRMaterialPOType.pbrMaterialPO => {
  let pbrMaterialCount = ConfigRepo.getPBRMaterialCount()

  let defaultDiffuseColor = (1., 1., 1.)
  let defaultSpecular = 1.0
  let defaultSpecularColor = (1., 1., 1.)
  let defaultRoughness = 1.0
  let defaultMetalness = 1.0
  let defaultTransmission = 0.0
  let defaultIOR = 1.5

  {
    maxIndex: 0,
    buffer: buffer,
    diffuseColors: diffuseColors,
    speculars: speculars,
    specularColors: specularColors,
    roughnesses: roughnesses,
    metalnesses: metalnesses,
    transmissions: transmissions,
    iors: iors,
    defaultDiffuseColor: defaultDiffuseColor,
    defaultSpecular: defaultSpecular,
    defaultSpecularColor: defaultSpecularColor,
    defaultRoughness: defaultRoughness,
    defaultMetalness: defaultMetalness,
    defaultTransmission: defaultTransmission,
    defaultIOR: defaultIOR,
    gameObjectsMap: CreateMapComponentRepoUtils.createEmptyMap(pbrMaterialCount),
    diffuseMapMap: CreateMapComponentRepoUtils.createEmptyMap(pbrMaterialCount),
    channelRoughnessMetallicMapMap: CreateMapComponentRepoUtils.createEmptyMap(pbrMaterialCount),
    emissionMapMap: CreateMapComponentRepoUtils.createEmptyMap(pbrMaterialCount),
    normalMapMap: CreateMapComponentRepoUtils.createEmptyMap(pbrMaterialCount),
    transmissionMapMap: CreateMapComponentRepoUtils.createEmptyMap(pbrMaterialCount),
    specularMapMap: CreateMapComponentRepoUtils.createEmptyMap(pbrMaterialCount),
  }
}

let createPO = () => {
  let pbrMaterialCount = ConfigRepo.getPBRMaterialCount()

  let defaultDiffuseColor = (1., 1., 1.)
  let defaultSpecular = 1.0
  let defaultSpecularColor = (1., 1., 1.)
  let defaultRoughness = 1.0
  let defaultMetalness = 1.0
  let defaultTransmission = 0.0
  let defaultIOR = 1.5

  _initBufferData(
    pbrMaterialCount,
    (
      defaultDiffuseColor,
      defaultSpecular,
      defaultSpecularColor,
      defaultRoughness,
      defaultMetalness,
      defaultTransmission,
      defaultIOR,
    ),
  )->Result.mapSuccess(((
    buffer,
    (diffuseColors, speculars, specularColors, roughnesses, metalnesses, transmissions, iors),
  )): PBRMaterialPOType.pbrMaterialPO =>
    createPOWithSharedArrayBufferData({
      buffer: buffer,
      diffuseColors: diffuseColors,
      speculars: speculars,
      specularColors: specularColors,
      roughnesses: roughnesses,
      metalnesses: metalnesses,
      transmissions: transmissions,
      iors: iors,
    })
  )
}
