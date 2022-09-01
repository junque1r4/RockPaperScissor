import UIKit

let choises: [Sign] = [Sign.orangutangus, Sign.rat, Sign.unicorn]

for choise in choises {
    for oponent in choises {
        print("\(choise) vs \(oponent) = \(choise.comparison(oponent: oponent))")
    }
}

