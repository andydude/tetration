#!/bin/sh

m4 -P src-all.m4 "src-m4/$1.m4" > "../$1.html"
