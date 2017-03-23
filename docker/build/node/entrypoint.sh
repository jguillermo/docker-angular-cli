#!/bin/sh
set -e

sed -i -e "s/:$TMP_UID:$TMP_UID:/:$DEV_UID:$DEV_GID:/" /etc/passwd
sed -i -e "s/$TMP_USER:x:$TMP_UID:/$TMP_USER:x:$DEV_GID:/" /etc/group

cd $APP_DIR && gosu $DEV_UID:$DEV_GID $*
