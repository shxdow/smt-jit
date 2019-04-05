
SMT-JIT
=======
### A toy Just-In-Time Compiler for evaluating SMT formulas (QF_AUFBV)
### [CS 842] Final Course Project
---

This project implements a simple JIT compiler for the QF_AUFBV subset of SMT emitted by the KLEE symbolic execution engine, including unbounded arrays of bitvectors and fixed-width bitvectors. *Smt-jit* uses the LLVM's ORCv2 API for jitting.

Given an SMT formula and a bunch of _full_ assignments in the SMT-LIB2 format, *smt-jit* will compile the SMT formula to LLVM IR, emit x86-64 machine code, and evalute the formula with the assignments. The main motivation is to be able to evaluate or fuzz SMT formulas before quering the main SMT solver for statisfability, e.g., in the KLEE's CexCachingSolver or Z3's local search phase.

Example:
```
(set-logic QF_AUFBV )
(declare-fun arg00 () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  arg00 (_ bv5 32) ) ) ) (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (=  false (=  (_ bv61 8) ?B1 ) ) ) (=  false (=  (_ bv112 8) ?B1 ) ) ) ) )
(check-sat)
(exit)
```
The above formula will be compiled into the following IR:
```
define i32 @smt_0(%struct.bv_array_t** nocapture readonly %arrays) #5 {
entry:
  %arg00 = load %struct.bv_array_t*, %struct.bv_array_t** %arrays, align 8
  %0 = getelementptr inbounds %struct.bv_array_t, %struct.bv_array_t* %arg00, i64 0, i32 0
  %1 = load i64, i64* %0, align 8, !tbaa !2, !alias.scope !6
  %2 = trunc i64 %1 to i32
  %3 = icmp ugt i32 %2, 5
  %.op = and i64 %1, 4294967295
  %4 = select i1 %3, i64 5, i64 %.op
  %5 = getelementptr inbounds %struct.bv_array_t, %struct.bv_array_t* %arg00, i64 0, i32 1, i64 %4, i32 2, i32 0
  %6 = load i64, i64* %5, align 8, !alias.scope !6
  switch i64 %6, label %cont [
    i64 112, label %fail_1
    i64 61, label %fail_1
    i64 0, label %fail_1
  ]

fail_1:                                           ; preds = %entry, %entry, %entry, %cont
  %merge = phi i32 [ 1, %entry ], [ 0, %cont ], [ 1, %entry ], [ 1, %entry ]
  ret i32 %merge

cont:                                             ; preds = %entry
  br label %fail_1
}
```
Compilation of the above formula and evaluation over 1 milion full assignments takes about 30 milliseconds.

---

## Table of Contents

1. [High-level Overview of the SMT-JIT Architecture](#1.-SMT-JIT-Architecture)
2. [Benchmark Collection](#2.-Benchmark-Collection)
3. [bvlib: A custom Mixed-Precision BitVector library](#3.-Mixed-Precition-BitVector-Library)
4. [Handling of BitVector Arrays](#4.-BitVector-Array-Handling)
5. [SMT-JIT Optimization Pipeline](#5.-SMT-JIT-Optimization-Pipeline)
6. [Experimental Evaluation](#6.-Experimental-Evaluation)

## 1. SMT-JIT Architecture

Non-exhaustive list of dependencies required to build the project:
* cmake >= 3.7
* [LLVM 9.0 and Clang 9.0](https://github.com/llvm-project/llvm)
* Customized [sexpresso S-expression library](https://github.com/kuhar/sexpresso)
* (Optional) [KLEE Symbolic Virtual Machine](https://github.com/klee/klee) and all its dependencies (llvm-6.0, Z3, etc.)

The project has 2 main subdirectories:
1. jit -- the SMT JIT evaluator. `jit/bvlib` contains the custom bitvector library implementation.
2. klee -- contains a patch to KLEE that allows for dumping SMT queries and assignment inside the CexCachingSolver. In addition, the directory also has scripts used to generate the benchmarks. `klee/queries` contains bunch of queries dumped from KLEE after running on a few coreutils programs.

SMT-JIT can be built by following the `jit/config*.sh` scripts. Make sure get the `sexpresso` submodule by cloning with `--recursive` or initializing it manually.

## 2. Benchmark Collection
The KLEE benchmarks were collected by instrumenting the CexCachingSolver and dumping the queries in the SMT-LIB2 format, together with all attempted assignments. The benchmarks were collected by running KLEE on `cat` and `echo`, as specified in the `klee/runs.txt` file. The coreutils bitcode was collected by following the official [KLEE tutorial on testing coreutils](https://klee.github.io/tutorials/testing-coreutils/).

The experiments showed that most of the queries attempted by KLEE are fairly simple and involve reasoning about wide bitvectors (up to 512 bits), and short bitvector arrays. SMT-JIT is design to only deal with the subset of the STM-LIB2 that is part of this benchmark suite.

## 3. Mixed-Precition BitVector Library
After analyzing the collected SMT queries it became apparent that to efficiently evaluate the SMT generated by KLEE, an efficient mixed-precision bitvector support is needed.

Even though there are mature mixed-precision arithmetic libraries implemented (e.g., GMP, Boost::MPA, llvm::APInt), the authors decided to implement their custom bitvector library. The key insight is that although KLEE generates operations over bitvectors wider than machine arithmetic (typically 64-bit), the actual runtime values are fairly small and fit the machine integers. With that observation, bvlib support switching from the native to BigInt representations, but it only does it if it actually needs more than 64-bits to perform the requested arithmetic operations. Bvlib tracks *approximate* number of bits needed, and tries very hard not to fall back to the BigInt representation. As shown in the evaluation section, this never happened during the experimentation, and thus the BigInt operations are not implemented and simply trap.

One of the main design goals was to make *all* the basic bitvector arithmetic operations branch-free, and thus cheap to reason about symbolically. Another important goal was to expose the bitvector functions to the JIT optimizer, by maintaining its LLVM bitcode representation. IE, the bitcode library implementation is available to both the host and JIT compilers.

## 4. BitVector Array Handling

## 5. SMT-JIT Optimization Pipeline

## 6. Experimental Evaluation