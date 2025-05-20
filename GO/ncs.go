// ncs.go
package main // IMPORTANT: MUST be 'main'

import (
	"fmt" // Only fmt is needed here
)

// All functions are lowercase because they are part of the 'main' package
// and don't need to be exported for other files in the same package.
func val(c rune) int {
    if c >= '0' && c <= '9' {
        return int(c - '0')
    }
    return int(c - 'A' + 10)
}

func toDeci(str string, base int) int {
    lenn := len(str)
    power := 1
    num := 0
    for i := lenn - 1; i >= 0; i-- {
        charVal := val(rune(str[i]))
        if charVal >= base {
            fmt.Println("Invalid Number")
            return -1
        }
        num += charVal * power
        power = power * base
    }
    return num
}

func reVal(num int) rune {
    if num >= 0 && num <= 9 {
        return rune(num + '0')
    }
    return rune(num - 10 + 'A')
}

func fromDeci(base int, inputNum int) string {
    res := ""
    if inputNum == 0 {
        return "0"
    }
    for inputNum > 0 {
        res += string(reVal(inputNum % base))
        inputNum /= base
    }
    runes := []rune(res)
    for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
        runes[i], runes[j] = runes[j], runes[i]
    }
    return string(runes)
}

// This function is directly called by coderunner.go (within the same 'main' package).
func convertBase(s string, a int, b int) {
    num := toDeci(s, a)
    if num == -1 {
        return
    }
    ans := fromDeci(b, num)
    fmt.Println("ANSWER: " + ans)
}
