#!/bin/bash

# Compile static site
mamba run --live-stream -n mkdocs mkdocs build;

# Build Docker images
docker compose build;