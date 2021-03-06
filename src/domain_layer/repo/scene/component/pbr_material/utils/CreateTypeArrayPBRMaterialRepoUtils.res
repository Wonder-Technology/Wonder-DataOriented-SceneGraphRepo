open Js.Typed_array

open BufferPBRMaterialRepoUtils

let createTypeArrays = (buffer, count) => (
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getDiffuseColorsOffset(count),
    ~length=getDiffuseColorsLength(count),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getSpecularsOffset(count),
    ~length=getSpecularsLength(count),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getSpecularColorsOffset(count),
    ~length=getSpecularColorsLength(count),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getRoughnessesOffset(count),
    ~length=getRoughnessesLength(count),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getMetalnessesOffset(count),
    ~length=getMetalnessesLength(count),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getTransmissionsOffset(count),
    ~length=getTransmissionsLength(count),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getIORsOffset(count),
    ~length=getIORsLength(count),
  ),
)
