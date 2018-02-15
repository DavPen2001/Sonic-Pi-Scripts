#Seven Nation Army
#https://musescore.com/user/3064431/scores/1460831
#https://songbpm.com/seven-nation-army

use_bpm 124 #this controlls the beats per minute
use_synth :fm
x=1#this is my variable for my amp
a = 0
9.times do
  sample :drum_snare_hard, amp: a
  sleep 1
  a = a + 5
end
sleep 0.01
live_loop :melody do
  play :e3, sustain: 1.5, amp: x#this playes the note e3 then adds a sustain to make the note last 1.5 times longer then I have my amp which increases by 0.5 every beat
  sleep 1.5
  play :e3, amp: x
  sleep 0.5
  play :g3, amp: x
  sleep 0.75
  play :e3, amp: x
  sleep 0.25
  play :r, amp: x
  sleep 0.5
  play :d3, amp: x
  sleep 0.5
  
  play :c3, sustain: 1.75, amp: x
  sleep 2
  play :b2, sustain: 1.75, amp: x
  sleep 2
  x=x+0.5#this tells my amp to go up by 0.5 every time it plays
end

sleep 16

live_loop :cymbal do#this is my second element to my melody
  sample :drum_cymbal_closed, amp: 2
  sleep 1
end

live_loop :kick do#this is my third element to my melody
  sample :drum_heavy_kick, amp: 10
  sleep 1
end

sleep 8

live_loop :loop do#this is my fourth element to my melody
  sample :drum_bass_soft, amp: 10
  sleep 2
end
