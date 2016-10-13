
# Installing the GNU C compiler and GNU C++ compiler
# See https://help.ubuntu.com/community/InstallingCompilers
sudo apt-get -qq update
sudo apt-get install -y -qq build-essential

# Install Miniconda 
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
CONDA_PREFIX="/home/vagrant/miniconda3"

if [ ! -d $CONDA_PREFIX ]; then
  bash Miniconda3-latest-Linux-x86_64.sh -f -b -p "${CONDA_PREFIX}"
fi

# Add conda to the path
echo "# added by Miniconda 3.8.3 installer" >> /home/vagrant/.bashrc 
echo "export PATH=\"$CONDA_PREFIX/bin:\$PATH\"" >> /home/vagrant/.bashrc 

export PATH="$CONDA_PREFIX/bin:$PATH"
source /home/vagrant/.bashrc

# Update conda
conda update -q -y conda 

# Install basic Python dependencies 
conda install -q -y ipython jupyter pandas scikit-learn numpy scipy

# Install keras 
conda install -c conda-forge -q -y keras

# Simlink host mounted directory to where vargant Jupyter boots up 
ln -s /vagrant/ /home/vagrant/host
