use_bpm 124
use_synth :fm
use_synth_defaults sustain: 0.25
seven = [:e3, :e3, :g3, :e3, :r, :d3, :c3, :b2]
shleep = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]
sevennation = "/Users/davidpena/Desktop/nation.wav"
index = 0
x = 3
4.times do
  sample :bd_boom, amp: x
  sleep 0.5
  sample :bd_boom, amp: x
  sleep 0.5
  sample :bd_boom, amp: x
  sleep 0.5
  sample :bd_boom, amp: x
  sleep 0.5
  x = 1 + 2
end

sleep 0.5

define :nation do
  sample sevennation, amp: 5
  sleep 16
end
define :cymbal do
  sample :drum_cymbal_closed, amp: 2
  sleep 1
end
define :kick do
  sample :drum_heavy_kick, amp: 10
  sleep 1
end
define :bass do
  sample :drum_bass_soft, amp: 10
  sleep 2
end
live_loop :white_stripes do
  index = 0
  8.times do
    play seven[index], amp: x
    sleep shleep[index]
    index = index + 1
  end
end

sleep 16

live_loop :one do
  cymbal
end
live_loop :two do
  kick
end
live_loop :three do
  bass
end

sleep 7

live_loop :four do
  nation
end

sleep 4

live_loop :random do
  use_octave [0, 1].choose
  play [:c, :e, :g].choose
  sleep [0.25, 0.25, 0.5, 1].choose
end






