#!/bin/bash
for f in $( ls ); do
  if [ -f $f ]; then
      eval "python3 camelcase_to_underscore.py $f"
  fi
done
