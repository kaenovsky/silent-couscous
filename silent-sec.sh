#!/bin/bash

# add 3 seconds of silence before and after
# for all .wav files in current directory

for i in *.wav;
  do name="${i%.*}"
  sox "${name}.wav" "${name}-edited.wav" pad 3 3
done