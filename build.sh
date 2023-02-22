#!/bin/bash

mamba run --live-stream -n mkdocs mkdocs build;
docker compose build;