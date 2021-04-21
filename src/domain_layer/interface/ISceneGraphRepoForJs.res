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

type transformRepo = {
  create: unit => transform,
  getGameObject: transform => Js.Nullable.t<gameObject>,
}

type geometryRepo = {
  create: unit => geometry,
  getVertices: geometry => Js.Typed_array.Float32Array.t,
  getIndices: geometry => Js.Typed_array.Uint32Array.t,
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

type sceneGraphRepo = {
  configRepo: configRepo,
  sceneRepo: sceneRepo,
  gameObjectRepo: gameObjectRepo,
  transformRepo: transformRepo,
  // geometryRepo: geometryRepo,
  // pbrMaterialRepo: pbrMaterialRepo,
  init: (canvas, bool, int) => unit,
  getCanvas: unit => Js.Nullable.t<canvas>,
}
