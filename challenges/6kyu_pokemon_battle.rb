# It's a Pokemon battle! Your task is to calculate the damage that a particular move would do using the following formula (not the actual one from the game):

# damage = 50 * (attack / defense) * effectiveness

# Where:

#     attack = your attack power
#     defense = the opponent's defense
#     effectiveness = the effectiveness of the attack based on the matchup (see explanation below)

# Effectiveness:

# Attacks can be super effective, neutral, or not very effective depending on the matchup. For example, water would be super effective against fire, but not very effective against grass.

#     Super effective: 2x damage
#     Neutral: 1x damage
#     Not very effective: 0.5x damage

# To prevent this kata from being tedious, you'll only be dealing with four types: fire, water, grass, and electric. Here is the effectiveness of each matchup:

#     fire > grass
#     fire < water
#     fire = electric

#     water < grass
#     water < electric

#     grass = electric

# For this kata, any type against itself is not very effective. Also, assume that the relationships between different types are symmetric (if A is super effective against B, then B is not very effective against A).

# The function you must implement takes in:

#     your type
#     the opponent's type
#     your attack power
#     the opponent's defense

# Input, typesof pokemon(string) & attack and defence (integers)
# Ouput: calculate the damage output of an attack based on the types of pokemon engaged in the battle.

# Mental Model: 
# intialize the variable damage with the formula above
# modify the fomula based on the types in the game.
# return the damage value

# Data Structure: damage/case/if-elsif/damage

def calculate_damage(your_type, opponent_type, attack, defense)
  effectiveness = 1
  
  case your_type
    when 'fire'
      if opponent_type.eql?('water')
        effectiveness *= 0.5
      elsif opponent_type.eql?('grass')
        effectiveness *= 2
      end
    when 'grass'
      if opponent_type.eql?('fire')
        effectiveness *= 0.5
      elsif opponent_type.eql?('water')
        effectiveness *= 2
      end
    when 'electric'
      if opponent_type.eql?('water')
        effectiveness *= 2
      end
    when 'water'
      if opponent_type.eql?('fire')
          effectiveness *= 2
      elsif opponent_type.eql?('grass')
        effectiveness *= 0.5
      elsif opponent_type.eql?('electric')
        effectiveness *= 0.5
      end
  end
  
  effectiveness *= 0.5 if your_type == opponent_type
  damage = 50 * (attack/defense) * effectiveness
  damage.to_i
  
end

p calculate_damage("fire", "water", 100, 100)