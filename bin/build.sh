#!/bin/bash -e

declare -r bin_dir="$(cd $(dirname $0); pwd)"

docker build --rm -t daspoonman/ansible:latest ${bin_dir}/..
