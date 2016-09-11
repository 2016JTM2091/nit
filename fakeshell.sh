#!/bin/bash

`script history_log.txt`

LOG() {
   echo "$(date +%c) $*" >> history_log.txt
}
exit

