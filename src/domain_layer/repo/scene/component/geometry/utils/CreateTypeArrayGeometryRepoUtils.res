open Js.Typed_array

open BufferGeometryRepoUtils

let createTypeArrays = (buffer, geometryPointCount, geometryCount) => (
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getVerticesOffset(geometryPointCount),
    ~length=getVertexLength(geometryPointCount),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getTexCoordsOffset(geometryPointCount),
    ~length=getTexCoordsLength(geometryPointCount),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getNormalsOffset(geometryPointCount),
    ~length=getVertexLength(geometryPointCount),
  ),
  Float32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getTangentsOffset(geometryPointCount),
    ~length=getVertexLength(geometryPointCount),
  ),
  Uint32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getIndicesOffset(geometryPointCount),
    ~length=getIndicesLength(geometryPointCount),
  ),
  Uint32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getVerticesInfosOffset(geometryPointCount),
    ~length=getVerticesInfosLength(geometryCount),
  ),
  Uint32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getTexCoordsInfosOffset(geometryPointCount, geometryCount),
    ~length=getTexCoordsInfosLength(geometryCount),
  ),
  Uint32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getNormalsInfosOffset(geometryPointCount, geometryCount),
    ~length=getNormalsInfosLength(geometryCount),
  ),
  Uint32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getTangentsInfosOffset(geometryPointCount, geometryCount),
    ~length=getTangentsInfosLength(geometryCount),
  ),
  Uint32Array.fromBufferRange(
    SharedArrayBufferPOType.sharedArrayBufferToArrayBuffer(buffer),
    ~offset=getIndicesInfosOffset(geometryPointCount, geometryCount),
    ~length=getIndicesInfosLength(geometryCount),
  ),
)
