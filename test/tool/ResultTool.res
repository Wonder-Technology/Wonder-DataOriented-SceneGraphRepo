let getExnSuccessValue = result => result->WonderCommonlib.Result.handleFail(WonderCommonlib.Exception.throwErr)

let getExnSuccessValueIgnore = result => result->getExnSuccessValue->ignore

let buildEmptyHandleFailFunc = () => WonderCommonlib.Exception.throwErr
