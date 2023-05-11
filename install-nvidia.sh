# https://rpmfusion.org/Howto/NVIDIA#Current_GeForce.2FQuadro.2FTesla
sudo dnf install akmod-nvidia -y
sudo dnf install xorg-x11-drv-nvidia-cuda -y


# https://rpmfusion.org/Howto/CUDA
sudo dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/fedora37/x86_64/cuda-fedora37.repo
sudo dnf clean all
sudo dnf module disable nvidia-driver -y
sudo dnf install cuda -y

# cuda 12.1
sudo dnf install libnccl-2.18.1-1+cuda12.1 libnccl-devel-2.18.1-1+cuda12.1 libnccl-static-2.18.1-1+cuda12.1 -y
# cuda 12.0
# sudo dnf install libnccl-2.18.1-1+cuda12.0 libnccl-devel-2.18.1-1+cuda12.0 libnccl-static-2.18.1-1+cuda12.0 -y
# cuda 11.0
# sudo dnf install libnccl-2.18.1-1+cuda11.0 libnccl-devel-2.18.1-1+cuda11.0 libnccl-static-2.18.1-1+cuda11.0 -y

sudo dnf install libnccl libnccl-devel libnccl-static -y
# sudo dnf install https://developer.download.nvidia.com/compute/machine-learning/repos/rhel8/x86_64/nvidia-machine-learning-repo-rhel8-1.0.0-1.x86_64.rpm -y
