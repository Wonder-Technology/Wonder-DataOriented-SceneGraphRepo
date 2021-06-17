open Wonder_jest

open PBRMaterialTool

let _ = describe("PBRMaterial", () => {
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
    test("get material's index", () => {
      let material = create()->ResultTool.getExnSuccessValue

      expect(material->getIndex) == 0
    })
  })

  describe("create", () => {
    test("create a new material", () => {
      let material = create()->ResultTool.getExnSuccessValue

      expect(material) == 0->PBRMaterialEntity.create
    })

    describe("change po", () =>
      test("po->index + 1", () => {
        let _ = create()->ResultTool.getExnSuccessValue

        PBRMaterialTool.getMaxIndex()->expect == 1
      })
    )
  })

  describe("getGameObjects", () =>
    test("get material's gameObjects", () => {
      let material = create()->ResultTool.getExnSuccessValue
      let gameObject1 = GameObjectTool.create()->ResultTool.getExnSuccessValue
      let gameObject2 = GameObjectTool.create()->ResultTool.getExnSuccessValue

      GameObjectTool.addPBRMaterial(gameObject1, material)->ResultTool.getExnSuccessValueIgnore
      GameObjectTool.addPBRMaterial(gameObject2, material)->ResultTool.getExnSuccessValueIgnore

      getGameObjects(material)->OptionSt.getExn->expect == list{gameObject2, gameObject1}
    })
  )

  describe("operate data", () => {
    test("get the data from array buffer may not equal to the value which is setted", () => {
      let material = create()->ResultTool.getExnSuccessValue
      let color = (0.2, 0.3, 0.5)->PBRMaterialTool.createDiffuseColor

      setDiffuseColor(material, color)->ResultTool.getExnSuccessValueIgnore

      getDiffuseColor(material)->expect ==
        (0.20000000298023224, 0.30000001192092896, 0.5)->PBRMaterialTool.createDiffuseColor
    })

    describe("getDiffuseColor", () =>
      test("test default", () => {
        let material = create()->ResultTool.getExnSuccessValue

        getDiffuseColor(material)->expect == (1., 1., 1.)->PBRMaterialTool.createDiffuseColor
      })
    )

    describe("setDiffuseColor", () =>
      test("set color", () => {
        let material = create()->ResultTool.getExnSuccessValue
        let color = (0.2, 0.3, 0.5)->PBRMaterialTool.createDiffuseColor

        setDiffuseColor(material, color)->ResultTool.getExnSuccessValueIgnore

        getDiffuseColor(material)->PBRMaterialTool.truncateDiffuseColor->expect == color
      })
    )

    describe("getSpecular", () =>
      test("test default", () => {
        let material = create()->ResultTool.getExnSuccessValue

        getSpecular(material)->expect == 1.0->SpecularVO.create
      })
    )

    describe("setSpecular", () =>
      test("set specular", () => {
        let material = create()->ResultTool.getExnSuccessValue
        let specular = 0.5->SpecularVO.create

        setSpecular(material, specular)->ResultTool.getExnSuccessValueIgnore

        getSpecular(material)->expect == specular
      })
    )

    describe("getSpecularColor", () =>
      test("test default", () => {
        let material = create()->ResultTool.getExnSuccessValue

        getSpecularColor(material)->expect == (1., 1., 1.)->PBRMaterialTool.createSpecularColor
      })
    )

    describe("setSpecularColor", () =>
      test("set color", () => {
        let material = create()->ResultTool.getExnSuccessValue
        let color = (0.2, 0.3, 0.5)->PBRMaterialTool.createSpecularColor

        setSpecularColor(material, color)->ResultTool.getExnSuccessValueIgnore

        getSpecularColor(material)->PBRMaterialTool.truncateSpecularColor->expect == color
      })
    )

    describe("getRoughness", () =>
      test("test default", () => {
        let material = create()->ResultTool.getExnSuccessValue

        getRoughness(material)->expect == 1.0->RoughnessVO.create
      })
    )

    describe("setRoughness", () =>
      test("set roughness", () => {
        let material = create()->ResultTool.getExnSuccessValue
        let roughness = 0.5->RoughnessVO.create

        setRoughness(material, roughness)->ResultTool.getExnSuccessValueIgnore

        getRoughness(material)->expect == roughness
      })
    )

    describe("getMetalness", () =>
      test("test default", () => {
        let material = create()->ResultTool.getExnSuccessValue

        getMetalness(material)->expect == 1.0->MetalnessVO.create
      })
    )

    describe("setMetalness", () =>
      test("set metalness", () => {
        let material = create()->ResultTool.getExnSuccessValue
        let metalness = 0.5->MetalnessVO.create

        setMetalness(material, metalness)->ResultTool.getExnSuccessValueIgnore

        getMetalness(material)->expect == metalness
      })
    )

    describe("getTransmission", () =>
      test("test default", () => {
        let material = create()->ResultTool.getExnSuccessValue

        getTransmission(material)->expect == 0.0->TransmissionVO.create
      })
    )

    describe("setTransmission", () =>
      test("set transmission", () => {
        let material = create()->ResultTool.getExnSuccessValue
        let transmission = 0.5->TransmissionVO.create

        setTransmission(material, transmission)->ResultTool.getExnSuccessValueIgnore

        getTransmission(material)->expect == transmission
      })
    )

    describe("getIOR", () =>
      test("test default", () => {
        let material = create()->ResultTool.getExnSuccessValue

        getIOR(material)->expect == 1.5->IORVO.create
      })
    )

    describe("setIOR", () =>
      test("set ior", () => {
        let material = create()->ResultTool.getExnSuccessValue
        let ior = 0.5->IORVO.create

        setIOR(material, ior)->ResultTool.getExnSuccessValueIgnore

        getIOR(material)->expect == ior
      })
    )

    describe("getDiffuseMap", () =>
      test("test default", () => {
        let material = create()->ResultTool.getExnSuccessValue

        getDiffuseMap(material)->expect == None
      })
    )

    describe("set map", () => {
      let _buildMap = () => "map"->Obj.magic

      describe("setDiffuseMap", () =>
        test("set map", () => {
          let material = create()->ResultTool.getExnSuccessValue
          let map = _buildMap()

          setDiffuseMap(material, map)

          getDiffuseMap(material)->OptionSt.getExn->expect == map
        })
      )

      describe("setChannelRoughnessMetallicMap", () =>
        test("set map", () => {
          let material = create()->ResultTool.getExnSuccessValue
          let map = _buildMap()

          setChannelRoughnessMetallicMap(material, map)

          getChannelRoughnessMetallicMap(material)->OptionSt.getExn->expect == map
        })
      )

      describe("setEmissionMap", () =>
        test("set map", () => {
          let material = create()->ResultTool.getExnSuccessValue
          let map = _buildMap()

          setEmissionMap(material, map)

          getEmissionMap(material)->OptionSt.getExn->expect == map
        })
      )

      describe("setNormalMap", () =>
        test("set map", () => {
          let material = create()->ResultTool.getExnSuccessValue
          let map = _buildMap()

          setNormalMap(material, map)

          getNormalMap(material)->OptionSt.getExn->expect == map
        })
      )

      describe("setTransmissionMap", () =>
        test("set map", () => {
          let material = create()->ResultTool.getExnSuccessValue
          let map = _buildMap()

          setTransmissionMap(material, map)

          getTransmissionMap(material)->OptionSt.getExn->expect == map
        })
      )

      describe("setSpecularMap", () =>
        test("set map", () => {
          let material = create()->ResultTool.getExnSuccessValue
          let map = _buildMap()

          setSpecularMap(material, map)

          getSpecularMap(material)->OptionSt.getExn->expect == map
        })
      )
    })
  })
})
