use_bpm 60 #beats per seconds
use_synth :piano #changes how the beat sounds

x = 10 #creates a variable that has the value of 10. Whenever "x" is mentioned, the number 10 will be a factor
100.times do #play this code 100 times
  play x #play the variabe that I set in the 4th line
  sleep 0.25 #creates a pause between each beat for a quarter of a second
  x=x+1 #this equation increases your variable by one every loop
end