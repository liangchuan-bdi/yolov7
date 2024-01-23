choice=$1

if [ "$choice" = "full" ]; then

CUDA_VISIBLE_DEVICES=0 PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:32 python train_target.py --workers 8 --device 0 --batch-size 8 --data data/target.yaml --img 640 640 --cfg cfg/training/yolov7_target.yaml --weights '' --name yolov7 --hyp data/hyp.scratch.p5.yaml 

fi

if [ "$choice" = "tiny" ]; then

CUDA_VISIBLE_DEVICES=0 PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:32 python train_target.py --workers 8 --device 0 --batch-size 32 --data data/target.yaml --img 640 640 --cfg cfg/training/yolov7-tiny_target.yaml --weights '' --name yolov7_tiny --hyp data/hyp.scratch.p5.yaml

fi

if [ "$choice" = "tiny_merged_coco" ]; then

CUDA_VISIBLE_DEVICES=0 PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:32 python train_target.py --workers 8 --device 0 --batch-size 32 --data data/target_merged_coco.yaml --img 640 640 --cfg cfg/training/yolov7-tiny_target.yaml --weights '' --name yolov7_tiny --hyp data/hyp.scratch.p5.yaml

fi