open Wonder_jest

let _ = describe("Scene", () => {
  open Expect
  open Expect.Operators
  open Sinon

  let sandbox = getSandboxDefaultVal()

  beforeEach(() => {
    sandbox := createSandbox()
    TestTool.init(~sandbox, ())
  })
  afterEach(() => restoreSandbox(refJsObjToSandbox(sandbox.contents)))

  describe("setScene", () =>
    test("test", () => {
      let scene1 = SceneTool.getSceneRepo().create()
      let scene2 = SceneTool.getSceneRepo().create()

      SceneTool.getSceneRepo().setScene(scene2)

      SceneTool.getSceneRepo().getScene()->expect == scene2
    })
  )
})
