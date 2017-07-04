#! /usr/bin/env bash

screen -S app
. env/bin/activate
python app.py &