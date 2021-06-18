open Wonder_jest

let _ = describe("DirectorForJs", () => {
  open Expect
  open! Expect.Operators
  open Sinon

  let sandbox = getSandboxDefaultVal()

  beforeEach(() => {
    sandbox := createSandbox()
    TestTool.preparePO()
  })
  afterEach(() => restoreSandbox(refJsObjToSandbox(sandbox.contents)))

  describe("initForRenderWorker", () => {
    test("set is debug to config", () => {
      DirectorForJs.initForRenderWorker(
        true,
        SharedArrayBufferDataTool.createSharedArrayBufferData()->VODOConvertApService.sharedArrayBufferDataDOToSharedArrayBufferDataVO,
      )

      ConfigTool.getIsDebug()->expect == true
    })

    describe("create all component po with shared array buffer data", () => {
      test("test transform shared array buffer data", () => {
        let localScales = Js.TypedArray2.Float32Array.make([1., 2., 3.])

        DirectorForJs.initForRenderWorker(
          true,
          SharedArrayBufferDataTool.createSharedArrayBufferData(
            ~localScales,
            (),
          )->VODOConvertApService.sharedArrayBufferDataDOToSharedArrayBufferDataVO,
        )

        SharedArrayBufferDataTool.getTransformSharedArrayBufferData().localScales->expect ==
          localScales
      })
    })
  })
})
