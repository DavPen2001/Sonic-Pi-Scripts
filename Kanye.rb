=begin

TASK 1: Import the sample from "Love Lockdown" into this buffer and play it using the live_loop on line 39.

TASK 2: Use the .mp3 file and Audacity to take another sample from the song, and incorporate it into this script.

=end

use_bpm 120
use_synth :dtri
use_synth_defaults cutoff: 80
kanye_vocals = "/Users/davidpena/Desktop/sonic_pi_challenge_7_custom_samples/lit.wav"
sample_used = :bd_808

define :bd_808 do
  sample sample_used, amp: 5
  sleep 0.5
  sample sample_used, amp: 5
  sleep 1.5
  sample sample_used, amp: 5
  sleep 2
end
define :synth_sound do
  play :cs2, amp: 5
  sleep 0.5
  play :cs2, amp: 5
  sleep 0.5
  play :e2, sustain: 0.5, amp: 5
  sleep 1
  # play two notes concurrently (at the same time)
  play :cs2, sustain: 1, detune: 0.12, amp: 5
  play :cs1, sustain: 1, amp: 5
  sleep 2
end
define :song do
  sample kanye_vocals, amp: 5
  sleep 48
end

live_loop :one do
  bd_808
end

live_loop :two do
  synth_sound
end

live_loop :three do
  song
end











