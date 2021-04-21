let init = canvas => {
  CanvasApService.setCanvas(canvas)
}

let buildSceneGraphRepo = (): ISceneGraphRepoForJs.sceneGraphRepo => {
  init: init,
  getCanvas: () => CanvasApService.getCanvas()->OptionSt.getExn,
  sceneRepo: {
    create: SceneApService.create,
    add: SceneApService.add,
    getScene: unit => SceneApService.getScene()->OptionSt.getExn,
    setScene: SceneApService.setScene,
  },
}
