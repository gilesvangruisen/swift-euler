
/*

Euler #3 - largest prime factor

prime factors of 13195 are 5, 7, 13 and 29
What is the largest prime factor of the number 600851475143 ?

*/

func factorize(num: Int) -> [Int] {
    
    var factors = [Int]()

    if num / 2 > 2 {
        for i in 2...num / 2 {

            if num % i == 0 {
                let factor = num / i
                return [factor, i]
            }
            
        }
    }

    return factors
}

func isPrime(num: Int) -> Bool {
    return factorize(num).count <= 0
}

func primeFactorize(num: Int) -> [Int] {

    var primeFactors = [Int]()

    for i in factorize(num) {
        if isPrime(i) {
            primeFactors += [i]
        } else {
            primeFactors += primeFactorize(i)
        }
    }

    return primeFactors

}

func largestPrimeFactor(num: Int) -> Int {

    return primeFactorize(num).sorted({ $0 < $1 }).last!

}

/* Answer */
largestPrimeFactor(600851475143) // == 6857
