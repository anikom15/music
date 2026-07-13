\version "2.26.0"
% This work is licensed under CC BY-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0/

#(set-default-paper-size (or (ly:get-option 'paper-size) "a4"))
#(set-global-staff-size 18)

\include "articulate.ly"

\header {
  title = "Tiro o chapéu"
  subtitle = "Clavinet and Bass"
  copyright = \markup \column {
    \line { "Tiro o chapéu © 2026 by J. Pereira is licensed under CC BY-SA 4.0." }
    \line { "To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0/" }
  }
  composer = "J. Pereira"
  tagline = ##f
  "id: software" = "MuseScore Studio 4.7.3"
  "id: encoding-date" = "2026-07-12"
}
\paper {
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  print-page-number = ##f
  ragged-last = ##f
  system-system-spacing.basic-distance = #16
  score-system-spacing.basic-distance = #18
}
\layout {
  \context {
    \Staff
    \consists Merge_rests_engraver
    printKeyCancellation = ##f
  }
  \context {
    \ChordNames
    chordChanges = ##f
    \override ChordName.font-size = #1
  }
  \context {
    \Score
    doubleRepeatBarType = ":|.|:"
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}
ClavinetUpper = \relative c' {
  \clef "treble" \numericTimeSignature \time 4/4 \key es \major \tempo 4 = 108
  \accidentalStyle modern-cautionary
  c4^\markup \italic "C Dorian" es16 g8 -. f16 ~ f4
  r16 <d f>8. -. | % 1
  es8 d bes16 g8 c16 ~ c4 r16 <a c>8. -. | % 2
  c4 es16 g8 -. f16 ~ f4 r16 <d f>8. -. | % 3
  es8 -. d -. bes -. bes16 c ~ c4 r16 <bes c>8. -.
  \repeat volta 2 {
    <c es g>8 -. <c es g> -. r16 <c es g>8 -. <c es g>16 r
    <c es g>8 -. <c es g>16 r <c es g>8 -. <c es g>16 | % 5
    <c d f>8 -. <c d f> -. r16 <d f>8 -. <c es>16 r <c es>8 -.
    <c es>16 r <d f>8 -. <c es f>16 | % 6
    <c es g>8 -. <c es g> -. r16 <c es g>8 -. <c es g>16 r
    <c es g>8 -. <c es g>16 r <c es g>8 -. <c es g>16 | % 7
    <c es as>8 -. <c es as> -. r16 <c f as>8 -. <des es g>16 r
    <des es g>8 -. <des es f>16 r <c es>8 -. <c d>16
  }
  \repeat volta 2 {
    g'8 -. g -. r16 g8 -. g16 r g8 -. g16 r g8 -. g16 | % 9
    \barNumberCheck #10 f8 -. f -. r16 f8 -. es16 r es8 -. es16 r es8 -.
    f16 | % 10
    g8 -. g -. r16 g8 -. g16 r g8 -. g16 r g8 -. g16
    f8 -. f r es -. es8. -. f16 r f8 -. fis16 | % 11
  }
  <a, c>4^\markup \italic "C Dorian" -. es'16 g8 -. f16 ~ f4 r16 <d f>8. -. | % 13
  <as es'>8 -. d -. bes16 g8 -. c16 ~ c4 r16 <a c>8. -. | % 14
  <a c>4 -. es'16 g8 -. f16 ~ f4 r16 <d f>8. -. | % 15
  <as es'>8 -. d -. bes -. bes16 c ~ c4 r16 <bes c>8.
  -. \bar "|."
}

ChordSymbols = \chordmode {
  s4 s16 s8 s16 s4 s16 s8. | % 1
  s8 s s16 s8 s16 s4 s16 s8. | % 2
  s4 s16 s8 s16 s4 s16 s8. | % 3
  s8 s s s16 s s4 s16 s8. \repeat volta 2 {
    a8:m7.5- s s16 s8 s16 s s8 s16 s s8 s16 | % 5
    as8:maj7.11+ s s16 f8:sus4 s16 s g8:sus4 s g8:7/d s16 | % 6
    a8:m7.5- s s16 s8 s16 s s8 s16 s s8 s16 | % 7
    as8 s s16 bes8:sus4 s8 g:m7.5- s8 d8:sus4.7 s16
  }
  \repeat volta 2 {
    s8 s s16 s8 s16 s s8 s16 s s8 s16 | % 9
    \barNumberCheck #10 s8 s s16 s8 s16 s s8 s16 s s8 s16 | % 10
    s8 s s16 s8 s16 s s8 s16 s s8 s16 | % 11
    s8 s s s s8. s16 s s8 s16
  }
  s4 s16 s8 s16 s4 s16 s8. | % 13
  s8 s s16 s8 s16 s4 s16 s8. | % 14
  s4 s16 s8 s16 s4 s16 s8. | % 15
  s8 s s s16 s s4 s16 s8. \bar "|."
}

ClavinetLowerLead = \relative a {
  \clef "bass" \numericTimeSignature \time 4/4 \key es \major \oneVoice a8 -.
  \accidentalStyle modern-cautionary
  a8 -. r16 a8 -. a16 r a8 -. a16 r a8 -. a16 | % 1
  as8 -. as -. r8. g8 -. g -. g16 r g8 -. g16 | % 2
  a8 -. a -. r16 a8 -. a16 r a8 -. a16 r a8 -. a16 | % 3
  as8 -. as -. r g -. r16 bes8 -. bes16 r g8 -. bes16
  \repeat volta 2 {
    a8 -. a -. r16 a8 -. a16 r a8 -. a16 r a8 -. a16 | % 4
    as8 -. as -. r16 <g bes>8 -. bes16 r <g bes>8 -. <g
    bes>16 r <g b>8 -. g16 | % 5
    a8 -. a -. r16 a8 -. a16 r a8 -. a16 r a8 -. a16 | % 6
    as8 -. as -. bes -. bes -. r16 bes8 -. bes16 r bes8
    -. bes16 | % 7
  }
  \repeat volta 2 {
    \voiceOne c4 \oneVoice r16 \voiceOne c8. \oneVoice r16 \voiceOne r8
    c16 ~ c8 r | % 9
    \barNumberCheck #10 b4 r16 b8. r bes16 ~ bes r b8 -. | % 10
    c4 r16 c8. r c16 ~ c8 r | % 11
    des4 r16 b8. r c16 ~ c d8 r16
  }
  \oneVoice r8 a -. r16 a8 -. a16 r a8 -. a16 r a8 -.
  a16 | % 13
  r8 as -. r8. g16 r g8 -. g16 r g8 -. g16 | % 14
  r8 a -. r16 a8 -. a16 r a8 -. a16 r a8 -. a16 | % 15
  r8 as -. r g -. r16 bes8 -. bes16 r g8 -. bes16 \change
  Staff="1" \change Staff="2" <>16-\markup "D.C." \bar "|."
}

ClavinetLowerSupport = \relative a {
  \clef "bass" \numericTimeSignature \time 4/4 \key es \major s1*4 \repeat volta
  2 {
    s1*4
  }
  \repeat volta 2 {
    a8 -. a -. s16 a8 -. a16 s a8 -. a16 r a8 -. a16 | % 9
    \barNumberCheck #10 as8 -. as -. s8. g16 s g8 -. s g -. g16 | % 10
    a8 -. a -. s8. a16 s a8 -. s a -. a16 | % 11
    as8 -. as s g -. s4 s16 g8 -. g16
  }
  s1*4 \bar "|."
}

BassLine = \relative c {
  \clef "bass" \numericTimeSignature \time 4/4 \key es \major \transposition c R1 | % 1
  \accidentalStyle modern-cautionary
  R1 | % 2
  R1 | % 3
  R1 | % 4
  \repeat volta 2 {
   c4 es c' a | % 5
   as4 f g d | % 6
   c4 es c' a | % 7
   as4 f g d
  }
  \repeat volta 2 {
   c4 es c' a | % 9
   \barNumberCheck #10 as4 f g d | % 10
   c4 es c' a | % 11
   as4 f g d
  }
  c4 es c' a | % 13
  as4 f g es | % 14
  c4 es c' a | % 15
  as4 f g2 \bar "|."
}

% The score definition
\score {
  <<
    \context ChordNames = "ChordSymbols" {
      \ChordSymbols
    }
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Clav."
      \set PianoStaff.shortInstrumentName = "Cv."
      \context Staff = "1" <<
        \mergeDifferentlyDottedOn
        \mergeDifferentlyHeadedOn
        \context Voice = "ClavinetUpper" {
          \ClavinetUpper
        }
      >>
      \context Staff = "2" <<
        \override Staff.BarLine.allow-span-bar = ##f
        \mergeDifferentlyDottedOn
        \mergeDifferentlyHeadedOn
        \context Voice = "ClavinetLowerLead" {
          \voiceOne \ClavinetLowerLead
        }
        \context Voice = "ClavinetLowerSupport" {
          \voiceTwo \ClavinetLowerSupport
        }
      >>
    >>
    \new Staff = "P2" <<
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bs."
      \context Staff <<
        \override Staff.BarLine.allow-span-bar = ##f
        \mergeDifferentlyDottedOn
        \mergeDifferentlyHeadedOn
        \context Voice = "BassLine" {
          \BassLine
        }
      >>
    >>
  >>
  \layout {}
}
\score {
  \unfoldRepeats \articulate {
    <<
      \new Staff \with {
        midiInstrument = "clav"
      } {
        \ClavinetUpper
      }
      \new Staff \with {
        midiInstrument = "clav"
      } {
        <<
          \voiceOne \ClavinetLowerLead
          \\
          \voiceTwo \ClavinetLowerSupport
        >>
      }
      \new Staff \with {
        midiInstrument = "acoustic bass"
      } {
        \BassLine
      }
    >>
  }
  \midi { \tempo 4 = 108 }
}

