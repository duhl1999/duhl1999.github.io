#!/bin/bash

hexo clean
hexo g -d
git add -A .
git commit -m "a"
git push origin hexo

