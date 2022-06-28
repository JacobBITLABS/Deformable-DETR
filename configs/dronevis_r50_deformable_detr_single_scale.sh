#!/usr/bin/env bash

set -x

EXP_DIR=exps/test2/r50_deformable_detr_single_scale
PY_ARGS=${@:1}

python3 -u main.py \
    --num_feature_levels 1 \
    --output_dir ${EXP_DIR} \
    --dataset_file dronevis \
    --epochs 50 \
    --data_path ../visDrone2019_mot_dataset/ \
    ${PY_ARGS}