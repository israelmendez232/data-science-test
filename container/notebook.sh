apt-get install sudo
sudo apt-get -y update
pip install -r requirements.txt 
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.password=${ACCESS_TOKEN} --NotebookApp.certfile=/notebook/ssl/jupyter.pem
