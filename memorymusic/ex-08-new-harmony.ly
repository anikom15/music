\version "2.26.0"
\include "mm-common.ly"

\header {
  title = "EX-08 New Harmony"
  subtitle = "A floating contrast space"
  tagline = ##f
}

chordsExDream = \chordmode {
  \time 4/4
  e1:5.9 |
  b2:9.5- fis2:6.9 |
  e1:5.9 |
  b2:9.5- fis2:6.9 |
  e1:5.9 |
  e2:7.5-.9+ fis2:m6 |
  e1:5.9 |
  b2:9.5- fis2:6.9 |
}

voicingsExDream = \relative c' {
  \clef treble
  \time 4/4
  \key c \minor
  
  <gis b e fis>1 |
  <b c f a b>2 <fis gis ais cis dis fis>2 |
  <gis b e fis>1 |
  <b c f a b>2 <fis gis ais cis dis fis>2 |
  <gis b e fis>1 |
  <e bes' cis e>2 <a dis fis>2 |
  <gis b e fis>1 |
  <b c f a b>2 <fis gis ais cis dis fis>2 |
}

bassExDream = \relative c {
  \clef bass
  \time 4/4
  \key c \minor
  \repeat unfold 8 {
    r1 |
  }
}

drumsBaseExDream = \drummode {
  bd8. bd16 hc8 bd8 r16 bd8 bd16 hc8 bd8 |
  bd8. bd16 hc8 bd8 r16 bd8 bd16 hc8 bd8 |
  bd8. bd16 hc8 bd8 r16 bd8 bd16 hc8 bd8 |
  bd8. bd16 hc8 bd8 r16 bd8 bd16 hc8 bd8 |
  bd8. bd16 hc8 bd8 r16 bd8 bd16 hc8 bd8 |
  bd8. bd16 hc8 bd8 r16 bd8 bd16 hc8 bd8 |
  bd8. bd16 hc8 bd8 r16 bd8 bd16 hc8 bd8 |
  bd8. bd16 hc8 bd8 r16 bd8 bd16 hc8 bd8 |
}

drumsHatOverlayExDream = \drummode {
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  hh16 hh hh hh hho hh hh hh hh hh hh hh hho hh hh hh |
  hh16 hh hh hh hho hh hh hh hh hh hh hh hho hh hh hh |
}

\score {
  <<
    \new ChordNames { \chordsExDream }
    \new Staff \with {
      instrumentName = "Synth Strings"
      shortInstrumentName = "Str."
    } { \voicingsExDream }
    \new Staff \with {
      instrumentName = "Bass"
      shortInstrumentName = "Bs."
    } { \bassExDream }
    \new DrumStaff \with {
      instrumentName = "Drums"
      shortInstrumentName = "Dr."
    } {
      <<
        \new DrumVoice { \voiceOne \drumsHatOverlayExDream }
        \new DrumVoice { \voiceTwo \drumsBaseExDream }
      >>
    }
  >>
}