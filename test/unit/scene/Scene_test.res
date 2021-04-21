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
      let scene1 = SceneTool.create()->ResultTool.getExnSuccessValue

      let scene2 = SceneTool.create()->ResultTool.getExnSuccessValue

      SceneTool.setScene(scene2)

      SceneTool.getScene()->expect == scene2->Some
    })
  )
})
