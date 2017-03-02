# scripts
Clone this project,
and add the path to $HOME/.profile as below in your appropriate directory.  

    $ git clone https://github.com/leorge/scripts.git
    $ echo $PATH          # confirm
    $ cp ~/.profile .     # back up
    $ echo "PATH=\$PATH:`pwd`/scripts" >> ~/.profile

Login again.

    $ echo $PATH
