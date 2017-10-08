module API.Hocal.Duration where

import Data.Ratio

data Nanoseconds
data Milliseconds
data Seconds
data Minutes

data Time a = Time Int

class Temporal a where
  toNano :: Time a -> Time Nanoseconds

instance Temporal Nanoseconds where
  toNano = id

instance Temporal Milliseconds where
  toNano (Time t) = Time $ 1e3 * t

instance Temporal Seconds where
  toNano (Time t) = Time $ 1e6 * t

instance Temporal Minutes where
  toNano (Time t) = Time $ 60 * 1e6 * t

data Duration = forall a . (Temporal a) => Time a
              | Beats {bmp :: Int, beats :: Rational}
