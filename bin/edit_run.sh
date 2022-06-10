#!/bin/bash
sed -i '/Memory Collision E/d' ./run.log
sed -i '/A read was per/d' ./run.log
sed -i '/^\s*$/d' ./run.log