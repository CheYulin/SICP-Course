def sqrt(x):
    def is_good_enough(guess):
        def yche_abs(val):
            return val if val >= 0 else -val

        def yche_square(val):
            return val * val

        return yche_abs(yche_square(guess) - x) < 0.001

    def improve_guess(guess):
        return (guess + x / guess) / 2

    def sqrt_iter(guess):
        if is_good_enough(guess):
            return guess
        else:
            return sqrt_iter(improve_guess(guess))

    return sqrt_iter(float(1))


print sqrt(5)
