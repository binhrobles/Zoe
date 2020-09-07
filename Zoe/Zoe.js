var storyContent = ﻿{"inkVersion":19,"root":[["^You woke up that day, restlessly. The sticky weight of sleep clamping your eyes shut while your consciousness slowly came to be.","\n",{"->":"awaken"},["done",{"#f":5,"#n":"g-0"}],null],"done",{"awaken":[["^...","\n","^Yes... you've awakened again. Your first thoughts take shape.","\n","ev","str","^I have so much to do.","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^I have so little to do.","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^      ",{"->":"busy"},"\n",{"#f":5}],"c-1":["^    ",{"->":"restless"},"\n",{"#f":5}]}],{"#f":1}],"busy":[[{"#":"CLEAR"},"^You leap out of your bed and demand to be given the respect you deserve.","\n","ev","str","^Let's bite a toe.","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Let's chew on some chairs.","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Where's my food, btchzzz?","/str",{"^->":"busy.food"},"turns",5,">",{"^->":"busy.food"},"turns",-1,"==","||","/ev",{"*":".^.c-2","flg":21},"ev","str","^Time to take a shit on the floor","/str",{"^->":"busy.food"},"turns",3,">","/ev",{"*":".^.c-3","flg":21},{"*":".^.c-4","flg":24},{"c-0":["^           ",{"->":"busy.toes"},"\n",{"#f":5}],"c-1":["^  ",{"->":"busy.chairs"},"\n",{"#f":5}],"c-2":["^ ",{"->":"busy.food"},"\n",{"#f":5}],"c-3":["^ ",{"->":"busy.shit"},"\n",{"#f":5}],"c-4":["\n","^But there's nothing more to do, but to consider a day well spent.","\n",{"->":"ending"},{"#f":5}]}],{"chairs":[["^There's something magical about a morning routine that just makes sense, that hits the zen point between easing out of the dreamworld and warming up into the day.","\n","^The steady, consistent scratching of your teeth against the polished wood soothes you, even as you know how much wood there is left to be marked. It's not the mountain that's in view, but the moment.","\n","ev","str","^chairs","/str","/ev",{"VAR=":"last_visited","re":true},"ev","str","^A piece of wood chips off...","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","ev",{"VAR?":"num_toys"},1,"+",{"VAR=":"num_toys","re":true},"/ev",{"->":"dream"},{"#f":5}]}],{"#f":1}],"toes":[["ev","str","^toes","/str","/ev",{"VAR=":"last_visited","re":true},"ev","str","^You yank the slipper off her foot...","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","ev",{"VAR?":"num_toys"},1,"+",{"VAR=":"num_toys","re":true},"/ev",{"->":"dream"},{"#f":5}]}],{"#f":1}],"food":[["ev","str","^food","/str","/ev",{"VAR=":"last_visited","re":true},"ev","str","^Damn, that's some good shit.","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"dream"},{"#f":5}]}],{"#f":3}],"shit":[["ev","str","^shit","/str","/ev",{"VAR=":"last_visited","re":true},"ev","str","^Damn, that's a good shit.","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"dream"},{"#f":5}]}],{"#f":1}],"#f":1}],"restless":[{"#":"CLEAR"},"^You roll to your side, just enough to see the ceiling from the corner of your eye. Ol' Steady, as you affectionately referred to the 4 square paw section of ceiling above your bed.","\n","^You roll to your other side, just enough to catalogue your toy count.","\n",{"->":".^.count"},{"count":[["ev","str","^Prime harvested chair wood.","/str",{"CNT?":"busy.chairs"},"/ev",{"*":".^.c-0","flg":5},"ev","str","^A vintage piggy slipper.","/str",{"CNT?":"busy.toes"},"/ev",{"*":".^.c-1","flg":5},"ev","str","^You have nothing.","/str",{"VAR?":"num_toys"},0,"==","/ev",{"*":".^.c-2","flg":5},"ev","str","^...","ev",{"VAR?":"num_toys"},"out","/ev","^? ...that's it?","/str",{"VAR?":"num_toys"},0,">",{"VAR?":"num_toys"},5,"<","&&","/ev",{"*":".^.c-3","flg":5},"ev","str","^Yes, 5 good toys","/str",{"VAR?":"num_toys"},5,"==","/ev",{"*":".^.c-4","flg":5},{"c-0":["^ Like memories on my gums. ",{"->":".^.^.^"},"\n",{"#f":5}],"c-1":["^ Suffocator no longer. ",{"->":".^.^.^"},"\n",{"#f":5}],"c-2":["\n","^It's as sad as it seems.","\n",{"->":"dream"},{"#f":5}],"c-3":["^ ","\n","^She-Who-Bathes-Me must have taken her Paw Cushion back.","\n","^You'll get it back.","\n",{"->":"dream"},{"#f":5}],"c-4":["^ All is right in the world ",{"->":"ending"},"\n",{"#f":5}]}],{"#f":1}],"#f":1}],"dream":[{"#":"CLEAR"},"^Your consciousness slides out from underneath you, slipping...slipping into the dark again.","\n","^Your dreams come ","<>","\n","ev",{"VAR?":"last_visited"},"/ev",["du","ev","str","^chairs","/str","==","/ev",{"->":".^.b","c":true},{"b":["pop","\n","^into sharp view.","\n","^Chairs creeping towards you, surrounding the bed, coming closer...","\n",{"->":"dream.13"},null]}],["du","ev","str","^toes","/str","==","/ev",{"->":".^.b","c":true},{"b":["pop","\n","^trembling through the darkness.","\n","^Fleshy appendages grabbing, poking, twisting your ears, your tail. They grapple when you fight, smother when you run. You're so small...","\n",{"->":"dream.13"},null]}],["du","ev","str","^food","/str","==","/ev",{"->":".^.b","c":true},{"b":["pop","\n","^with the weight of unintentional gluttony.","\n","^The girl stands in front of you with a stuffed animal. She beckons to you, calls your name, offers a treat. You want to rush forward, attack the teddy bear, but your body is heavy like wet, limbs like stones, and all you can do is stare at her as the distance widens.","\n",{"->":"dream.13"},null]}],[{"->":".^.b"},{"b":["pop","\n","^lazily.","\n","^Images of endless tile, expanding outwards from your bed to all eternity, bright-colored toys scattering the barren land.","\n",{"->":"dream.13"},null]}],"nop","\n",{"->":"awaken"},{"#f":1}],"ending":["^And that's all there ever was.","\n","end",{"#f":1}],"global decl":["ev",0,{"VAR=":"num_toys"},"str","^nothing","/str",{"VAR=":"last_visited"},"/ev","end",null],"#f":1}],"listDefs":{}};