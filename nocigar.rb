def lottery(my_num, winners)
 	winning = []
 if winners.include?(my_num)
   winning << my_num
   p "You Win!"
 else
   p "Fail"
 end
   p winning
end

def match(my_num, winner)
   i = 0
   c = 0
   h = winner.length
    h.times do
    if number[i] == winner[i]
             c += 1
         end
         i += 1
   end
   c
end
