cd ./index_ld
mkdir baseline_models
java -jar RankLib-2.1-patched.jar -train baseline.shuffled -ranker 4 -kcv 5 -kcvmd baseline_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model baseline_models --test ./baseline_split --name baseline.shuffled
../trec_eval.8.1/trec_eval -c -q ../INEX_LD_encode baseline.shuffled.trec > eval_baseline_ca
cd ..


cd ./semsearch
mkdir baseline_models
java -jar RankLib-2.1-patched.jar -train baseline.shuffled -ranker 4 -kcv 5 -kcvmd baseline_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model baseline_models --test ./baseline_split --name baseline.shuffled
../trec_eval.8.1/trec_eval -c -q ../SemSearch_ES_encode baseline.shuffled.trec > eval_baseline_ca
cd ..

cd ./qald
mkdir baseline_models
java -jar RankLib-2.1-patched.jar -train baseline.shuffled -ranker 4 -kcv 5 -kcvmd baseline_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model baseline_models --test ./baseline_split --name baseline.shuffled
../trec_eval.8.1/trec_eval -c -q ../QALD_encode baseline.shuffled.trec > eval_baseline_ca
cd ..


cd ./listsearch
mkdir baseline_models
java -jar RankLib-2.1-patched.jar -train baseline.shuffled -ranker 4 -kcv 5 -kcvmd baseline_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model baseline_models --test ./baseline_split --name baseline.shuffled
../trec_eval.8.1/trec_eval -c -q ../ListSearch_encode baseline.shuffled.trec > eval_baseline_ca
cd ..

cd ./total
mkdir baseline_models
java -jar RankLib-2.1-patched.jar -train baseline.shuffled -ranker 4 -kcv 5 -kcvmd baseline_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model baseline_models --test ./baseline_split --name baseline.shuffled
../trec_eval.8.1/trec_eval -c -q ../TOTAL_encode baseline.shuffled.trec > eval_baseline_ca
cd ..

cd ./index_ld
mkdir elr_models
java -jar RankLib-2.1-patched.jar -train elr.shuffled -ranker 4 -kcv 5 -kcvmd elr_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model elr_models --test ./elr_split --name elr.shuffled
../trec_eval.8.1/trec_eval -c -q ../INEX_LD_encode elr.shuffled.trec > eval_elr_ca
cd ..


cd ./semsearch
mkdir elr_models
java -jar RankLib-2.1-patched.jar -train elr.shuffled -ranker 4 -kcv 5 -kcvmd elr_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model elr_models --test ./elr_split --name elr.shuffled
../trec_eval.8.1/trec_eval -c -q ../SemSearch_ES_encode elr.shuffled.trec > eval_elr_ca
cd ..

cd ./qald
mkdir elr_models
java -jar RankLib-2.1-patched.jar -train elr.shuffled -ranker 4 -kcv 5 -kcvmd elr_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model elr_models --test ./elr_split --name elr.shuffled
../trec_eval.8.1/trec_eval -c -q ../QALD_encode elr.shuffled.trec > eval_elr_ca
cd ..

cd ./listsearch
mkdir elr_models
java -jar RankLib-2.1-patched.jar -train elr.shuffled -ranker 4 -kcv 5 -kcvmd elr_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model elr_models --test ./elr_split --name elr.shuffled
../trec_eval.8.1/trec_eval -c -q ../ListSearch_encode elr.shuffled.trec > eval_elr_ca
cd ..

cd ./total
mkdir elr_models
java -jar RankLib-2.1-patched.jar -train elr.shuffled -ranker 4 -kcv 5 -kcvmd elr_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model elr_models --test ./elr_split --name elr.shuffled
../trec_eval.8.1/trec_eval -c -q ../TOTAL_encode elr.shuffled.trec > eval_elr_ca
cd ..


cd ./index_ld
mkdir transe_models
java -jar RankLib-2.1-patched.jar -train transe.shuffled -ranker 4 -kcv 5 -kcvmd transe_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model transe_models --test ./transe_split --name transe.shuffled
../trec_eval.8.1/trec_eval -c -q ../INEX_LD_encode transe.shuffled.trec > eval_transe_ca
cd ..

cd ./semsearch
mkdir transe_models
java -jar RankLib-2.1-patched.jar -train transe.shuffled -ranker 4 -kcv 5 -kcvmd transe_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model transe_models --test ./transe_split --name transe.shuffled
../trec_eval.8.1/trec_eval -c -q ../SemSearch_ES_encode transe.shuffled.trec > eval_transe_ca
cd ..

cd ./qald
mkdir transe_models
java -jar RankLib-2.1-patched.jar -train transe.shuffled -ranker 4 -kcv 5 -kcvmd transe_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model transe_models --test ./transe_split --name transe.shuffled
../trec_eval.8.1/trec_eval -c -q ../QALD_encode transe.shuffled.trec > eval_transe_ca
cd ..

cd ./listsearch
mkdir transe_models
java -jar RankLib-2.1-patched.jar -train transe.shuffled -ranker 4 -kcv 5 -kcvmd transe_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model transe_models --test ./transe_split --name transe.shuffled
../trec_eval.8.1/trec_eval -c -q ../ListSearch_encode transe.shuffled.trec > eval_transe_ca
cd ..


cd ./total
mkdir transe_models
java -jar RankLib-2.1-patched.jar -train transe.shuffled -ranker 4 -kcv 5 -kcvmd transe_models/ -kcvmn ca -metric2T p@10  -metric2t MAP
python ../calculate_score.py --model transe_models --test ./transe_split --name transe.shuffled
../trec_eval.8.1/trec_eval -c -q ../TOTAL_encode transe.shuffled.trec > eval_transe_ca
cd ..
