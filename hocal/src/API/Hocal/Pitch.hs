module API.Hocal.Pitch where

data Pitch = Midi Int
           | Hz Float
           | Named Letter Modifier Int

data Letter = A | B | C | D | E | F | G
data Modifier = DoubleSharp | Sharp | Natural | Flat | DoubleFlat
