#!/bin/bash

echo "🚀 Starting Prometheus for metrics analysis..."
./prometheus --config.file=prometheus.yml
echo "📊 Prometheus UI: http://localhost:9090"
echo "🎯 Monitoring: http://localhost:8080/actuator/prometheus"
