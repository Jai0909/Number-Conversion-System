// coderunner.go
package main // IMPORTANT: MUST be 'main'

import (
	"bufio"
	"fmt"
	"os"
	"strconv" // Used for Atoi
	"strings" // Used for TrimSpace and ToUpper
)

func main() {
	reader := bufio.NewReader(os.Stdin)

	fmt.Print("ENTER TEXT TO BE CONVERTED: ")
	s, _ := reader.ReadString('\n')
	s = strings.TrimSpace(strings.ToUpper(s))

	fmt.Print("ENTER BASE TO BE CONVERTED FROM: ")
	aStr, _ := reader.ReadString('\n')
	a, _ := strconv.Atoi(strings.TrimSpace(aStr))

	fmt.Print("ENTER BASE TO BE CONVERTED TO: ")
	bStr, _ := reader.ReadString('\n')
	b, _ := strconv.Atoi(strings.TrimSpace(bStr))

	// Directly call convertBase; no package prefix needed since it's in the same 'main' package.
	convertBase(s, a, b)
}
