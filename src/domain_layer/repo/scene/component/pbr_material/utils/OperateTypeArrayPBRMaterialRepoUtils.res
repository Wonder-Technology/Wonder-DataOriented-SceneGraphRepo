open BufferPBRMaterialRepoUtils

let getDiffuseColor = (index, typeArr) =>
  TypeArrayRepoUtils.getFloat3Tuple(getDiffuseColorIndex(index), typeArr)

let setDiffuseColor = (index, data, typeArr) =>
  TypeArrayRepoUtils.setFloat3(getDiffuseColorIndex(index), data, typeArr)

let getSpecular = (index, typeArr) => TypeArrayRepoUtils.getFloat1(getSpecularIndex(index), typeArr)

let setSpecular = (index, data, typeArr) =>
  TypeArrayRepoUtils.setFloat1(getSpecularIndex(index), data, typeArr)

let getSpecularColor = (index, typeArr) =>
  TypeArrayRepoUtils.getFloat3Tuple(getSpecularColorIndex(index), typeArr)

let setSpecularColor = (index, data, typeArr) =>
  TypeArrayRepoUtils.setFloat3(getSpecularColorIndex(index), data, typeArr)

let getRoughness = (index, typeArr) =>
  TypeArrayRepoUtils.getFloat1(getRoughnessIndex(index), typeArr)

let setRoughness = (index, data, typeArr) =>
  TypeArrayRepoUtils.setFloat1(getRoughnessIndex(index), data, typeArr)

let getMetalness = (index, typeArr) =>
  TypeArrayRepoUtils.getFloat1(getMetalnessIndex(index), typeArr)

let setMetalness = (index, data, typeArr) =>
  TypeArrayRepoUtils.setFloat1(getMetalnessIndex(index), data, typeArr)

let getTransmission = (index, typeArr) =>
  TypeArrayRepoUtils.getFloat1(getTransmissionIndex(index), typeArr)

let setTransmission = (index, data, typeArr) =>
  TypeArrayRepoUtils.setFloat1(getTransmissionIndex(index), data, typeArr)

let getIOR = (index, typeArr) => TypeArrayRepoUtils.getFloat1(getIORIndex(index), typeArr)

let setIOR = (index, data, typeArr) =>
  TypeArrayRepoUtils.setFloat1(getIORIndex(index), data, typeArr)
