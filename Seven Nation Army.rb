#Seven Nation Army
#https://musescore.com/user/3064431/scores/1460831
#https://songbpm.com/seven-nation-army

use_bpm 124
use_synth :fm
x=1

live_loop :melody do
  play :e3, sustain: 1.5, amp: x
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
  x=x+0.5
end

sleep 16

live_loop :cymbal do
  sample :drum_cymbal_closed, amp: 2
  sleep 1
end

live_loop :kick do
  sample :drum_heavy_kick, amp: 10
  sleep 1
end

sleep 8

live_loop :loop do
  sample :drum_bass_soft, amp: 10
  sleep 2
end


