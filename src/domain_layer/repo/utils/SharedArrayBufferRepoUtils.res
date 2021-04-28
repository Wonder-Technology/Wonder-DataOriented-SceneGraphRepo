let _isSupportSharedArrayBuffer = %bs.raw(`
    function(param){
        return typeof SharedArrayBuffer !== "undefined"
    }
    `)

@bs.new
external _newSharedArrayBuffer: int => SharedArrayBufferPOType.sharedArrayBuffer =
  "SharedArrayBuffer"

let newSharedArrayBuffer = totalByteLength => Contract.requireCheck(() => {
    open Contract
    open Operators
    test(Log.buildAssertMessage(~expect=j`support sharedArrayBuffer`, ~actual=j`not`), () =>
      _isSupportSharedArrayBuffer()->assertTrue
    )
  }, ConfigRepo.getIsDebug())->Result.mapSuccess(() => _newSharedArrayBuffer(totalByteLength))
