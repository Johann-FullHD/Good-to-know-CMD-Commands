#!/bin/bash
clear
echo "█▀▄▀█ ─█▀█─ █▄─█─ █▄─█─"
echo "█ illustrate ░█▄█─ █▄█─ █▄█─"
echo "▀ ░█─ ░▀─ ░▀─ ░▀─ ░▀─ ░▀─"
echo ""
echo "Starting system scan..."
for i in {1..10}
do
  echo -ne "Scanning system $i/%...\r"
  sleep 1
done
echo ""
echo "System scan complete."
echo "Searching for vulnerabilities..."
for i in {1..5}
do
  echo -ne "Searching $i/%...\r"
  sleep 1
done
echo ""
echo "Vulnerabilities found!"
echo "Accessing system files..."
for i in {1..100}
do
  echo -ne "Accessing $i/%...\r"
  sleep 0.1
done
echo ""
echo "System files accessed. Extracting data..."
for i in {1..10}
do
  echo -ne "Extracting $i/%...\r"
  sleep 1
done
echo ""
echo "Data extracted. Transferring data to local system..."
for i in {1..100}
do
  echo -ne "Transferring $i/%...\r"
  sleep 0.1
done
echo ""
echo "Data transfer complete. Mission accomplished."