#!/bin/bash

mkdir /grid
mv -r * /grid
cd /grid
rm apps/grid
npm i;
npm install -g @gridspace/app-server
ls -lha apps
ln -s .. apps/grid

