open Wonder_jest

let _ = describe("Canvas", () => {
  open Expect
  open Expect.Operators
  open Sinon

  let sandbox = getSandboxDefaultVal()

  beforeEach(() => {
    sandbox := createSandbox()
    TestTool.init(~sandbox, ())
  })
  afterEach(() => restoreSandbox(refJsObjToSandbox(sandbox.contents)))

  describe("getCanvas", () =>
    test("test", () => {
      let canvas = 1->Obj.magic
      DirectorTool.init(~canvas, ())

      CanvasTool.getCanvas()->expect == canvas->Some
    })
  )
})
