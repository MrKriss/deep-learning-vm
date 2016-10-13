# deep-learning-vm
vagrant files for a linux VM running Jupyter notebooks and keras deep learning library 

## Quick start 

1. Install Vagrant from https://www.vagrantup.com/downloads.html
2. Clone repo with `git clone https://github.com/MrKriss/deep-learning-vm.git` and cd into it. 
3. Run `vagrant up`
4. ssh into the box with `vagrant ssh`
5. Start the Jupyter server with `jupyter notebook --no-browser --ip=0.0.0.0 --notebook-dir=host/` 
4. Go to http://localhost:8888/tree in your browser to see the Jupyter notebook running on the VM. Everything should be installed. 

If you need to install anything further, ssh into the VM with `vagrant ssh` then install with `conda` or `apt-get`.
