# VENV README

Create and provision a Python virtualenv in the local `.venv` dir

The Python version should at least is the default one on the machine.
  
By default, the venv lives at `/opt/fss/virtualenvs/ansible-<version>`

## Requirements

Linux 

# Setup Python 3

    $ asdf install python 3.7.7

    $ asdf local python 3.7.7

# Prepare package requirements file
    
## pip-compile 

This prepares the `requirements.in.txt` file that contains the locked down dependencies.

First install the `pip-tools` project including `pip-compile`

    $ . .venv.
    ...
    Collecting click>=7
      Using cached click-7.1.2-py2.py3-none-any.whl (82 kB)
    Installing collected packages: click, pip-tools
    Successfully installed click-7.1.2 pip-tools-5.1.2

Now create the new dependency file

    $ <edit requirements.in to new deps>
    $ pip-compile --quiet --generate-hashes --output-file=requirements.in.txt requirements.in

# Using in a virtualenv

    Given `/home/me/.asdf/installs/python/3.8.5/bin/python`

    $ virtualenv -p $(asdf which python) .venv

    $ . .venv/bin/activate 
    (.venv)
    $ pip install -r requirements.in.txt

### Use the venv

    $ .  venv/bin/activate
    (venv) 

### Stop using venv

    (venv) 
    $ deactivate

    
## Using Python 3

Python 3 uses the `venv` module to perform virtualenv functions. 

    $ sudo python3 -m venv /opt/fssvenvs/ansible
    $ sudo /opt/fssvenvs/ansible/bin/python3 -m pip install -r requirements.txt

## etc.

