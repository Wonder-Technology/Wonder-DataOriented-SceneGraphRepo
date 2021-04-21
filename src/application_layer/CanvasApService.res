external canvasDOToCanvasVO: CanvasEntity.t => ISceneGraphRepoForJs.canvas = "%identity"

external canvasVOToCanvasDO: ISceneGraphRepoForJs.canvas => CanvasEntity.t = "%identity"

let getCanvas = () => {
  CanvasEntity.getCanvas()->OptionSt.map(canvasDOToCanvasVO)
}

let setCanvas = canvas => {
  CanvasRepo.setCanvas(canvas->canvasVOToCanvasDO)
}
