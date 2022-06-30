#!/usr/bin/env bash

set -x

EXP_DIR=exps/visDrone_multiscale/r50_deformable_detr_multi_scale
PY_ARGS=${@:1}

python3 -u main.py \
    --num_feature_levels 4 \
    --output_dir ${EXP_DIR} \
    --dataset_file dronevis \
    --epochs 50 \
    --data_path ../visDrone2019_mot_dataset/ \
    ${PY_ARGS}