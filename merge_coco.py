import fileinput
import random

file_paths = ['./dataset/UAV07/train.txt', './dataset/coco_car/train.txt']

random_lines = []
    
for file_path in file_paths:
    with open(file_path, 'r') as in_file:
        random_lines += in_file.readlines()
random.shuffle(random_lines)  

with open('./dataset/train_merged.txt', 'w', encoding='utf-8') as output_file:
    for line in random_lines:
        output_file.write(line)
    

file_paths = ['./dataset/UAV07/val.txt', './dataset/coco_car/val.txt']

random_lines = []
    
for file_path in file_paths:
    with open(file_path, 'r') as in_file:
        random_lines += in_file.readlines()
random.shuffle(random_lines) 

with open('./dataset/val_merged.txt', 'w', encoding='utf-8') as output_file:
    for line in random_lines:
        output_file.write(line)