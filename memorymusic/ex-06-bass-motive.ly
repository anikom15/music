\version "2.26.0"
\include "mm-common.ly"

\header {
  title = "EX-06 Bass Motive"
  subtitle = "A dynamic bass figure with recurring landmarks"
  tagline = ##f
}

bassExStart = \relative c {
  \clef bass
  \time 4/4
  \key c \minor
  ees4 bes8 g8 ~ g8 as8 bes8. ~ bes32. d64 |
  ees8 bes8 as8 ees8 ees8 bes'8 ees,8 bes'8 |
  g4 bes8 ees8 ~ ees8 bes8 as8 g8 |
  bes4. ees,8 ees8 ees8 ees8 bes'16. ~ bes64 d64 |
  ees4 bes8 as8 ~ as8 g8 as8 bes16. ~ bes64 d64 |
  ees8 bes8 as8 ees'8 bes8 ees,8 ees8 ees8 |
  ees'8 bes8 as8 bes8 ~ bes8 ces8 ees8 bes8 |
  ees4 bes8 ees,8 ~ ees4. r8 |
}

\score {
  <<
    \new ChordNames { \chordsExFull }
    \new Staff \with {
      instrumentName = "Bass"
      shortInstrumentName = "Bs."
    } { \bassExStart }
  >>
}
