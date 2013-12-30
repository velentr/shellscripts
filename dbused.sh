#!/bin/sh

dropbox_uploader info | grep Used | cut -f2 | sed 's/ Mb/MiB/'
