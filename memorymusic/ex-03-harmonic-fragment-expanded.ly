\version "2.26.0"
\include "mm-common.ly"

\header {
  title = "EX-03 Harmonic Fragment (Expanded)"
  subtitle = "Color succession without cadence-driven resolution"
  tagline = ##f
}

voicingsExFull = \relative c' {
  \clef treble
  \time 4/4
  \tempo 4 = 94
  \key c \minor

  <c ees ges bes>4 r8 <b es f bes>8~ <b es f bes>4 <b es f bes>4 |
  <b d e aes>4 r8 <c ees g bes>8~ <c ees g bes>4. r8 |
  <c ees g bes>8 <c ees g bes>8 r8 <b ees fis bes>8~ <b ees fis bes>4 <b ees fis bes>4 |
  <b d e aes>4 r8 <c ees g bes>8~ <c ees g bes>4. r8 |
  <c ees ges bes>4 r8 <b es f bes>8~ <b es f bes>4 <b es f bes>4 |
  <b e gis dis'>4 r8 <bes ees aes bes>8~ <bes ees aes bes>4. r8 |
  <c ees g bes>8 <c ees g bes>8 r8 <b ees fis bes>8~ <b ees fis bes>4 <b ees fis bes>4 |
  <b d e aes>4 r8 <c ees g bes>8~ <c ees g bes>4. r8 |
}

\score {
  <<
    \new ChordNames { \chordsExFull }
    \new Staff \with {
      instrumentName = "Keys"
      shortInstrumentName = "Ky."
    } { \voicingsExFull }
    \new DrumStaff \with {
      instrumentName = "Drums"
      shortInstrumentName = "Dr."
    } { \rhythmPattern \rhythmPattern }
  >>
}
