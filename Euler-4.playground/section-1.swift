
/*

Euler #4 - largest palindrome product

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

*/

func isPalindrome(num: Int) -> Bool {
    return num == String(reverse(String(num))).toInt()!
}

func largestPalindrome() -> Int {
    
    let max = 999
    var x = max
    var y = x
    
    for i in 0...max / 10 {
        x = max - i
        
        for i in 0...max / 10 {
            y = max - i
            
            if isPalindrome(x * y) {
                return x * y
            }
        }
    }
    
    return x * y
}

/* Answer */
largestPalindrome()
