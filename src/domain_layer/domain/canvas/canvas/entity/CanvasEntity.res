type t = CanvasPOType.canvas

let getCanvas = () => {
  CanvasRepo.getCanvas()
}

let setCanvas = canvas => {
  CanvasRepo.setCanvas(canvas)
}
