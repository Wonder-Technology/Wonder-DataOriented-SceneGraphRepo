open ComponentPOType

type directionLight = index

type directionLightPO = {
  maxIndex: ComponentPOType.index,
  buffer: SharedArrayBufferPOType.sharedArrayBuffer,
  mutable colors: Js.Typed_array.Float32Array.t,
  mutable intensities: Js.Typed_array.Float32Array.t,
  gameObjectMap: ComponentPOType.gameObjectMap,
}
