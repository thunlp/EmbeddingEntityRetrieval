
import os
import operator
import argparse

def get_scores_sorted(scores):
	return sorted(scores.items(), key=lambda x:x[1], reverse=True)


if __name__ == "__main__":
	parser = argparse.ArgumentParser()
	parser.add_argument('--model', required=True)
	parser.add_argument('--test', required=True)
	parser.add_argument('--name', required=True)
	args = parser.parse_args()
	run_id = "CA"
	score_dict = dict()
	parameters1 = list()
	parameters2 = list()
	parameters3 = list()
	parameters4 = list()
	parameters5 = list()
	fp = open(args.model + "/f1.ca", "r")
	
	lines = fp.readlines()
	parameter_line = lines[-1]
	parameter_tokens = parameter_line.strip().split()
	for token in parameter_tokens:
		tokens = token.split(":")
		parameters1.append(float(tokens[1]))
	fp.close()
	fp = open(args.model + "/f2.ca", "r")
	
	lines = fp.readlines()
	parameter_line = lines[-1]
	parameter_tokens = parameter_line.strip().split()
	for token in parameter_tokens:
		tokens = token.split(":")
		parameters2.append(float(tokens[1]))
	fp.close()
	fp = open(args.model + "/f3.ca", "r")
	
	lines = fp.readlines()
	parameter_line = lines[-1]
	parameter_tokens = parameter_line.strip().split()
	for token in parameter_tokens:
		tokens = token.split(":")
		parameters3.append(float(tokens[1]))
	fp.close()
	fp = open(args.model + "/f4.ca", "r")
	
	lines = fp.readlines()
	parameter_line = lines[-1]
	parameter_tokens = parameter_line.strip().split()
	for token in parameter_tokens:
		tokens = token.split(":")
		parameters4.append(float(tokens[1]))
	fp.close()
	fp = open(args.model + "/f5.ca", "r")
	
	lines = fp.readlines()
	parameter_line = lines[-1]
	parameter_tokens = parameter_line.strip().split()
	for token in parameter_tokens:
		tokens = token.split(":")
		parameters5.append(float(tokens[1]))
	fp.close()
	fp = open(args.test + "/f1.test." + args.name, "r")
	lines = fp.readlines()
	for line in lines:
		features = list()
		tokens = line.strip().split()
		score = 0.0
		for counter in range(len(parameters1)):
			raw = tokens[counter+2].split(":")
			score += float(raw[1]) * parameters1[counter]
		id_token = tokens[-1]
		id_tokens = id_token[1:].split("|")

		if id_tokens[0] not in score_dict:
			score_dict[id_tokens[0]] = {id_tokens[1]:score}
		else:
			score_dict[id_tokens[0]][id_tokens[1]] = score
	fp.close()
	fp = open(args.test + "/f2.test." + args.name, "r")
	lines = fp.readlines()
	for line in lines:
		features = list()
		tokens = line.strip().split()
		score = 0.0
		for counter in range(len(parameters2)):
			raw = tokens[counter+2].split(":")
			score += float(raw[1]) * parameters2[counter]
		id_token = tokens[-1]
		id_tokens = id_token[1:].split("|")

		if id_tokens[0] not in score_dict:
			score_dict[id_tokens[0]] = {id_tokens[1]:score}
		else:
			score_dict[id_tokens[0]][id_tokens[1]] = score
	fp.close()
	fp = open(args.test + "/f3.test." + args.name, "r")
	lines = fp.readlines()
	for line in lines:
		features = list()
		tokens = line.strip().split()
		score = 0.0
		for counter in range(len(parameters3)):
			raw = tokens[counter+2].split(":")
			score += float(raw[1]) * parameters3[counter]
		id_token = tokens[-1]
		id_tokens = id_token[1:].split("|")

		if id_tokens[0] not in score_dict:
			score_dict[id_tokens[0]] = {id_tokens[1]:score}
		else:
			score_dict[id_tokens[0]][id_tokens[1]] = score
	fp.close()
	fp = open(args.test + "/f4.test." + args.name, "r")
	lines = fp.readlines()
	for line in lines:
		features = list()
		tokens = line.strip().split()
		score = 0.0
		for counter in range(len(parameters4)):
			raw = tokens[counter+2].split(":")
			score += float(raw[1]) * parameters4[counter]
		id_token = tokens[-1]
		id_tokens = id_token[1:].split("|")

		if id_tokens[0] not in score_dict:
			score_dict[id_tokens[0]] = {id_tokens[1]:score}
		else:
			score_dict[id_tokens[0]][id_tokens[1]] = score
	fp.close()
	fp = open(args.test + "/f5.test." + args.name, "r")
	lines = fp.readlines()
	for line in lines:
		features = list()
		tokens = line.strip().split()
		score = 0.0
		for counter in range(len(parameters5)):
			raw = tokens[counter+2].split(":")
			score += float(raw[1]) * parameters5[counter]
		id_token = tokens[-1]
		id_tokens = id_token[1:].split("|")

		if id_tokens[0] not in score_dict:
			score_dict[id_tokens[0]] = {id_tokens[1]:score}
		else:
			score_dict[id_tokens[0]][id_tokens[1]] = score
	fp.close()
	out = open(args.name + ".trec", "w")
	for key, value in score_dict.items():
		rank = 1
		for doc_id, score in get_scores_sorted(value):
			out.write(key + "\tQ0\t" + doc_id + "\t" + str(rank) + "\t" + str(score) + "\t" + run_id + "\n")
			rank += 1
	out.close()





