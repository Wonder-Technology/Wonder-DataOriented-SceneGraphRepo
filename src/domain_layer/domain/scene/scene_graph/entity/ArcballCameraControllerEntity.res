type t = ArcballCameraController(ArcballCameraControllerPOType.arcballCameraController)

let create = index => ArcballCameraController(index)

let value = arcballCameraController =>
  switch arcballCameraController {
  | ArcballCameraController(index) => index
  }
