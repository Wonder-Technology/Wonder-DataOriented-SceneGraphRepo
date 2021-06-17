open Wonder_jest

open ArcballCameraControllerTool

let _ = describe("ArcballCameraController", () => {
  open Expect
  open! Expect.Operators
  open Sinon

  let sandbox = getSandboxDefaultVal()

  beforeEach(() => {
    sandbox := createSandbox()
    TestTool.init(~sandbox, ())
  })
  afterEach(() => restoreSandbox(refJsObjToSandbox(sandbox.contents)))

  describe("getIndex", () => {
    test("get cameraController's index", () => {
      let cameraController = create()

      expect(cameraController->getIndex) == 0
    })
  })

  describe("create", () => {
    test("create a new cameraController", () => {
      let cameraController = create()

      expect(cameraController) == 0->ArcballCameraControllerEntity.create
    })

    describe("change po", () =>
      test("po->index + 1", () => {
        let _ = create()

        ArcballCameraControllerTool.getMaxIndex()->expect == 1
      })
    )
    test("add to dirty list", () => {
      let cameraController = create()

      ArcballCameraControllerTool.getUniqueDirtyList()->expect == list{cameraController}
    })
    test("set default data", () => {
      let cameraController = ArcballCameraControllerApService.create()

      (
        ArcballCameraControllerApService.getDistance(cameraController)->OptionSt.getExn,
        ArcballCameraControllerApService.getMinDistance(cameraController)->OptionSt.getExn,
        ArcballCameraControllerApService.getPhi(cameraController)->OptionSt.getExn,
        ArcballCameraControllerApService.getTheta(cameraController)->OptionSt.getExn,
        ArcballCameraControllerApService.getThetaMargin(cameraController)->OptionSt.getExn,
        ArcballCameraControllerApService.getTarget(cameraController)->OptionSt.getExn,
        ArcballCameraControllerApService.getMoveSpeedX(cameraController)->OptionSt.getExn,
        ArcballCameraControllerApService.getMoveSpeedY(cameraController)->OptionSt.getExn,
        ArcballCameraControllerApService.getRotateSpeed(cameraController)->OptionSt.getExn,
        ArcballCameraControllerApService.getWheelSpeed(cameraController)->OptionSt.getExn,
      )->expect ==
        (10., 0.05, Js.Math._PI /. 2., Js.Math._PI /. 2., 0.05, (0., 0., 0.), 1., 1., 1., 1.)
    })
  })

  describe("getGameObject", () =>
    test("get cameraController's gameObject", () => {
      let cameraController = create()
      let gameObject1 = GameObjectTool.create()->ResultTool.getExnSuccessValue
      let gameObject2 = GameObjectTool.create()->ResultTool.getExnSuccessValue

      GameObjectTool.addArcballCameraController(
        gameObject1,
        cameraController,
      )->ResultTool.getExnSuccessValueIgnore
      GameObjectTool.addArcballCameraController(
        gameObject2,
        cameraController,
      )->ResultTool.getExnSuccessValueIgnore

      getGameObject(cameraController)->OptionSt.getExn->expect == gameObject2
    })
  )

  describe("getDistance", () => {
    test("test get distance", () => {
      let cameraController = create()
      let distance = 20.->DistanceVO.create

      setDistance(cameraController, distance)->ResultTool.getExnSuccessValueIgnore

      getDistance(cameraController)->OptionSt.getExn->expect == DistanceVO.create(20.)
    })
    test("constrain distance", () => {
      let cameraController = create()

      let minDistance = 2.->DistanceVO.create
      setMinDistance(cameraController, minDistance)
      let distance = 1.->DistanceVO.create
      setDistance(cameraController, distance)->ResultTool.getExnSuccessValueIgnore

      getDistance(cameraController)->OptionSt.getExn->expect == minDistance
    })
  })

  describe("getMinDistance", () => {
    test("test", () => {
      let cameraController = create()
      let minDistance = 20.->DistanceVO.create

      setMinDistance(cameraController, minDistance)

      getMinDistance(cameraController)->OptionSt.getExn->expect == minDistance
    })
  })

  describe("getWheelSpeed", () => {
    test("test", () => {
      let cameraController = create()
      let speed = 20.->SpeedVO.create

      setWheelSpeed(cameraController, speed)

      getWheelSpeed(cameraController)->OptionSt.getExn->expect == speed
    })
  })

  describe("getMoveSpeedX", () => {
    test("test", () => {
      let cameraController = create()
      let speed = 20.->SpeedVO.create

      setMoveSpeedX(cameraController, speed)

      getMoveSpeedX(cameraController)->OptionSt.getExn->expect == speed
    })
  })

  describe("getMoveSpeedY", () => {
    test("test", () => {
      let cameraController = create()
      let speed = 20.->SpeedVO.create

      setMoveSpeedY(cameraController, speed)

      getMoveSpeedY(cameraController)->OptionSt.getExn->expect == speed
    })
  })

  describe("getRotateSpeed", () => {
    test("test", () => {
      let cameraController = create()
      let speed = 20.->SpeedVO.create

      setRotateSpeed(cameraController, speed)

      getRotateSpeed(cameraController)->OptionSt.getExn->expect == speed
    })
  })

  describe("getPhi", () => {
    test("test", () => {
      let cameraController = create()
      let phi = 20.->PhiVO.create

      setPhi(cameraController, phi)

      getPhi(cameraController)->OptionSt.getExn->expect == phi
    })
  })

  describe("getTheta", () => {
    test("test", () => {
      let cameraController = create()
      let theta = 0.5->ThetaVO.create

      setTheta(cameraController, theta)->ResultTool.getExnSuccessValueIgnore

      getTheta(cameraController)->OptionSt.getExn->expect == theta
    })
    test("constrain theta", () => {
      let cameraController = create()
      let theta = 3.2->ThetaVO.create
      let thetaMargin = 1.

      setThetaMargin(cameraController, thetaMargin)->ResultTool.getExnSuccessValueIgnore
      setTheta(cameraController, theta)->ResultTool.getExnSuccessValueIgnore

      getTheta(cameraController)->OptionSt.getExn->expect ==
        (Js.Math._PI -. thetaMargin)->ThetaVO.create
    })
  })

  describe("getThetaMargin", () => {
    test("test", () => {
      let cameraController = create()
      let thetaMargin = 1.

      setThetaMargin(cameraController, thetaMargin)->ResultTool.getExnSuccessValueIgnore

      getThetaMargin(cameraController)->OptionSt.getExn->expect == thetaMargin
    })
    test("constrain theta", () => {
      let cameraController = create()
      let theta = 3.2->ThetaVO.create
      let thetaMargin = 1.

      setTheta(cameraController, theta)->ResultTool.getExnSuccessValueIgnore
      setThetaMargin(cameraController, thetaMargin)->ResultTool.getExnSuccessValueIgnore

      getTheta(cameraController)->OptionSt.getExn->expect ==
        (Js.Math._PI -. thetaMargin)->ThetaVO.create
    })
  })

  describe("getTarget", () => {
    test("test", () => {
      let cameraController = create()
      let target = (1., 2., 5.)->TargetVO.create

      setTarget(cameraController, target)

      getTarget(cameraController)->OptionSt.getExn->expect == target
    })
  })
})
