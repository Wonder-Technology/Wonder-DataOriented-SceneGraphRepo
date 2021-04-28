open Js.Typed_array

open BufferDirectionLightRepoUtils

let createTypeArrays = (buffer, count) => (
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getColorsOffset(count),
    ~length=getColorsLength(count),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getIntensitiesOffset(count),
    ~length=getIntensitiesLength(count),
  ),
)
