# Ecocadia TCG

## game setup
At the start of the game each player selects 1 basic job card from their job pile and places that card face up on the board.
Then 6 cards are drawn.
Each player places one of their creatures free of cost Face down (only if they do not have special appearance requirements).
Then both creatures are revealed, the player with the lowest defensive stats can go first. The first player does not draw, but is allowed all other moves as if the turn is set up normally.

## field

E - Effect card zone
C - Creature zone
D - Deck zone
A - Afterlife
I - Item card zone
j - Job zone
J - Job Deck zone
X - Extra deck zone
```
[D][E][I][I][I][E][X]
[A][E][C][C][C][E][J]
   [j][j][j][j][j]   
[J][E][C][C][C][E][A]
[X][E][I][I][I][E][D]
```
## phases

### Draw phase
The player can either draw a card from the job pile or draw a card from the main deck.

### Earning phase
The turn player can play a job card from their hand, if they have any. 
On top of that, the turn player can use their afterlife to craft resources. Here a choice needs to be made to keep a card in afterlife or use it as a resource to get more points.
After that dices are thrown by the turn player: Players get resources from creatures on the field based on how the dice roll.
Then the turn player can spend those resources at the available job cards.
For spending resources the player will get points from job cards that can be spent for card effects.
Each job card can only be used once per turn by either player. 
After turn player has spent his resources, the non turn player can spend resources.
All resources remaining after this will be forgotten. 


### Play phase
All cards can be played here, except job cards. 
The turn player must always initiate any action for the non-turn player to react to it.
Reacting to a card can be done after activating the card or after a card has completed.

#### Playing creatures
The turn player can play any number of creatures in the play phase. 
The player pays the cost by reducing their points. 
The creature can be put in either defence mode or attack mode.

A creature in defense mode cannot activate effects with a damage indicator next to them.
A creature cannot switch their mode and attack in the same turn.
A creature's defensive move cannot be activated in attack mode.

#### Battle handling
A player can only attack the opposing player when the opposing player does not have a creature. 
If there is a creature, the attack is done on the creature.

When a creature attacks a player, the creature will reduce the opposing player's points by the damage amount. 

When a creature attacks another creature, the damage is compared to the defence. 
If the attack is lower, you remove the different from your points. 
The defence of that monster is reduced by the attack by the attack value, until the end of this battle.
A new attack can be chained after the previous attack is completed to extend the battle.
Playing a new card will cancel this battle and allow the attacked creature to heal.
Only 1 creature can be attacked per battle, but multiple creatures can attack.

If the attack is higher than the defence, the creature is moved to the afterlife.
Then, if the creature was in attack position, reduce the opposing players points by the difference between your attack move and their defence.

### End phase
During the end phase, cleanup is done. Any card in the limbo state will be placed in afterlife. 

## Creatures
A creature consists of the following properties:

- A name - a unique identifier for the card
- An Archetype - a group of cards the name belongs to, or generic if none
- An attribute - A generic group of creatures this is apart of
- A creature-Type - A specific group this belongs to.

Each creature has a defense value. This value determines the minimal power required to eliminate this creature. 

Each creature has a set of resource gathering values. 
These values consist of 3 parts:
- The resource type, for example sugar or gems.
- The resource amount, 3 sugar or 2 gems.
- A set of 1-3 numbers[1-6] that represent the chance to gather the resource.

There is a set of moves on each creature (at least 1). 
A move has at least the following:
- 1 or more types of the move:
  - Quick, an effect that can be stacked on either turn (can do damage)
  - Continuous, an effect that moves into play as soon as you activate it (cannot do damage)
  - Trigger, an effect that activates as soon as the requirements are met (can do damage)
  - Attack, A damage effect that attacks
- The cost of the move: A number indicating the cost
- Optionally, a damage indicator for the amount of damage the move does.

Each move is a hard once per turn, unless specified that it's not. A move is required if there is an exclamation mark. Order of activation of effects is up the to the controller of said effects.

### Creature Attributes
- Ground
- SciFi
- Elemental
- Magic
- Shadow
- Myth

### Creature Types
A type is not limited to 1 attribute, so there can be a ground animal card and a magic animal card.

- Cybernetic: Creatures in the digital space
- Animal: Creatures that reference existing animals
- Ordinary: Creatures that represent humanoid ordinary tasks
- Fighter: Creatures that represent humanoid beings with a fighting related role
- Monster: Creatues that represent generic monsters, often from mythical lore
- Bug: Creatures that represent insect-like monsters
- Machine: Creatures that represent physical hardware related monsters
- Alien: Creatures with a link to outer space
- Undead: Creatures that have lore that cause them to have "risen from the dead"
- Demon: "Evil" creatures that are linked to somewhat religious or aetherial lore.
- Angelic: "Good" creatures that are linked to somewhat religious or aetherial lore
- Enchanted: Creatures that have been created from magic
- Wyvern: Creatures that represent larger lizards, like dragons
- Flora: Creatures that have something to do with flowers, trees and other flora
- Wizard: Creatures that create magic
- Aquatic: Creatures that live in or near water

## Effect cards
Effect cards are cards that have 1 specific effect.
An effect card has a cost to play.
They contain one of the following effects:
- Quick, an effect that can be stacked during either turn, and can be played from the hand.
- Trigger, an effect that can activate as soon as the requirents are met. Can also be played from the hand.
- Continuous, an effect that remains on the field. Can only be activated on your turn
- Ignition, a one time only effect that is sent to the afterlife after being completed

There is only 1 effect per card, but the effect can be of multiple types, for example a quick continuous effect.

## Item cards
Item cards are cards that affect the creature in the same column as them. 
Item cards do not carry a cost.
They remain on the field even if the creature leaves the field.
They can leave the field by playing a replacement card or when a creature does not fit the requirements.

## Job cards
A job card is a card that gives a reward during the Earning phase, based on the amount of resources you earned here.  
A job card allows you to choose if any minimum is completed:
- A point value, which allows you to pay more costs for cards.
- A specific effect, like drawing a card, battle protection for a creature, etc.

### Resource types
- Sugar
- Ember
- Orbs
- Blood
- Time
- Bolts
- Souls
- Glitches
- Omni - This counts as any resource
- Pearls
- Gems