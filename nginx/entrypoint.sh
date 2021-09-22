#!/bin/sh

filebeat modules enable nginx
filebeat setup
# filebeat -e
service filebeat starts
nginx -g 'daemon off;'

