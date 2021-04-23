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
      let canvas: ISceneGraphRepoForJs.canvas = {
        width: 2,
        height: 4,
        getContext: createEmptyStub(refJsObjToSandbox(sandbox.contents)),
      }
      DirectorTool.init(~canvas, ())

      CanvasTool.getCanvas()->OptionSt.map(VODOConvertApService.canvasDOToCanvasVO)->expect ==
        canvas->Some
    })
  )
})
