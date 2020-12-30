#!/bin/bash

set -e

cd /home/duhl/hexo/
hexo clean
hexo g -d
git add -A .
git commit -m "a"
git push origin hexo

echo "#######################################"
echo " "
echo "              finished!                "
echo " "
echo "#######################################"
