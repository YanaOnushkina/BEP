#!/bin/bash
source /mnt/server-home/TUE/20175985/miniconda3/etc/profile.d/conda.sh
conda activate DL

python "/mnt/server-home/TUE/20175985/myTask.py" \
                    --job-dir "/mnt/server-home/TUE/20175985/jobs" \
                    --arch "vggFace" \
                    --type "none" \
                    --save-path "vggStage1Model" \
                    --optimizer "Adam" \
                    --path-train "/mnt/server-home/TUE/20175985/BepDataResNet/npzData/trainDataNotProcessedFull7Classes.npz" \
                    --path-test "/mnt/server-home/TUE/20175985/BepDataResNet/npzData/testDataNotProcessedBalanced7Classes3k.npz" \
                    --modelpath "" \
                    --batch-size 128 \
                    --balance-weights True

conda deactivate
exit 0
