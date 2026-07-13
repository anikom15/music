\version "2.26.0"
\include "mm-common.ly"

\header {
  title = "EX-11 Rotated Ending"
  subtitle = "Recontextualized return form chart"
  tagline = ##f
}

\score {
  {
    s1
  }
  \layout {
    indent = 0\mm
    ragged-right = ##t
    ragged-last = ##t
  }
}

\markup {
  \override #'(baseline-skip . 3.2)
  \column {
    \line { \bold "Rotated ending" }
    \line { "D  E  B" }
    \line { "B  C  D" }
    \line { "D  A  B" }
    \line { "B  F  G" }
    \vspace #0.6
    \line { "G  E  B" }
    \line { "B  C  D" }
    \line { "D  A  B" }
    \line { "B  C  D" }
  }
}