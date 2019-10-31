#!/bin/bash
(time ./BNL_H8_simple_gcc.out lambda=2.36 -n 1e4 -dBNL_H8_simple_gcc_1e4 -s1000) &> BNL_H8_simple_gcc_log
echo 1e5
(time ./BNL_H8_simple_gcc.out lambda=2.36 -n 1e5 -dBNL_H8_simple_gcc_1e5 -s1000) &>> BNL_H8_simple_gcc_log
echo 1e6
(time ./BNL_H8_simple_gcc.out lambda=2.36 -n 1e6 -dBNL_H8_simple_gcc_1e6 -s1000) &>> BNL_H8_simple_gcc_log
echo 1e7
(time ./BNL_H8_simple_gcc.out lambda=2.36 -n 1e7 -dBNL_H8_simple_gcc_1e7 -s1000) &>> BNL_H8_simple_gcc_log
echo 1e8
(time ./BNL_H8_simple_gcc.out lambda=2.36 -n 1e8 -dBNL_H8_simple_gcc_1e8 -s1000) &>> BNL_H8_simple_gcc_log
echo 1e9
(time ./BNL_H8_simple_gcc.out lambda=2.36 -n 1e9 -dBNL_H8_simple_gcc_1e9 -s1000) &>> BNL_H8_simple_gcc_log
echo done
