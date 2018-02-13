#Stranger Things Main Theme

use_bpm 160
stranger_things = [:c3, :e3, :g3, :b3, :c4, :b3, :g3, :e3]
index = 0
#Using this array feature it will play the given notes and can be specifies in what order in your loop

use_synth :saw
with_fx :band_eq do
  live_loop :strange do
    8.times do
      play stranger_things[index]#Here I am telling this 8.times to play my stranger things array and sets the initial value to index which is 0 specified in line 4 then uses the array to play the notes in succescion as specified in line 15          
      sleep 0.5
      index = index + 1
    end
    index = 0
  end
end
