#!/bin/bash
tasks=("index_ld" "listsearch" "qald" "semsearch" "total")
models=("baseline" "transe" "elr")
epoches=(1 2 3 4 5)
for task in ${tasks[@]}
do
    for model in ${models[@]}
    do
        mkdir $task/$model\_svm
        for epoch in ${epoches[@]}
        do
            ./svm_rank_learn -c 5 $task/$model\_svm/train$epoch $task/$model\_svm/model$epoch
            ./svm_rank_classify $task/$model\_svm/test$epoch $task/$model\_svm/model$epoch $task/$model\_svm/predict$epoch
            python calculate_score_svm.py --score $task/$model\_svm/predict$epoch --test $task/$model\_svm/test$epoch --output $task/$model\_svm/test$epoch
        done
        cat $task/$model\_svm/test1.trec $task/$model\_svm/test2.trec $task/$model\_svm/test3.trec $task/$model\_svm/test4.trec $task/$model\_svm/test5.trec > $task/$model\_svm/test.trec
        ./trec_eval.8.1/trec_eval -c -q ./$task\_encode $task/$model\_svm/test.trec > $task/eval\_$model\_svm
    done
done