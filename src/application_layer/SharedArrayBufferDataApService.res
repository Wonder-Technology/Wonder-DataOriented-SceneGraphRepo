open SharedArrayBufferDataType

open VODOConvertApService

let getSharedArrayBufferData = () => {
  {
    transformSharedArrayBufferData: SharedArrayBufferDataTransformDoService.getSharedArrayBufferData(),
    pbrMaterialSharedArrayBufferData: SharedArrayBufferDataPBRMaterialDoService.getSharedArrayBufferData(),
    geometrySharedArrayBufferData: SharedArrayBufferDataGeometryDoService.getSharedArrayBufferData(),
    directionLightSharedArrayBufferData: SharedArrayBufferDataDirectionLightDoService.getSharedArrayBufferData(),
  }->sharedArrayBufferDataDOToSharedArrayBufferDataVO
}