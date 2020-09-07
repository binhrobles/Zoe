// prime story motivators: toys and treats
CONST ALL_TOYS = 2
VAR num_toys = 0
VAR last_visited = "nothing"

You woke up that day, restlessly. The sticky weight of sleep clamping your eyes shut while your consciousness slowly came to be.
+ [Push towards the light.] -> awaken

=== awaken ===
# CLEAR
...
Yes... you've awakened again. Your first thoughts take shape.
+ [I have so much to do.]      -> busy
+ [I have so little to do.]    -> restless

=== busy ===
# CLEAR
You leap out of your bed and demand to be given the respect you deserve.
* [Let's bite a toe.]           -> toes
* [Let's chew on some chairs.]  -> chairs
* {TURNS_SINCE(-> busy.food) > 5 || TURNS_SINCE(-> busy.food) == -1}
    [Where's my food, btchzzz?] -> food
* {TURNS_SINCE(-> busy.food) > 3} [Time to take a shit on the floor] -> shit
// upstairs
// outside
// to the front room
// ice
// tricks
* ->
    ~ last_visited = "complete"
    But there's nothing more to do, but to consider a day well spent.
    -> dream

= chairs
~ last_visited = "chairs"
    There's something magical about a morning routine that just makes sense, that hits the zen point between easing out of the dreamworld and warming up into the day.
    The steady, consistent scratching of your teeth against the polished wood soothes you, even as you know how much wood there is left to be marked. It's not the mountain that's in view, but the moment.
    * [A piece of wood chips off...]
        ~ num_toys++
    -> dream

= toes
~ last_visited = "toes"
    Ah yes, toes. You have an intimate familarity every family member's foot member's flavor profile delight.
    Fortunately, the One-Who-Also-Snores is on the couch. The almond-tart-pencil shaving taste of his right big toe beckons to you.
    You're kicked and shouted at, but ultimately ignored as you clamber towards your goal. And good thing, because you saved all your energy for your gnawing.
    * [You grab a slipper as a trophy...]
        ~ num_toys++
    -> dream

// it would be fun if this actually took a step longer every time
= food
~ last_visited = "food"
    It's probably that time again. The Girl-Who-Feeds is jibbering at you.
    + [Wait patiently] -> food2
  = food2
      She's still just talking.
      "Shut up and feed me, bruh."
      + [...keep waiting]
      "You're taking literally forever." -> food3
  = food3
      + [...]
      "Now you're just being rude." -> food4
  = food4
      She finally accepts your paw and sets the food down for you. You swear that she's taking longer every time, but <>
      + damn, that's some good shit. -> dream

= shit
~ last_visited = "shit"
    * [God, what are they feeding me?] -> smelly
    * [Damn, that's a good shit.] -> crunchy
    
    = smelly
        You wait until you can shit on the front room carpet. It's...really bad.
        -> dream
    = crunchy
        You drop trou in the middle of the living room and push a cookie-colored slushy. You make sure to make eye contact with one of the humans.
        -> dream

=== restless ===
You lift your head, just enough to catalogue your toys.
-> count

    = count
        + { busy.chairs } [Prime harvested chair wood.] Like memories on my gums. -> count
        + { busy.toes } [A vintage piggy slipper.] Suffocator no longer. -> count
        + { num_toys == 0 } [You have nothing.]
            It's as sad as it seems.
            -> dream
        + { num_toys > 0 && num_toys < ALL_TOYS} [...{num_toys}? ...that's it?]
            She-Who-Bathes-Me must have taken her Paw Cushion back.
            You'll get it back.
            -> dream
        + { num_toys == ALL_TOYS } [Yes, {ALL_TOYS} good toys.] 
            ~ last_visited = "complete"
            -> dream

=== dream ===
You collapse onto your bed. 
Your consciousness slides out from underneath you...
+ [into the dark again.] -> dream_content

    = dream_content
        # CLEAR
        Your dreams come <>
        { last_visited:
        - "chairs": sharply.
            Chairs and trees creeping towards you, surrounding the bed, grabbing towards you with creaking, snapping wood, so close...
        - "toes": trembling.
            Fleshy appendages grabbing, poking, twisting your ears, your tail. They grapple when you fight, smother when you run.
            You're so small...
        - "food": with the weight of unintentional gluttony.
            The girl stands in front of you with a stuffed animal. She beckons to you, calls your name, offers a treat. You want to rush forward, attack the teddy bear, but your body is heavy like wet, limbs like stones, and all you can do is stare at her as the distance widens.
        - "complete": true.
            Life doesn't need to be harder. -> END
        - else: lazily.
            Images of endless tile, expanding outwards from your bed to all eternity, bright-colored toys scattering the barren land.
        }
        + [Push towards the light.] -> awaken

-> END
