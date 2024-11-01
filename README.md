# Ping Exporter with Prometheus and Grafana

This repository contains a setup for a **Ping Exporter** application that monitors the availability of a target host, using **Prometheus** for scraping metrics and **Grafana** for visualization. The application is packaged in Docker containers for easy deployment and scalability.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration Files](#configuration-files)
    - [Dockerfile](#dockerfile)
    - [docker-compose.yml](#docker-composeyml)
    - [prometheus.yml](#prometheusyml)

## Introduction

The Ping Exporter is designed to ping a specified target IP address and expose the results as metrics. This data can be scraped by Prometheus and visualized using Grafana, providing real-time insights into the availability of the target host.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine.
- [Docker Compose](https://docs.docker.com/compose/install/) installed.

## Installation

1. Clone the repository: ( don't forget to start your docker services )

   ```bash
   git clone https://github.com/DestrebecqClara/monitoring.git
   cd monitoring
   docker compose up --build

## How to Get and Use the Docker Image

If you prefer to use a pre-built Docker image from Docker Hub instead of cloning the repository, follow these step-by-step instructions to pull the image and run it.

## 1. Install Docker

Ensure you have Docker installed on your machine. If you haven’t installed it yet, download and install Docker from [Docker's official website](https://www.docker.com/get-started).

## 2. Open Your Terminal

Open a command line interface (Command Prompt, PowerShell, Terminal, etc.) on your operating system.

## 3. Pull the Docker Image

1. Use the `docker pull` command to download the pre-built Docker image from Docker Hub. Don't forget to configure your prometheus.yml file.

   ```bash
   docker pull destrebecqclara/ping-exporter:1.0.0
    
2. Use the `docker run` command to run the Docker image.

   ```bash
   docker run -d -p 8000:80 -e PORT=80 destrebecqclara/ping-exporter:1.0.0

   
## 5. Access the services

Ping Exporter: http://localhost:8000/?target=1.1.1.1
Prometheus: http://localhost:9000
Grafana: http://localhost:3000 (default login: admin/admin)

## Usage
Ensure your prometheus.yml is properly configured to scrape the Ping Exporter metrics.
In Grafana, create dashboards to visualize the metrics collected by Prometheus.

1. Ensure to build the image of node-exporter to get metrics from your server, use the following command:

    ```bash
    docker pull destrebecqclara/node-exporter:1.0.0

