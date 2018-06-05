=============
Apra Dotfiles
=============

.. image:: https://img.shields.io/github/license/Naereen/StrapDown.js.svg
   :target: https://github.com/apra93/dotfiles/blob/master/LICENSE.md      
      
Welcome to my dotfiles page. It's a work in progress, but is at a point where it
can be used (by me) on a number of systems. Also, there are no guarantees that
this will work for people other than myself, my first guess being because of the
forked submodules. Maybe in the future I'll get around to making everything more
general, but for now the documentation here is meant to serve as a reference for
myself when I inevitably forget how it all works in a few days.

Requirements
------------

The requirements differ depending on the desired shell, OS, organization, etc.
Currently all installation is done through ``apt-get``, meaning the ``install``
script to automatically install the requirements will fail if the command isn't
available (i.e. no Centos support yet).

Additional Requirements:

- ``zsh > 5.3``
- ``bash > 4.0``

Installation
------------

Clone the repo into a suitable directory: ::

  $ git clone https://github.com/apra93/dotfiles.git

*Note*: Running the ``install`` script will create a softlink to the repo in the
``$HOME`` directory called ``.dotfiles``, so there are no limitations to where
this should be cloned.

Run the installation script: ::

  $ sudo ./install

This will clear out dead symlinks, create all the listed symlinks, update your
``apt-get`` packages, `` apt-get``install the requirements listed in the
``requirements.txt`` file, and then recursively clone or update all the git
submodules.

Source Order
------------

Generally, the order of sourced files follow the following scheme:

- Common: Setup common to all OSs, organizations, or shells
- Common-Local: Local common setup
- OS: Setup common between different OSs
- OS-Local: Local OS setup
- Shell: Setup common to the specific shell type
- Shell-Local: Setup common to the local shell type


Acknowledgements
----------------

- Dotfile setup powered by `dotbot <https://git.io/dotbot>`_
- Zsh setup powered by `ZIM <https://github.com/zimfw/zimfw>`_
