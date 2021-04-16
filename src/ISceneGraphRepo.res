type gameObject

type sceneGameObject = gameObject

type geometry

// type material

type geometryRepo = {
  create: unit => geometry,
  getVertices: geometry => Js.Typed_array.Float32Array.t,
  getIndices: geometry => Js.Typed_array.Uint32Array.t,
}

// type materialRepo = {
//   create: unit => material,
//   getColor: geometry => (float, float, float),
// }

type gameObjectRepo = {
  create: unit => gameObject,
  getGeometry: gameObject => geometry,
  addGeometry: (gameObject, geometry) => unit,
  // getMaterial: gameObject => material,
  // addMaterial: (gameObject, material) => unit,
}

type sceneRepo = {
  getSceneGameObject: unit => sceneGameObject,
  getAllGameObjects: sceneGameObject => list<gameObject>,
}

type canvas

type sceneGraphRepo = {
  sceneRepo: sceneRepo,
  gameObjectRepo: gameObjectRepo,
  geometryRepo: geometryRepo,
  // materialRepo: materialRepo,
  init: canvas => unit,
  getCanvas: unit => canvas,
}
