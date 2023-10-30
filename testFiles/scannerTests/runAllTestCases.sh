#!/bin/bash
echo > compilerOutputs.log

../scanner.out comment-in-op.t5 2>&0>> compilerOutputs.log 2>&1>> compilerOutputs.log
../reference/main comment-in-op.t5 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out comments-only.t2 >> compilerOutputs.log
../reference/main comments-only.t2 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out comment-term-eof.t11 >> compilerOutputs.log
../reference/main comment-term-eof.t11 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out eof-only.t1 >> compilerOutputs.log
../reference/main eof-only.t1 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out illegal-chars.t6 >> compilerOutputs.log
../reference/main illegal-chars.t6 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out legit-token-salad.t3 >> compilerOutputs.log
../reference/main legit-token-salad.t3 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out nul-in-str.t10 >> compilerOutputs.log
../reference/main nul-in-str.t10 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out space-in-operator.t4 >> compilerOutputs.log
../reference/main space-in-operator.t4 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out strings.t9 >> compilerOutputs.log
../reference/main strings.t9 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out str-term-eof.t8 >> compilerOutputs.log
../reference/main str-term-eof.t8 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out unterm-str.t7 >> compilerOutputs.log
../reference/main unterm-str.t7 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log

../scanner.out wtf.t12 >> compilerOutputs.log
../reference/main wtf.t12 >> compilerOutputs.log
echo "------------------------" >> compilerOutputs.log
