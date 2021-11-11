type callbackParam = {
  snapshot: Recoil__Snapshot.snapshot,
  gotoSnapshot: Recoil__Snapshot.snapshot => unit,
  set: 'value. (Recoil__Value.readWrite<'value>, 'value => 'value) => unit,
  reset: 'value. Recoil__Value.readWrite<'value> => unit,
}

type callback<'additionalArg, 'returnValue> = 'additionalArg => 'returnValue
