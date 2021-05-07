let bigThan = (num, below) => num < below ? below : num

let clamp = (num, below, up) => {
  Contract.requireCheck(() => {
    open Contract
    open Operators
    test(Log.buildAssertMessage(~expect={j`below <= up`}, ~actual={j`not`}), () =>
      assertLte(Float, below, up)
    )
  }, ConfigRepo.getIsDebug())->Result.mapSuccess(() => {
    num < below ? below : num > up ? up : num
  })
}
