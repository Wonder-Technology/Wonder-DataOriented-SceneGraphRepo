type gameObject

type scene

type transform

type geometry

type pbrMaterial

type canvas

type color = (float, float, float)

type configRepo = {
  getIsDebug: unit => bool,
  setIsDebug: bool => unit,
  getTransformCount: unit => int,
  setTransformCount: int => unit,
}

type position = (float, float, float)

type rotation = (float, float, float, float)

type scale = (float, float, float)

type localToWorldMatrix = Js.Typed_array.Float32Array.t

type normalMatrix = Js.Typed_array.Float32Array.t

type eulerAngles = (float, float, float)

type angle = float

type axis = (float, float, float)

type target = (float, float, float)

type transformRepo = {
  create: unit => transform,
  getGameObject: transform => Js.Nullable.t<gameObject>,
  getParent: transform => Js.Nullable.t<transform>,
  hasParent: transform => bool,
  removeParent: transform => unit,
  getChildren: transform => Js.Nullable.t<array<transform>>,
  getLocalPosition: transform => position,
  setLocalPosition: (transform, position) => unit,
  getPosition: transform => position,
  setPosition: (transform, position) => unit,
  getLocalRotation: transform => rotation,
  setLocalRotation: (transform, rotation) => unit,
  getRotation: transform => rotation,
  setRotation: (transform, rotation) => unit,
  getLocalScale: transform => scale,
  setLocalScale: (transform, scale) => unit,
  getScale: transform => scale,
  setScale: (transform, scale) => unit,
  getLocalEulerAngles: transform => eulerAngles,
  setLocalEulerAngles: (transform, eulerAngles) => unit,
  getEulerAngles: transform => eulerAngles,
  setEulerAngles: (transform, eulerAngles) => unit,
  rotateLocalOnAxis: (transform, (angle, axis)) => unit,
  rotateWorldOnAxis: (transform, (angle, axis)) => unit,
  getLocalToWorldMatrix: transform => localToWorldMatrix,
  getNormalMatrix: transform => normalMatrix,
  lookAt: (transform, target) => unit,
}

type geometryRepo = {
  create: unit => geometry,
  getGameObjects: geometry => Js.Nullable.t<array<gameObject>>,
  createTriangleGeometry: unit => geometry,
  createSphereGeometry: (float, int) => geometry,
  createPlaneGeometry: (int, int, int, int) => geometry,
  getVertices: geometry => Js.Nullable.t<Js.Typed_array.Float32Array.t>,
  setVertices: (geometry, Js.Typed_array.Float32Array.t) => unit,
  hasVertices: geometry => bool,
  getNormals: geometry => Js.Nullable.t<Js.Typed_array.Float32Array.t>,
  setNormals: (geometry, Js.Typed_array.Float32Array.t) => unit,
  hasNormals: geometry => bool,
  getTexCoords: geometry => Js.Nullable.t<Js.Typed_array.Float32Array.t>,
  setTexCoords: (geometry, Js.Typed_array.Float32Array.t) => unit,
  hasTexCoords: geometry => bool,
  getTangents: geometry => Js.Nullable.t<Js.Typed_array.Float32Array.t>,
  setTangents: (geometry, Js.Typed_array.Float32Array.t) => unit,
  hasTangents: geometry => bool,
  getIndices: geometry => Js.Nullable.t<Js.Typed_array.Uint32Array.t>,
  setIndices: (geometry, Js.Typed_array.Uint32Array.t) => unit,
  hasIndices: geometry => bool,
  getIndicesCount: geometry => Js.Nullable.t<int>,
  computeTangents: (
    Js.Typed_array.Float32Array.t,
    Js.Typed_array.Float32Array.t,
    Js.Typed_array.Float32Array.t,
    Js.Typed_array.Uint32Array.t,
  ) => Js.Typed_array.Float32Array.t,
}

type pbrMaterialRepo = {
  create: unit => pbrMaterial,
  getDiffuseColor: pbrMaterial => Js.Nullable.t<color>,
  setDiffuseColor: (pbrMaterial, color) => unit,
}

type gameObjectRepo = {
  create: unit => gameObject,
  getTransform: gameObject => Js.Nullable.t<transform>,
  addTransform: (gameObject, transform) => gameObject,
  hasTransform: gameObject => bool,
  // getGeometry: gameObject => Js.Nullable.t<geometry>,
  // addGeometry: (gameObject, geometry) => gameObject,
  // getMaterial: gameObject => Js.Nullable.t<pbrMaterial>,
  // addMaterial: (gameObject, pbrMaterial) => gameObject,
}

type sceneRepo = {
  create: unit => scene,
  add: (scene, gameObject) => unit,
  getScene: unit => Js.Nullable.t<scene>,
  setScene: scene => unit,
  // getAllGeometries: scene => array<geometry>,
  // getAllPBRMaterials: scene => array<pbrMaterial>,
}

type configData = {
  isDebug: bool,
  transformCount: int,
  geometryCount: int,
  geometryPointCount: int,
}

type globalTempData = {
  float9Array1: Js.Typed_array.Float32Array.t,
  float32Array1: Js.Typed_array.Float32Array.t,
}

type sceneGraphRepo = {
  configRepo: configRepo,
  sceneRepo: sceneRepo,
  gameObjectRepo: gameObjectRepo,
  transformRepo: transformRepo,
  geometryRepo: geometryRepo,
  // pbrMaterialRepo: pbrMaterialRepo,
  init: (canvas, configData, globalTempData) => unit,
  getCanvas: unit => Js.Nullable.t<canvas>,
}