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
cantina = []

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
  play :F4
  play :A4
  sleep 1
  play :D5
  play :A4
  sleep 1
  play :F4
  play :A4
  sleep 1
  play :D5
  play :A4
  sleep 1
  
  play :F4
  play :A4
  sleep 0.5
  play :D5
  play :A4
  sleep 1
  play :F4
  play :A4
  sleep 0.5
  play :r
  sleep 0.5
  play :Fs4
  play :Gs4
  sleep 0.5
  play :F4
  play :A4
  sleep 1
  
  play :F4
  play :A4
  sleep 0.5
  play :G4
  play :E4
  sleep 0.5
  play :F4
  play :A4
  sleep 0.5
  play :G4
  play :E4
  sleep 0.5
  play :r
  sleep 0.5
  play :Fs4
  play :Ds4
  sleep 0.5
  play :G4
  play :E4
  sleep 1
  
  play :F4
  play :C3
  sleep 1.5
  play :D4
  play :A3
  sleep 2
  play :r
  sleep 0.5
  
  play :F4
  play :A4
  sleep 1
  play :D5
  play :A4
  sleep 1
  play :F4
  play :A4
  sleep 1
  play :D5
  play :A4
  sleep 1
  
  play :A4
  play :F4
  sleep 0.5
  play :D5
  play :A4
  sleep 1
  play :A4
  play :F4
  sleep 0.5
  play :A4
  play :F4
  sleep 1
  play :G4
  play :D4
  sleep 1
  
  play :G4
  play :D4
  sleep 1
  play :F4
  play :C4
  sleep 0.5
  play :G4
  play :D4
  sleep 1
  
  play :C5
  play :G4
  sleep 0.5
  play :B4
  play :F4
  sleep 1
  play :A4
  play :E4
  sleep 1
  play :G4
  play :D4
  sleep 1
  
  play :F4
  play :A4
  sleep 1
  play :D5
  play :A4
  sleep 1
  play :F4
  play :A4
  sleep 1
  play :D5
  play :A4
  sleep 1
  
  play :F4
  play :A4
  sleep 0.5
  play :D5
  play :A4
  sleep 1
  play :F4
  play :A4
  sleep 0.5
  play :r
  sleep 0.5
  play :F4
  play :G4
  sleep 0.5
  play :F4
  play :A4
  sleep 1
  
  play :C5
  play :G4
  sleep 1
  play :C5
  play :G4
  sleep 1.5
  play :A4
  play :E4
  sleep 0.5
  play :G4
  play :E4
  sleep 1
  
  play :F4
  play :C4
  sleep 1.5
  play :D4
  play :G3
  sleep 2
  play :r
  sleep 0.5
  
  play :D4
  play :G5
  sleep 1
  play :F4
  play :D4
  sleep 1
  play :A4
  play :F4
  sleep 1
  play :C5
  play :A4
  sleep 1
  
  play :E5
  play :B4
  sleep 1
  play :D5
  play :A4
  sleep 1
  play :F4
  play :G4
  sleep 0.5
  play :A4
  play :F4
  sleep 1
end

1.times do
  sample solo, amp:3
end
sleep 16




















