\version "2.26.0"
\include "mm-common.ly"

\header {
  title = "EX-07 Harmonic Accent"
  subtitle = "A recurring landmark event"
  tagline = ##f
}

chordsExAccent = \chordmode {
  e1:7
  \once \override ChordName.extra-offset = #'(5 . 0)
  ees1:m7
}

% E7: B D E Ab  ->  Ebm7: C Eb G Bb
voiceExAccent = \relative c'' {
  \voiceOne
  \key c \minor
  <aes e d b>1\glissando
  \once \override NoteColumn.X-offset = #5
  <bes g ees c>1
}

\score {
  <<
    \new ChordNames \with {
      \omit BarLine
    } { \chordsExAccent }
    \new Staff \with {
      instrumentName = "Keys"
      shortInstrumentName = "Ky."
      \omit TimeSignature
      \omit BarLine
      \omit SystemStartBar
    } {
      \clef treble
      \cadenzaOn
      <<
        \voiceExAccent
      >>
    }
  >>
}
