open VODOConvertApService

let getCanvas = () => {
  CanvasEntity.getCanvas()->OptionSt.map(canvasDOToCanvasVO)
}

let setCanvas = canvas => {
  CanvasEntity.setCanvas(canvas->canvasVOToCanvasDO)
}
