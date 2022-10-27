
rsync -avzh --exclude '.git' --exclude '*ckpt*' --exclude '__pycache__' nbloomfield@spartan.hpc.unimelb.edu.au:/data/cephfs/punim0980/suncet/log . 
# rm staging/*

# rsync -avzh --exclude 'logs' --exclude '.git' --exclude '__pycache__' nbloomfield@spartan.hpc.unimelb.edu.au:/data/cephfs/punim0980/simclr/runme.out . 
# rsync -avzh nbloomfield@spartan.hpc.unimelb.edu.au:/data/cephfs/punim0980/simclr-pytorch/*.out .