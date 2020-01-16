#!/usr/bin/env stack
{- stack runghc
  --install-ghc
  --resolver lts-14.21
  --package Chart
  --package Chart-cairo
  --package cairo
  --package gtk2hs-buildtools
  --package matrix
-}
module Main where

import Graphics.Rendering.Chart.Easy
import Graphics.Rendering.Chart.Backend.Cairo
import qualified Data.Matrix as Matrix

import Data.Foldable (for_)

main = mapM (uncurry $ toFile def) $
  [ ("problem_2-3-c.png", problem_23c)
  , ("problem_2-4-c.png", problem_24c)
  ]

---------------- Problem 2.3.c ----------------

problem_23c :: EC (Layout Int Double) ()
problem_23c = do
  layout_title .= "P(x_i = 1)"
  layout_x_axis . laxis_title .= "Vertex"
  layout_y_axis . laxis_title .= "Probability"
  layout_x_axis . laxis_generate
    .= scaledIntAxis defaultIntAxis {_la_nLabels = 10, _la_nTicks = 11} (0, 12)

  let xys = [(i, prob_line i) | i <- [1..lineTotal]]

  plot $ line "P(x_i = 1)" [xys]
  plot $ liftEC $ do
    area_spots_max_radius .= 20
    area_spots_values .= [(x, y, 0.05::Double) | (x, y) <- xys]

lineTotal :: Int
lineTotal = 11

-- prob i == P(x_i = 1) for L_{lineTotal}
prob_line :: Int -> Double
prob_line k =
  fromIntegral (zl (k-2) * zl (lineTotal - k - 1)) / fromIntegral (zl lineTotal)

zl :: Int -> Int
zl n
  | n <= 0 = 1
  | otherwise = fib $ n + 2

fib :: Int -> Int
fib n
  | n < 1     = 0
  | otherwise =
    Matrix.getElem 1 2 $ (Matrix.fromList 2 2 [1, 1, 1, 0])^n

---------------- Problem 2.3.c ----------------

problem_24c :: EC (Layout Int Double) ()
problem_24c = do
  layout_title .= "Probability x_phi = 1"
  layout_x_axis . laxis_title .= "Tree generations"
  layout_y_axis . laxis_title .= "Probability"

  setShapes $
    [ PointShapeCircle
    , PointShapePolygon 3 True
    , PointShapePolygon 4 False
    , PointShapeStar
    ]
  setColors $
    opaque <$> concatMap (replicate 2)
      [steelblue, darkgoldenrod, forestgreen, plum]

  for_ [1, 2, 3, 10] $ \k -> do

    let pts = [(i, prob_tree k i) | i <- [0..genTotal] ]
    plot $ do
      line ("k = " ++ show k) [ pts ]
    plot $ do
      points "" ( pts )

genTotal :: Int
genTotal = 50

prob_tree :: Int -> Int -> Double
prob_tree k l
  | l < 0     = error "p_l not defined for \\ell < 0"
  | l == 0    = 0.5
  | otherwise = reciprical $ (reciprical $ 1 - prob_tree k (l-1))^k + 1

reciprical :: Double -> Double
reciprical = (1/)

