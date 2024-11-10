#!/bin/bash
home=$HOME
plus='+'
homeplus=$home $plus
homeplus="$home $plus"
echo $homeplus
homeplus='$home $plus'
echo $homeplus
echo ${home}plus

