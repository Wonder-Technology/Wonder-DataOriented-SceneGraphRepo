open ISceneGraphRepoType

type geometryRepo = {
  create: unit => geometry,
  getVertices: geometry => Js.Typed_array.Float32Array.t,
  getIndices: geometry => Js.Typed_array.Uint32Array.t,
}

type materialRepo = {
  create: unit => material,
  getDiffuseColor: material => color,
  setDiffuseColor: (material, color) => unit,
}

type gameObjectRepo = {
  create: unit => gameObject,
  getGeometry: gameObject => Js.Nullable.t<geometry>,
  addGeometry: (gameObject, geometry) => unit,
  // getMaterial: gameObject => material,
  // addMaterial: (gameObject, material) => unit,
}

type sceneRepo = {
  getSceneGameObject: unit => sceneGameObject,
  getAllGameObjects: sceneGameObject => list<gameObject>,
}

type sceneGraphRepo = {
  // sceneRepo: sceneRepo,
  // gameObjectRepo: gameObjectRepo,
  // geometryRepo: geometryRepo,
  // materialRepo: materialRepo,
  init: canvas => unit,
  getCanvas: unit => canvas,
}
