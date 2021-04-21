// let create = SceneApService.create

// let getScene = SceneApService.getScene

// let setScene = SceneApService.setScene

let getScene = () => SceneRoot.getScene()

let setScene = scene => SceneRoot.setScene(scene)

let create = () => {
  CreateGameObjectDoService.create()
}
