#!/bin/sh

filebeat modules enable nginx
# filebeat setup
service filebeat starts
nginx -g 'daemon off;'

