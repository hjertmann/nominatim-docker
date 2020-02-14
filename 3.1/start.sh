#!/bin/bash

stopServices() {
        service apache2 stop
        service postgresql stop
}
trap stopServices TERM

#service postgresql start
service apache2 start

# fork a process and wait for it
tail -f /var/log/apache2/*.log &
wait
