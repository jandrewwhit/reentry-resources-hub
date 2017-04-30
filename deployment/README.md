# Deploying the NC Reentry Hub Server

*Important:* These instructions configure a CentOS server and deploy the reentry hub on it. If you wish to run on a different OS, you will need to modify the configuration and deployment instructions accordingly.

Set up a vanilla CentOS server and copy the ```install.sh``` file to it or create it. Log in and then run from the directory where you created the file:
````
    chmod +x ./install.sh
    sudo ./install.sh
````
You may also run the individual commands, but remember to sudo each command. Note that you must use sudo twice in the curl command, i.e.,
````
    sudo curl -sL https://rpm.nodesource.com/setup_7.x | sudo bash -
````

Next, clone this repository into ```/opt``` and run the ```deploy.sh``` script.
````
  cd /opt
  sudo git clone https://github.com/CodeForNC/reentry-resources-hub.git
  cd reentry-resources-hub/deployment
  sudo ./deploy.sh
````

or run the individual commands.

To update from Github and redeploy, run:

````
  git pull
  sudo systemctl restart simplicitygql1
  sudo systemctl restart simplicitygql2
````

To see the status of the node services, run, e.g., ````sudo systemctl status simplicitygql1```` 
or ````sudo journalctl -u simplicitygql1````.

Node console logging goes to /var/log/messages

