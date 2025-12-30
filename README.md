# Tennis Services Observability Lab

> A hands-on laboratory for learning metrics, monitoring and observability 
> using a real Spring Boot tennis applications.

## Lab Objectives:
- 📊 Learn Prometheus metrics collection and visualization
- ⚙️ Understand Spring Boot Actuator endpoints
- 🔍 Practice PromQL query language for analysis
- 🚀 Analyze application performance in real-time
- 📈 Build monitoring intuition for backend services

## Quick Start:
1. Run tennis apps:`./gradlew bootRun`
2. Start Prometheus: `./start-prometheus.sh`
3. Generate traffic: `./traffic-generator.sh`
4. Open Prometheus: http://localhost:9090
5. Use queries from `queries.txt`

## Key Metrics to Watch:
- **RPS**: `rate(http_server_requests_seconds_count[1m])`
- **Response Time**: `http_server_requests_seconds_sum / http_server_requests_seconds_count`
- **Memory**: `jvm_memory_used_bytes{area="heap"}`
- **Errors**: `rate(http_server_requests_seconds_count{status=~"5.."}[5m])`
