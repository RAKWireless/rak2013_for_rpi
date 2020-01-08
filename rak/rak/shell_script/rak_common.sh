#!/bin/bash

function echo_normal()
{
    echo -e $1
}

function echo_success()
{
    echo -e "\033[1;32m$1\033[0m"
}

function echo_error()
{
    echo -e "\033[1;31mERROR: $1\033[0m"
}

function echo_warn()
{
    echo -e "\033[1;33mWARNING: $1\033[0m"
}



