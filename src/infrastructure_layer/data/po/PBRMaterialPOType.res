type pbrMaterial = ComponentPOType.index

type diffuse = (float, float, float)

type specularColor = (float, float, float)

type diffuseMap

type normalMap

type channelRoughnessMetallicMap

type emissionMap

type transmissionMap

type specularMap

type pbrMaterialPO = {
  maxIndex: ComponentPOType.index,
  buffer: SharedArrayBufferPOType.sharedArrayBuffer,
  mutable diffuseColors: Js.Typed_array.Float32Array.t,
  mutable speculars: Js.Typed_array.Float32Array.t,
  mutable specularColors: Js.Typed_array.Float32Array.t,
  mutable roughnesses: Js.Typed_array.Float32Array.t,
  mutable metalnesses: Js.Typed_array.Float32Array.t,
  mutable transmissions: Js.Typed_array.Float32Array.t,
  mutable iors: Js.Typed_array.Float32Array.t,
  defaultDiffuseColor: VectorPOType.vec3,
  defaultSpecular: float,
  defaultSpecularColor: VectorPOType.vec3,
  defaultRoughness: float,
  defaultMetalness: float,
  defaultTransmission: float,
  defaultIOR: float,
  gameObjectsMap: ComponentPOType.gameObjectsMap,
  diffuseMapMap: WonderCommonlib.ImmutableSparseMap.t<pbrMaterial, diffuseMap>,
  channelRoughnessMetallicMapMap: WonderCommonlib.ImmutableSparseMap.t<pbrMaterial, channelRoughnessMetallicMap>,
  emissionMapMap: WonderCommonlib.ImmutableSparseMap.t<pbrMaterial, emissionMap>,
  normalMapMap: WonderCommonlib.ImmutableSparseMap.t<pbrMaterial, normalMap>,
  transmissionMapMap: WonderCommonlib.ImmutableSparseMap.t<pbrMaterial, transmissionMap>,
  specularMapMap: WonderCommonlib.ImmutableSparseMap.t<pbrMaterial, specularMap>,
}
