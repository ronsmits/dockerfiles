#! /bin/bash

docker build -rm=true -t salves/ldap .

ldapadd -h localhost:10389 -x -D cn=admin,dc=salvesdevelopment,dc=nl -f setup.ldif -w toor
