\version "2.26.0"
\include "mm-common.ly"

\header {
  title = "EX-01 Rhythm as Context"
  subtitle = "4-bar repeating drum pattern"
  tagline = ##f
}

\score {
  <<
    \new DrumStaff \with {
      instrumentName = "Drums"
      shortInstrumentName = "Dr."
    } {
      \time 4/4
      \tempo 4 = 94
      \rhythmPattern
    }
  >>
}
