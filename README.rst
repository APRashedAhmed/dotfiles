=============
Apra Dotfiles
=============
Currently under construction...

Requirements
------------

The requirements differ depending on the desired shell, OS, organization, etc.
Currently all installation is done through ``apt-get``, meaning the ``install``
script to automatically install the requirements will fail if the command isn't
available.

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

Acknowledgements
----------------

- Dotfile setup powered by `dotbot <https://git.io/dotbot>`_
- Zsh setup powered by `ZIM <https://github.com/zimfw/zimfw>`_

License
-------
Copyright (c) 2017-2018 Abdullah P Rashed Ahmed. Released under the MIT License.
See LICENSE.md for details.

