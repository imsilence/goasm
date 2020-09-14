
针对源码文件输出编译过程中产生的汇编程序
go build -gcflags "-N -l -S" main.go
go tool compile -N -l -S main.go

针对二进制可执行程序分析汇编
go tool objdump -S -s main.main main


0x0000 e1 7a 14 ae 47 e1 fa 3f

0011 1111 1111 1010 1110 0001 0100 0111 1010 1110 0001 0100 0111 1010 1110 0001
