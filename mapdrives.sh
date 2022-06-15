#!/bin/bash

# This script will replace our current method for mounting network shares. 
# Currently, we rely on a third party program to automatically mount our 
# drives, but I would like to move away from that solution and use a native
# tool to do this job.

BCS -fstype=smbfs :/admin:${USER}@leto/BCS
FTP -fstype=smbfs :/admin:${USER}@leto/FTP
