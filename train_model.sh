MODEL_FLAGS="--image_size 128 --num_channels 128 --num_res_blocks 3"
DIFFUSION_FLAGS="--diffusion_steps 4000 --noise_schedule linear"
TRAIN_FLAGS="--lr 1e-4 --batch_size 128"
XRT_TPU_CONFIG="localservice;0;localhost:51011"
python3 scripts/image_train.py --data_dir portraits $MODEL_FLAGS $DIFFUSION_FLAGS $TRAIN_FLAGS