module API.Hocal.Syllable where
-- http://web.archive.org/web/20160822211027/http://semarch.linguistics.fas.nyu.edu/barker/Syllables/index.txt
data Syllable =
  Syl {onset :: Consonant, nucleus :: Vowel, coda :: Consonant}

data Consonant =
    P
  | B
  | T
  | D
  | F
  | V
  | Th
  | Dh
  | S
  | Z
  | Sh
  | Zh
  | Ch
  | Jh
  | K
  | Ng
  | G
  | M
  | N
  | L
  | R
  | W
  | Y
  | Hh

data Vowel =
    Aa
  | Ae
  | Ah
  | Ao
  | Aw
  | Ax
  | Ay
  | Ea
  | Eh
  | Er
  | Ey
  | Ia
  | Ih
  | Iy
  | Oh
  | Ow
  | Oy
  | Ua
  | Uh
  | Uw
