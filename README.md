# Nginx Log Analyser

Nginx Log Analyser is a shell script designed to analyze the Nginx access log file (`nginx-access.log`). The script provides insights into the top IP addresses, requested paths, HTTP response status codes, and user agents that appear in the logs.

## Features

The script extracts the following information from the Nginx access log:

- **Top 5 IP addresses** with the most requests
- **Top 5 most requested paths**
- **Top 5 response status codes**
- **Top 5 user agents**

## Prerequisites

- A Unix-based system (Linux/macOS)
- Nginx access log file (`nginx-access.log`) in the current directory
- `awk`, `sort`, and `uniq` utilities installed (default on most Unix-based systems)

## Installation

1. Clone this repository or download the script file.

```bash
git clone https://github.com/janisadhi/Nginx_Log_Analyser.git
cd Nginx_Log_Analyser
```

2. Make the script executable.

```bash
chmod +x nginx_log_analyser.sh
```

## Usage

1. Ensure the `nginx-access.log` file is located in the same directory as the script.
2. Run the script using the following command:

```bash
./nginx_log_analyser.sh
```

The script will output the top 5 IP addresses, requested paths, response status codes, and user agents in the Nginx access log.

## Example Output

```bash
_____________________________________________________________

Nginx log file analyser

______________________________________________________________

Top 5 IP address with the most request
192.168.1.1 - 150 requests
192.168.1.2 - 140 requests
192.168.1.3 - 130 requests
192.168.1.4 - 120 requests
192.168.1.5 - 110 requests

Top 5 most requested paths
/ - 300 requests
/index.html - 200 requests
/contact - 150 requests
/about - 120 requests
/api/v1 - 100 requests

Top 5 response status code
200 - 500 requests
404 - 100 requests
500 - 50 requests
301 - 30 requests
403 - 20 requests

Top 5 user agents
Mozilla/5.0 - 400 requests
curl/7.64.1 - 100 requests
Mozilla/4.0 - 80 requests
Safari/537.36 - 60 requests
PostmanRuntime/7.28.0 - 40 requests

________________________________________________________
```
This project is part of [Janis Adhikari's](https://roadmap.sh/projects/nginx-log-analyser)  DevOps projects.

