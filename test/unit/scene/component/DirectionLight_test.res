open Wonder_jest

open DirectionLightTool

let _ = describe("DirectionLight", () => {
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
    test("get light's index", () => {
      let light = create()->ResultTool.getExnSuccessValue

      expect(light->getIndex) == 0
    })
  })

  describe("create", () => {
    test("create a new light", () => {
      let light = create()->ResultTool.getExnSuccessValue

      expect(light) == 0->DirectionLightEntity.create
    })

    describe("change po", () =>
      test("po->index + 1", () => {
        let _ = create()->ResultTool.getExnSuccessValue

        DirectionLightTool.getMaxIndex()->expect == 1
      })
    )

    describe("contract check", () =>
      test("should not exceed buffer's max count", () => {
        ConfigRepo.setDirectionLightCount(2)

        let light = create()->ResultTool.getExnSuccessValue
        let light = create()->ResultTool.getExnSuccessValue

        create()->ExpectTool.toFail("expect index: 2 <= maxIndex: 1, but actual not")
      })
    )
  })

  describe("getGameObject", () =>
    test("get light's gameObject", () => {
      let light = create()->ResultTool.getExnSuccessValue
      let gameObject1 = GameObjectTool.create()->ResultTool.getExnSuccessValue
      let gameObject2 = GameObjectTool.create()->ResultTool.getExnSuccessValue

      GameObjectTool.addDirectionLight(gameObject1, light)->ResultTool.getExnSuccessValueIgnore
      GameObjectTool.addDirectionLight(gameObject2, light)->ResultTool.getExnSuccessValueIgnore

      getGameObject(light)->WonderCommonlib.OptionSt.getExn->expect == gameObject2
    })
  )

  describe("getColor", () =>
    test("test default", () => {
      let light = create()->ResultTool.getExnSuccessValue

      getColor(light)->DirectionLightTool.truncateColor->expect == (1., 1., 1.)->Color3VO.create
    })
  )

  describe("setColor", () =>
    test("test set color", () => {
      let light = create()->ResultTool.getExnSuccessValue
      let color = (0.2, 0.3, 0.5)->Color3VO.create

      setColor(light, color)->ResultTool.getExnSuccessValueIgnore

      getColor(light)->DirectionLightTool.truncateColor->expect == color
    })
  )

  describe("getIntensity", () =>
    test("test default", () => {
      let light = create()->ResultTool.getExnSuccessValue

      getIntensity(light)->expect == 1.->IntensityVO.create
    })
  )

  describe("setIntensity", () =>
    test("test set intensity", () => {
      let light = create()->ResultTool.getExnSuccessValue
      let intensity = 2.->IntensityVO.create

      setIntensity(light, intensity)->ResultTool.getExnSuccessValueIgnore

      getIntensity(light)->expect == intensity
    })
  )

  describe("getDirection", () =>
    describe("fix bug", () => {
      let _prepare = () => {
        let (gameObject, light) = DirectionLightTool.createGameObject()

        let localEulerAngles = (45., 22., 60.)->EulerAnglesTool.createFromPrimitive

        TransformGameObjectTool.setLocalEulerAngles(gameObject, localEulerAngles)

        let direction = DirectionLightTool.getDirection(light)

        (direction, gameObject, light)
      }

      test("direction shouldn't affected by scale if scale is always postive", () => {
        let (direction, gameObject, light) = _prepare()

        TransformGameObjectTool.setLocalScale(gameObject, (0.45, 0.45, 0.45)->ScaleVO.create)

        DirectionLightTool.getDirection(light)->expect == direction
      })
      test(
        "direction should be affected by scale if scale change to negative from positive",
        () => {
          let (direction, gameObject, light) = _prepare()

          TransformGameObjectTool.setLocalScale(gameObject, (-0.45, 0.45, 0.45)->ScaleVO.create)

          DirectionLightTool.getDirection(light)->expect != direction
        },
      )
    })
  )
})
