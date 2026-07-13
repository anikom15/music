\version "2.26.0"

#(set-default-paper-size (or (ly:get-option 'paper-size) "a4"))
#(set-global-staff-size 17)

\paper {
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  print-page-number = ##f
  ragged-last = ##t
  ragged-right = ##f
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    \override BarNumber.break-visibility = ##(#f #f #f)
  }
  \context {
    \Staff
    \numericTimeSignature
    \accidentalStyle modern
  }
  \context {
    \DrumStaff
    \numericTimeSignature
  }
  \context {
    \ChordNames
    chordChanges = ##f
    \override ChordName.font-size = #1
  }
}

rhythmPattern = \drummode {
  \repeat unfold 3 {
    bd8. bd16 sn8 bd8 r16 bd8 bd16 sn8 bd8 |
  }
  bd8. bd16 sn8 bd8 r16 bd8 bd16 sn16 sn8 sn16 |
}

chordsExFull = \chordmode {
  ees4:m6/c s8 b8:maj7.11+ s2 |
  e4:7 s8 ees8:m7 s2 |
  c4:m7 s8 b8:maj7 s2 |
  e4:7 s8 ees8:m7 s2 |
  ees4:m6/c s8 b8:maj7.11+ s2 |
  e4:maj7 s8 ees8:sus4 s2 |
  c4:m7 s8 b8:maj7 s2 |
  e4:7 s8 ees8:m7 s2 |
}