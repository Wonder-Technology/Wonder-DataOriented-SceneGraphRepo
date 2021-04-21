type gameObject

type scene

type geometry

type pbrMaterial

type canvas

type color = (float, float, float)

type geometryRepo = {
  create: unit => geometry,
  getVertices: geometry => Js.Typed_array.Float32Array.t,
  getIndices: geometry => Js.Typed_array.Uint32Array.t,
}

type pbrMaterialRepo = {
  create: unit => pbrMaterial,
  getDiffuseColor: pbrMaterial => color,
  setDiffuseColor: (pbrMaterial, color) => unit,
}

type gameObjectRepo = {
  create: unit => gameObject,
  getGeometry: gameObject => Js.Nullable.t<geometry>,
  addGeometry: (gameObject, geometry) => unit,
  // getMaterial: gameObject => pbrMaterial,
  // addMaterial: (gameObject, pbrMaterial) => unit,
  getAllGeometries: unit => array<geometry>,
  getAllPBRMaterials: unit => array<pbrMaterial>,
}

type sceneRepo = {
  create: unit => scene,
  add: (scene, gameObject) => unit,
  getScene: unit => scene,
  setScene: scene => unit,
}

type sceneGraphRepo = {
  sceneRepo: sceneRepo,
  // gameObjectRepo: gameObjectRepo,
  // geometryRepo: geometryRepo,
  // pbrMaterialRepo: pbrMaterialRepo,
  init: canvas => unit,
  getCanvas: unit => canvas,
}
