1. No Direct Dependencies
-------------------------

Status
------

Accepted

Context
-------

This package must be consumable by any Open edX application, whether it is written in Javascript, Python, or Ruby.

Conceptually this project should be considered a simple directory of assets.

Decision
--------

The ``package.json`` file in this repository will contain no dependencies and no main javascript entry point.

Consequences
------------

By not leveraging the ability of Javascript or Python to manage exports, implementations of this branding interface will not have any flexibility to perform custom logic to fetch assets (e.g. inside a function like `getAsset(name)`).
