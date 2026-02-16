#!/bin/bash

# Output file
OUTPUT="aggregated.md"

# Clear/create output file
> "$OUTPUT"

# Find all .md files (excluding the output file itself) and aggregate
find . -name "*.md" -type f ! -name "$OUTPUT" | sort | while read -r file; do
    echo "# File: $file" >> "$OUTPUT"
    echo "" >> "$OUTPUT"
    cat "$file" >> "$OUTPUT"
    echo "" >> "$OUTPUT"
    echo "---" >> "$OUTPUT"
    echo "" >> "$OUTPUT"
done

echo "Aggregated all .md files into $OUTPUT"
