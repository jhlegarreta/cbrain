CBRAIN
======

CBRAIN is a collaborative, web-enabled grid platform built to facilitate research on large, distributed datasets by managing user access, transfer, caching and provenence for distributed data, as well as mediating interactions with high-performance computing centres (HPCs).

CBRAIN has been built using Ruby on
Rails. In keeping with the rails philosophy of
development, CBRAIN is built using the [model-view-controller
(MVC)](http://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)
architectural pattern, and to great extent, using principles of
[RESTful](http://en.wikipedia.org/wiki/RESTful) design, meaning that the
primary components of the system are modeled as **resources** that interact
with each other using common HTTP verbs. 

CBRAIN consists of two Ruby on Rails Applications: BrainPortal and Bourreau

BrainPortal
-----------

BrainPortal is the frontend of the CBRAIN architecture. It is a Rails
application that provides a web-based graphical user interface to
CBRAIN. Users can upload, tag and search their files. They can launch
compute-intensive processing jobs on remote High-Performance Computing
sites. Remote file repositories can be created to provide files from
any network-enabled system.

Bourreau
--------

Bourreau is the backend of the CBRAIN architecture. It is a
Rails application that is not meant to serve the user directly. It
interacts with the CBRAIN Brainportal application using XML, acting as
an intermediary between user requests through BrainPortal and the cluster
management software running on High-Performance Computing sites. A Bourreau
receives requests to launch a processing task, sets up the required working
directories, runs the process and then sends information about any newly
created files back to BrainPortal. A Bourreau can also be queried about
the jobs that are currently running on the HPC where it resides.




