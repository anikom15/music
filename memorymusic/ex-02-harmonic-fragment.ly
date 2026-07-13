\version "2.26.0"
\include "mm-common.ly"

\header {
  title = "EX-02 Harmonic Fragment"
  subtitle = "Minimal identity object"
  tagline = ##f
}

chordsExOpening = \chordmode {
  \time 4/4
  ees4:m6/c s8 b8:maj7.11+ s2
}

voicingsExOpening = \relative c' {
  \clef treble
  \time 4/4
  <c ees ges bes>4 r8 <b ees f bes>8~ <b ees f bes>4 <b ees f bes>4 |
}

\score {
  <<
    \new ChordNames { \chordsExOpening }
    \new Staff \with {
      instrumentName = "Keys"
      shortInstrumentName = "Ky."
    } { \voicingsExOpening }
  >>
}
