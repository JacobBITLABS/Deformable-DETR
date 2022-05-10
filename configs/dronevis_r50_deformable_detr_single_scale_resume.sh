#!/usr/bin/env bash

# SCRIPT RESUMING MODEL

set -x

EXP_DIR=exps2/r50_deformable_detr_single_scale
PY_ARGS=${@:1}

python3 -u main.py \
    --num_feature_levels 1 \
    --output_dir ${EXP_DIR} \
    --dataset_file dronevis \
    --epochs 50 \
    --resume weights/r50_deformable_detr_single_scale-checkpoint.pth \
    --data_path ../dronevis_dataset/ \
    ${PY_ARGS}