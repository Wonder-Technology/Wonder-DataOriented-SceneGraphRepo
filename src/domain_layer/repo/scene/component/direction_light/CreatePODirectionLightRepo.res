let _setAllTypeArrDataToDefault = (
  (colors, intensities),
  count,
  (defaultColor, defaultIntensity),
) =>
  ListSt.range(0, count - 1)
  ->ListSt.reduce(Result.succeed(), (result, index) =>
    result->Result.bind(() =>
      OperateTypeArrayDirectionLightRepoUtils.setColor(
        index,
        defaultColor,
        colors,
      )->Result.bind(() =>
        OperateTypeArrayDirectionLightRepoUtils.setIntensity(index, defaultIntensity, intensities)
      )
    )
  )
  ->Result.mapSuccess(() => (colors, intensities))

let _initBufferData = (count, defaultDataTuple) =>
  BufferDirectionLightRepoUtils.createBuffer(count)->Result.bind(buffer =>
    CreateTypeArrayDirectionLightRepoUtils.createTypeArrays(buffer, count)
    ->_setAllTypeArrDataToDefault(count, defaultDataTuple)
    ->Result.mapSuccess(typeArrData => (buffer, typeArrData))
  )

let createPOWithSharedArrayBufferData = (
  {
    buffer,
    colors,
    intensities,
  }: DirectionLightSharedArrayBufferDataType.directionLightSharedArrayBufferData,
): DirectionLightPOType.directionLightPO => {
  let lightCount = ConfigRepo.getDirectionLightCount()

  let defaultColor = (1., 1., 1.)
  let defaultIntensity = 1.0

  {
    maxIndex: 0,
    buffer: buffer,
    colors: colors,
    intensities: intensities,
    gameObjectMap: CreateMapComponentRepoUtils.createEmptyMap(lightCount),
  }
}

let createPO = () => {
  let lightCount = ConfigRepo.getDirectionLightCount()

  let defaultColor = (1., 1., 1.)
  let defaultIntensity = 1.0

  _initBufferData(lightCount, (defaultColor, defaultIntensity))->Result.mapSuccess(((
    buffer,
    (colors, intensities),
  )): DirectionLightPOType.directionLightPO =>
    createPOWithSharedArrayBufferData({
      buffer: buffer,
      colors: colors,
      intensities: intensities,
    })
  )
}
