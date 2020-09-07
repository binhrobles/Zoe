// prime story motivators: toys and treats
VAR num_toys = 0
VAR last_visited = "nothing"

You woke up that day, restlessly. The sticky weight of sleep clamping your eyes shut while your consciousness slowly came to be. 
-> awaken

=== awaken ===
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
    But there's nothing more to do, but to consider a day well spent.
    -> ending
    
= chairs
    There's something magical about a morning routine that just makes sense, that hits the zen point between easing out of the dreamworld and warming up into the day. 
    The steady, consistent scratching of your teeth against the polished wood soothes you, even as you know how much wood there is left to be marked. It's not the mountain that's in view, but the moment.
    ~ last_visited = "chairs"
    * [A piece of wood chips off...]
        ~ num_toys++
    -> dream

= toes
    ~ last_visited = "toes"
    * [You yank the slipper off her foot...]
        ~ num_toys++
    -> dream
    
= food    
    ~ last_visited = "food"
    * [Damn, that's some good shit.]
    -> dream
    
= shit
    ~ last_visited = "shit"
    * [Damn, that's a good shit.]
    -> dream

=== restless ===
# CLEAR
You roll to your side, just enough to see the ceiling from the corner of your eye. Ol' Steady, as you affectionately referred to the 4 square paw section of ceiling above your bed. 
You roll to your other side, just enough to catalogue your toy count.
-> count

= count
    + { busy.chairs } [Prime harvested chair wood.] Like memories on my gums. -> count
    + { busy.toes } [A vintage piggy slipper.] Suffocator no longer. -> count
    + { num_toys == 0 } [You have nothing.]
        It's as sad as it seems.
        -> dream
    + { num_toys > 0 && num_toys < 5} [...{num_toys}? ...that's it?] 
        She-Who-Bathes-Me must have taken her Paw Cushion back. 
        You'll get it back.
        -> dream
    + { num_toys == 5 } [Yes, 5 good toys] All is right in the world -> ending

=== dream ===
# CLEAR
Your consciousness slides out from underneath you, slipping...slipping into the dark again.

Your dreams come <>
{ last_visited:
- "chairs": into sharp view.
    Chairs creeping towards you, surrounding the bed, coming closer...
- "toes": trembling through the darkness.
    Fleshy appendages grabbing, poking, twisting your ears, your tail. They grapple when you fight, smother when you run. You're so small...
- "food": with the weight of unintentional gluttony. 
    The girl stands in front of you with a stuffed animal. She beckons to you, calls your name, offers a treat. You want to rush forward, attack the teddy bear, but your body is heavy like wet, limbs like stones, and all you can do is stare at her as the distance widens.
- else: lazily.
    Images of endless tile, expanding outwards from your bed to all eternity, bright-colored toys scattering the barren land.
}
-> awaken

=== ending ===
And that's all there ever was.

-> END