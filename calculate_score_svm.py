import os
import operator
import argparse


def get_scores_sorted(scores):
    return sorted(scores, key=lambda x: x[1], reverse=True)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--score', required=True)
    parser.add_argument('--test', required=True)
    parser.add_argument('--output', required=True)
    args = parser.parse_args()
    run_id = "SVM"
    score_dict = dict()
    out = open(args.output + ".trec", "w")
    with open(args.test) as test_input, open(args.score) as score_input:
        lines = list(zip(test_input, score_input))
        for line in lines:
            text = line[0]
            score = float(line[1])
            tokens = text.strip().split()
            id, doc_id = tokens[-1].strip()[1:].split("|")
            if id not in score_dict:
                score_dict[id] = list()
            score_dict[id].append([doc_id, score])


        for key, value in score_dict.items():
            rank = 1
            for doc_id, score in get_scores_sorted(value):
                out.write(key + "\tQ0\t" + doc_id + "\t" + str(rank) + "\t" + str(score) + "\t" + run_id + "\n")
                rank += 1
    out.close()





