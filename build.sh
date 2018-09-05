#!/bin/bash
echo "Buiding rethinkdb image..."
docker build -t rethinkdb:latest .
