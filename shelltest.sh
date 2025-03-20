#!/bin/bash

# Function to print the header
print_header() {
    echo "=================================="
    echo "$1"
    echo "=================================="
}

# Check OS details
print_header "Operating System Details"
lsb_release -a
echo "Kernel Version: $(uname -r)"
echo ""

# Check CPU information
print_header "CPU Information"
lscpu
echo ""

# Check memory usage
print_header "Memory Usage"
free -h
echo ""

# Check Disk Usage
print_header "Disk Usage"
df -h
echo ""

# Check running processes
print_header "Currently Running Processes"
ps aux --sort=-%mem | head -n 10
echo ""

# Check system uptime
print_header "System Uptime"
uptime
echo ""

# Check users currently logged in
print_header "Current Users"
who
echo ""

# End of Script
echo "=================================="
echo "System details retrieved successfully."
