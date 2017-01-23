package main
import "fmt"
import "os"

func sampleNumbers() []int {
	return []int{1,2,3,4,5,6}
}

func asForLoop(numbers []int) int{
	result := 0
	for i := 0; i < len(numbers); i++{
		result += numbers[i]
	}
	return result
}

func asWhileLoop(numbers []int) int{
	result := 0
	i := len(numbers)

	for i > 0 {
		i--
		result = result + numbers[i]
	}
	return result
}

func asRecursion(numbers []int, sum int) int {
	count := len(numbers)
	if count == 0 {
		return sum
	}
	return asRecursion(numbers[1:count], sum+numbers[0])
}

func runTest(template string, result int) int {
	fmt.Printf(template, result)
	return result
}

func main(){
	sum := 0
	sum += runTest("asForLoop: %d\n", asForLoop(sampleNumbers()))
	sum += runTest("asWhileLoop: %d\n", asWhileLoop(sampleNumbers()))
	sum += runTest("asRecursion: %d\n", asRecursion(sampleNumbers(), 0))
	if sum != 63 {
		os.Exit(1)
	}
}
