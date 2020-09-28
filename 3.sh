#!/bin/bash
ps -eo suser,comm,%cpu --sort=-%cpu | awk '$3!=0.0 {print}'