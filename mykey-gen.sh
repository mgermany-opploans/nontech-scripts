#!/bin/bash

set -x

USERNAME=$1


ssh-keygen -t rsa -f ${USERNAME}_claritydirectmail


