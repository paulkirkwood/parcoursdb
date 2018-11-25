package parcoursdb

sealed trait Count
sealed trait Zero extends Count
sealed trait Once extends Count

sealed trait TBoolean {
  type If[T <: TBoolean, F <: TBoolean] <: TBoolean
}

sealed trait TTrue extends TBoolean {
  type If[T <: TBoolean, F <: TBoolean] = T
}

sealed trait TFalse extends TBoolean {
  type If[T <: TBoolean, F <: TBoolean] = F
}
