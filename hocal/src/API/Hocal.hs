module API.Hocal where

-- Music
import qualified API.Hocal.Pitch    as P
import API.Hocal.Pitch    (Pitch (..))
import qualified API.Hocal.Duration as D
import API.Hocal.Duration (Duration(..))
import qualified API.Hocal.Sample   as Smp
import API.Hocal.Sample   (Sample(..))
-- Diction
import qualified API.Hocal.Syllable as Syl
import API.Hocal.Syllable (Syllable (..))

-----------------------------------------
-- Monadic IO version of the (H)askell v(ocal) synthesis system



data Articulation
data Attack
data Sustain
data Release
data Decay
data LFO

data Voice =
  Voice { vbank         :: Map Syllable Sample
        , varticulation :: Articulation
        , vattack       :: Attack
        , vsustain      :: Sustain
        , vrelease      :: Release
        , vdecay        :: Decay
        , vlfo1         :: LFO
        , vlfo2         :: LFO
        }

class Vocal a where
  say  :: (MonadIO m) => a -> Syllable -> m ()
  sing :: (MonadIO m) => Voice -> Syllable -> Pitch -> Duration -> m ()

voiceSay :: (MonadIO m) => Voice -> Syllable -> m ()
voiceSay = undefined

voiceSing :: (MonadIO m) => Voice -> Syllable -> Pitch -> Duration -> m ()
voiceSing = undefined

instance Vocal Voice where
  say  = voiceSay
  sing = voiceSing
