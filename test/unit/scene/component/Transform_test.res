open Wonder_jest

open TransformTool

open VODOConvertApService

let _ = describe("Transform", () => {
  open Expect
  open! Expect.Operators
  open Sinon

  let sandbox = getSandboxDefaultVal()

  beforeEach(() => {
    sandbox := createSandbox()
    TestTool.init(~sandbox, ())
  })
  afterEach(() => restoreSandbox(refJsObjToSandbox(sandbox.contents)))

  describe("create", () => {
    test("create a new transform", () => {
      let transform = create()->ResultTool.getExnSuccessValue

      expect(transform) == 0->TransformEntity.create
    })

    describe("change po", () =>
      test("po->index + 1", () => {
        let _ = create()->ResultTool.getExnSuccessValue

        TransformTool.getMaxIndex()->expect == 1
      })
    )

    test("mark new transform dirty", () => {
      let transform = create()->ResultTool.getExnSuccessValue

      TransformTool.isDirty(transform)->expect == true
    })
  })
})
