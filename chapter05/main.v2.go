package main

import (
	"fmt"
	"unsafe"
)

func main() {
	var a, b int
	fmt.Println(uintptr(unsafe.Pointer(&a)))
	fmt.Println(uintptr(unsafe.Pointer(&b)))
}
