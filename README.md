# Virgo upgrade

Simple python script to upgrade requirements.yml file

## Usage

### Check if there are outdated roles

    $ docker run -it -v $HOME/.ssh/id_rsa:/root/.ssh/id_rsa -v $PWD:/ansible elmariofredo/virgo:v2.0 /upgrade.py --check
    $ echo $?
    1

### Update outdated roles

    $ docker run -it -v $HOME/.ssh/id_rsa:/root/.ssh/id_rsa -v $PWD:/ansible elmariofredo/virgo:v2.0 /upgrade.py
    Writing new role versions to ./requirements.yml
    $ echo $?
    0

## Options

    $ ./upgrade.py -h
    usage: upgrade.py [-h] [-f FILE] [--check]

    Check/Upgrade requirements.yml file

    optional arguments:
    -h, --help  show this help message and exit
    -f FILE     path to requirements.yml file
    --check     Fail on outdated roles
