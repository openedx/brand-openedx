1. Minimal Breaking Changes
---------------------------

Status
------

Accepted

Context
-------

This package and the interface it defines will be relied upon by nearly every application in Open edX that displays branding or uses a SASS theme.

Breaking changes in this repository would have far-reaching impacts on both Open edX applications and teams that maintain their own branding packages that implement this interface.

Decision
--------

This package will be published and versioned on npm, but we will attempt to avoid breaking changes through any means possible.

If you must make a breaking change consider performing the change with an `expand and contract pattern <https://martinfowler.com/bliki/ParallelChange.html>`_.

References
----------

* https://martinfowler.com/bliki/ParallelChange.html
