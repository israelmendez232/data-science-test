apt-get install sudo
sudo apt-get -y update
pip install -r requirements.txt 
jupyter notebook --ip='localhost' --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''
