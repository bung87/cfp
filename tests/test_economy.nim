
import unittest
import cfp

test "2000.rmb > 3000.dollar":
  check 2000.rmb > 3000.dollar


test "Chinese[BoxLunch] > AmericanMiddleClass[Food]":
  check Chinese[BoxLunch]() > AmericanMiddleClass[Food]()
