### search ###
# imagenet
# python train_search_imagenet.py --data data/imagenet --save ./train_search.log #--tmp_data_dir /path/to/your/sampled/data

# cifar10
# CUDA_VISIBLE_DEVICES=4 nohup python train_search.py --data data/cifar/cifar10/ --report_freq 10 --save cifar10 > search_cifar10.log 2>&1 &

### eval ###
# cifar10
CUDA_VISIBLE_DEVICES=4 nohup python train.py --data data/cifar/cifar10/ --report_freq 10 --save gbc_train_cifar10 --auxiliary --cutout --arch gbc_train_cifar > eval_gbc_train_cifar10.log 2>&1 &