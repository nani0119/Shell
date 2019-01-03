#!/bin/bash -
#===============================================================================
#
#          FILE: backup_all_modified_file.sh
#
#         USAGE: ./backup_all_modified_file.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/03/2019 07:02:09 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# 在一个"tarball"中(经过tar和gzip处理过的文件)备份最后24小时当前目录下d所有修改的文件. 

BACKUPFILE=backup-$(date +%m-%d-%Y)
archive=${1:-$BACKUPFILE}                        # 如果在命令行中没有指定备份文件的文件名,那么将默认使用默认的


tar cvf - `find . -mtime -1 -type f -print` > $archive.tar # 通过“-” tar输出到标准输出 “>” 使标准输出重定向到文件
# find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"
gzip $archive.tar

echo "Directory $PWD backed up in archive file \"$archive.tar.gz\"."

exit 0
