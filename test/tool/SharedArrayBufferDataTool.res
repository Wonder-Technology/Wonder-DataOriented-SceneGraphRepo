open SharedArrayBufferDataType

open Js.Typed_array

// let getSharedArrayBufferData = (~localScales=Js.TypedArray2.Float32Array.make([]), ()) => {
//   let {
//     transformSharedArrayBufferData,
//     pbrMaterialSharedArrayBufferData,
//     geometrySharedArrayBufferData,
//     directionLightSharedArrayBufferData,
//   } as data = {
//     transformSharedArrayBufferData: SharedArrayBufferDataTransformDoService.getSharedArrayBufferData(),
//     pbrMaterialSharedArrayBufferData: SharedArrayBufferDataPBRMaterialDoService.getSharedArrayBufferData(),
//     geometrySharedArrayBufferData: SharedArrayBufferDataGeometryDoService.getSharedArrayBufferData(),
//     directionLightSharedArrayBufferData: SharedArrayBufferDataDirectionLightDoService.getSharedArrayBufferData(),
//   }

//   {
//     ...data,
//     transformSharedArrayBufferData: {
//       ...transformSharedArrayBufferData,
//       localScales: localScales,
//     },
//   }
// }

let createSharedArrayBufferData = (~localScales=Float32Array.make([]), ()) => {
  {
    transformSharedArrayBufferData: {
      buffer: Obj.magic(-1),
      localToWorldMatrices: Float32Array.make([]),
      localPositions: Float32Array.make([]),
      localRotations: Float32Array.make([]),
      localScales: localScales,
    },
    geometrySharedArrayBufferData: {
      buffer: Obj.magic(-1),
      vertices: Float32Array.make([]),
      texCoords: Float32Array.make([]),
      normals: Float32Array.make([]),
      tangents: Float32Array.make([]),
      indices: Uint32Array.make([]),
      verticesInfos: Uint32Array.make([]),
      texCoordsInfos: Uint32Array.make([]),
      normalsInfos: Uint32Array.make([]),
      tangentsInfos: Uint32Array.make([]),
      indicesInfos: Uint32Array.make([]),
    },
    pbrMaterialSharedArrayBufferData: {
      buffer: Obj.magic(-1),
      diffuseColors: Float32Array.make([]),
      speculars: Float32Array.make([]),
      specularColors: Float32Array.make([]),
      roughnesses: Float32Array.make([]),
      metalnesses: Float32Array.make([]),
      transmissions: Float32Array.make([]),
      iors: Float32Array.make([]),
    },
    directionLightSharedArrayBufferData: {
      buffer: Obj.magic(-1),
      colors: Float32Array.make([]),
      intensities: Float32Array.make([]),
    },
  }
}

let getTransformSharedArrayBufferData = () =>
  SharedArrayBufferDataTransformDoService.getSharedArrayBufferData()
