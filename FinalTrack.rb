use_bpm 124 
use_synth :fm 
use_synth_defaults sustain: 0.25 #this sustains each note for 0.25 of a beat
seven = [:e3, :e3, :g3, :e3, :r, :d3, :c3, :b2] #this array are all of the bass guitar notes in the seven nation army song and are written in succescion so when told to play it will play fom 0-8
shleep = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2] #these are all of my sleeps in between each note and in my code below it will go directly below my array thus playing my notes then my sleeps as the should in a regular loop
sevennation = "/Users/davidpena/Desktop/nation.wav" #my sample location
index = 0 #this is used to specify which number to start on when using my arrays
x = 3 #this is a variable that specifies my amp
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
end #these 9 lines are my build it builds up in amplitude then plays my live loops after a small 0.5 sleep period

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
end #the past 15 lines of code are functions everything inside the command "define" is the function used when played

live_loop :white_stripes do
  index = 0
  8.times do
    play seven[index], amp: x #This tells the loop to play seven which is my array then tells it to begin with "index" which is set to 0 thus plays the 0 note which is e3
    sleep shleep[index] #same as "play seven" except with sleep array
    index = index + 1 #this line tells the loop when it has reached this point to add 1 to the total number so from 0 to 1 and 1 to 2 and this continues 8 times (the number of notes and sleeps) then when it loops the liveloop resets it to 0
  end
end #this loop is the core of the song where the bass chords are played

sleep 16

live_loop :one do
  cymbal #my cymbal function
end
live_loop :two do
  kick #my kick function
end
live_loop :three do
  bass #my bass function 
end

sleep 7

live_loop :four do
  nation #my sample now plays it is defined in line 23-26 but the actuall sample is in line 6 but I set a variable to it called sevennation
end

sleep 4

live_loop :random do
  use_octave [0, 1].choose #for the octave I have a range from 0-1 and I want to to choose a random one using .choose
  play [:c, :e, :g].choose #for this I did the same set my range from notes e-c-g and used .choose to choose a random note
  sleep [0.25, 0.25, 0.5, 1].choose #same for the sleep 
end 






