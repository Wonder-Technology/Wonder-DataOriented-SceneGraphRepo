let init = canvas => {
  Canvas.setCanvas(canvas)
}

let buildSceneGraphRepo = (): ISceneGraphRepoForJs.sceneGraphRepo => {
  init: init,
  getCanvas: () => Canvas.getCanvas()->OptionSt.getExn,
}
