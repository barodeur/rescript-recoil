type mutableSnapshot = {
  set: 'value 'mode. (Recoil__Value.t<'value, 'mode>, 'value => 'value) => unit,
  reset: 'value 'mode. Recoil__Value.t<'value, 'mode> => unit,
}

type rec snapshot = {
  getPromise: 'value 'mode. Recoil__Value.t<'value, 'mode> => Js.Promise.t<'value>,
  getLoadable: 'value 'mode. Recoil__Value.t<'value, 'mode> => Recoil__Loadable.t<'value>,
  map: (mutableSnapshot => unit) => snapshot,
  asyncMap: (mutableSnapshot => Js.Promise.t<unit>) => Js.Promise.t<snapshot>,
}
