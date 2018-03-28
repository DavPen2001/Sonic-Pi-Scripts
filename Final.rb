use_bpm 260
use_synth :chipbass
cantina1="/Users/davidpena/Desktop/Cantina/sample.wav"
cantina2="/Users/davidpena/Desktop/Cantina/sample2.wav"
cantina3="/Users/davidpena/Desktop/Cantina/sample3.wav"
cantina4="/Users/davidpena/Desktop/Cantina/sample4.wav"
cantina5="/Users/davidpena/Desktop/Cantina/sample5.wav"
cantina6="/Users/davidpena/Desktop/Cantina/sample6.wav"
cantina7="/Users/davidpena/Desktop/Cantina/sample7.wav"
solo="/Users/davidpena/Desktop/Cantina/solo.wav"

1.times do
  sample cantina1, amp:3
end
sleep 17
1.times do
  sample cantina2, amp:3
end
sleep 16
1.times do
end
1.times do
  sample cantina3, amp:3
end
sleep 15
1.times do
  sample cantina4, amp:3
end
sleep 15
1.times do
  sample cantina5, amp:3
end
sleep 17
1.times do
  sample cantina6, amp:3
end
sleep 16

1.times do
  sample cantina7, amp:3
end
sleep 16

1.times do
  sample solo, decay:5, amp:3
end
sleep 32

use_bpm 140

define :baseline do
  use_synth :fm
  play :ds3
  sleep 1.5
  play :ds3
  sleep 0.5
  play :f3
  sleep 0.5
  play :fs3
  sleep 1
  play :b3
  sleep 1
  play :as3
  sleep 3.5
  play :gs3
  sleep 1.5
  play :gs3
  sleep 0.5
  play :b3
  sleep 0.5
  play :as3
  sleep 1
  play :fs3
  sleep 1
  play :ds3
  sleep 3.5
end

define :drums do
  sample :bd_fat
  sleep 1
  sample :sn_dolf
  sleep 1.5
  sample :bd_fat
  sleep 0.5
  sample :sn_dolf
  sleep 1
  sample :bd_fat
  sleep 1
  sample :sn_dolf
  sleep 1.5
  sample :bd_fat
  sleep 0.5
  sample :sn_dolf
  sleep 1
end

sleep 16

live_loop :base do
  baseline
end

live_loop :drum do
  drums
end

















