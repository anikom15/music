\version "2.26.0"
\include "mm-common.ly"

\header {
  title = "EX-10 Original Form"
  subtitle = "Primary place form chart"
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
    \line { \bold "Original form" }
    \line { "A  B" }
    \line { "C  D" }
    \line { "E  B" }
    \line { "C  D" }
    \vspace #0.6
    \line { "A  B" }
    \line { "F  G" }
    \line { "E  B" }
    \line { "C  D" }
  }
}