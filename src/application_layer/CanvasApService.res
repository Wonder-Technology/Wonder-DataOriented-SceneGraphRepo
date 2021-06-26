open VODOConvertApService

let getCanvas = () => {
  CanvasEntity.getCanvas()->WonderCommonlib.OptionSt.map(canvasDOToCanvasVO)
}

let setCanvas = canvas => {
  CanvasEntity.setCanvas(canvas->canvasVOToCanvasDO)
}
