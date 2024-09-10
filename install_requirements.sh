#
#   Install `setup-tools``
# 
sudo apt-get install build-essential

#
#   Conda Environment Setup
#
eval "$(conda shell.bash hook)"
conda init
conda deactivate
conda create -n bchoc python=3.11
conda init
conda activate bchoc
pip install -r requirements.txt

#
#   Build the `bchoc` program
#
make dist
./bchoc