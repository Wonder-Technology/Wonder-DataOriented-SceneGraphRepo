open ComponentPOType

type transform = index

type parent = transform

type child = transform

type children = list<child>

type position = (float, float, float)

type rotation = (float, float, float, float)

type scale = (float, float, float)

type localToWorldMatrix = Js.Typed_array.Float32Array.t

type normalMatrix = Js.Typed_array.Float32Array.t

type eulerAngles = (float, float, float)

type transformPO = {
  maxIndex: ComponentPOType.index,
  buffer: SharedArrayBufferPOType.sharedArrayBuffer,
  mutable localToWorldMatrices: Js.Typed_array.Float32Array.t,
  mutable localPositions: Js.Typed_array.Float32Array.t,
  mutable localRotations: Js.Typed_array.Float32Array.t,
  mutable localScales: Js.Typed_array.Float32Array.t,
  defaultLocalToWorldMatrix: Matrix4POType.mat,
  defaultLocalPosition: VectorPOType.vec3,
  defaultLocalRotation: VectorPOType.vec4,
  defaultLocalScale: VectorPOType.vec3,
  parentMap: ImmutableSparseMap.t<ComponentPOType.index, ComponentPOType.index>,
  childrenMap: ImmutableSparseMap.t<ComponentPOType.index, list<ComponentPOType.index>>,
  gameObjectMap: ComponentPOType.gameObjectMap,
  dirtyMap: ImmutableSparseMap.t<ComponentPOType.index, bool>,
}
