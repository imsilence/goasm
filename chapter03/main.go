package main

import (
	"fmt"
	"unsafe"

	"chapter03/vars"
)

func main() {
	fmt.Println(vars.Id, unsafe.Sizeof(vars.Id))
	fmt.Println(vars.Name, unsafe.Sizeof(vars.Name), len(vars.Name))
	fmt.Println(vars.Scores, unsafe.Sizeof(vars.Scores), len(vars.Scores))
	fmt.Println(vars.IsBoy, unsafe.Sizeof(vars.IsBoy))
	fmt.Println(vars.Height, unsafe.Sizeof(vars.Height))
	fmt.Println(vars.Chars, string(vars.Chars), unsafe.Sizeof(vars.Chars), len(vars.Chars))
	vars.Chars[0] = 'k'
	fmt.Println(vars.Chars, string(vars.Chars), unsafe.Sizeof(vars.Chars), len(vars.Chars))
}
