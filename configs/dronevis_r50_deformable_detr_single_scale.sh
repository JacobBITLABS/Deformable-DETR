#!/usr/bin/env bash

set -x

EXP_DIR=exps4/r50_deformable_detr_single_scale
PY_ARGS=${@:1}

python3 -u main.py \
    --num_feature_levels 1 \
    --output_dir ${EXP_DIR} \
    --dataset_file dronevis \
    --epochs 500 \
    --data_path ../dronevis_dataset/ \
    ${PY_ARGS}