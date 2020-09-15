package main

import (
	"chapter07/funcs"
	"fmt"
)

func main() {
	fmt.Println(funcs.If(0, 1, 2))
	fmt.Println(funcs.If(1, 1, 2))
}
