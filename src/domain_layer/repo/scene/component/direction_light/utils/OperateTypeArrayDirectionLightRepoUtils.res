open BufferDirectionLightRepoUtils

let getColor = (index, typeArr) =>
  TypeArrayRepoUtils.getFloat3Tuple(getColorIndex(index), typeArr)

let setColor = (index, data, typeArr) =>
  TypeArrayRepoUtils.setFloat3(getColorIndex(index), data, typeArr)

let getIntensity = (index, typeArr) =>
  TypeArrayRepoUtils.getFloat1(getIntensityIndex(index), typeArr)

let setIntensity = (index, data, typeArr) =>
  TypeArrayRepoUtils.setFloat1(getIntensityIndex(index), data, typeArr)
