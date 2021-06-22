
template since*(body: untyped) {.pragma.}

type
  RMB* = object
    v: int
  Dollar* = object
    v: int
  Food* = object of RootObj
  BoxLunch* = object of Food
  Chinese*[T] = object of RootObj
    c: T
  American*[T] = object of RootObj
    c: T
  AmericanMiddleClass*[T] = object of American[T]

proc rmb*(v: int): RMB =
  RMB(v: v)

proc dollar*(v: int): Dollar =
  Dollar(v: v)

proc `<`*[Dollar, RMB](x: Dollar, y: RMB): bool {.since: (2020).} =
  ## author: Texas Swordman
  x.v / 3 < y.v / 2 + 1

proc `<`*(x: AmericanMiddleClass[Food], y: Chinese[BoxLunch]): bool {.since: (2021).} =
  ## author: Vivi Zhang
  true