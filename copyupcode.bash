
rsync -avzh --exclude 'log' --exclude 'cifar10_models' --exclude '.git' --exclude 'tf2' --exclude '__pycache__' . nbloomfield@spartan.hpc.unimelb.edu.au:/data/cephfs/punim0980/suncet
# rm staging/*

# rsync -avzh nbloomfield@spartan.hpc.unimelb.edu.au:/data/cephfs/punim0980/simclr-pytorch/*.out .