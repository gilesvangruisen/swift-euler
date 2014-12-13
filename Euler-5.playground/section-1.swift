
/*

Euler #5 - 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

*/

func isDivisible(num: Int) -> Bool {
    for i in 1...20 {
        if num % i != 0 {
            return false
        }
    }
    
    return true
}

func tryDivideNext(_ initial: Int = 1) -> Int {
    
    var num = initial
    
    while(!isDivisible(num)) {
        num++
    }
    
    return num
}

//tryDivideNext()

