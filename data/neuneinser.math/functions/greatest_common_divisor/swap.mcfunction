#> neuneinser.math:greatest_common_divisor/swap
#
# Swaps the scores of the gcd input
#
# @within neuneinser.math:greatest_common_divisor

#>
# @private
#declare score_holder $gcd/swap.copy

scoreboard players operation $gcd/swap.copy 91.math.tmp = $gcd.a 91.math.io
scoreboard players operation $gcd.a 91.math.io = $gcd.b 91.math.io
scoreboard players operation $gcd.b 91.math.io = $gcd/swap.copy 91.math.tmp