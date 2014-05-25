#!/bin/bash
docker run -v /home/ron/html:/var/www -p 80:80 -d rons/apache
