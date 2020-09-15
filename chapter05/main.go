package main

import (
	"fmt"
	"unsafe"
)

type obj struct {
	a bool    // 1
	b byte    // 1
	c int8    // 1
	d int16   // 2
	e int32   // 4
	f int64   // 8
	g int     // 8
	h float32 // 4
	i float64 // 8
	j bool    // 1
}

func main() {
	var o obj
	fmt.Println(unsafe.Alignof(o))
	fmt.Println(unsafe.Sizeof(o))

	fmt.Printf("%p\n", &o)
	fmt.Println(unsafe.Pointer(&o))
	fmt.Println(uintptr(unsafe.Pointer(&o)))

	fmt.Println(unsafe.Offsetof(o.a))
	fmt.Println(unsafe.Offsetof(o.b))
	fmt.Println(unsafe.Offsetof(o.c))
	fmt.Println(unsafe.Offsetof(o.d))
	fmt.Println(unsafe.Offsetof(o.e))
	fmt.Println(unsafe.Offsetof(o.f))
	fmt.Println(unsafe.Offsetof(o.g))
	fmt.Println(unsafe.Offsetof(o.h))
	fmt.Println(unsafe.Offsetof(o.i))
	fmt.Println(unsafe.Offsetof(o.j))

}
