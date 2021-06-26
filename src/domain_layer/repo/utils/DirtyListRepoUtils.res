let create = () => list{}

let addToDirtyList = (dirtyList, index) => dirtyList->WonderCommonlib.ListSt.push(index)

let removeFromDirtyList = (dirtyList, index) => dirtyList->WonderCommonlib.ListSt.remove(index)
