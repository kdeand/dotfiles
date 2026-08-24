#!/bin/bash                                                                     

# 1. Get the current workspace index                                            
CURRENT_WS=$(wmctrl -d | grep '*' | cut -d' ' -f1)

# 2. Loop through all open windows                                              
wmctrl -l | while read -r line; do
    # Extract the workspace ID (2nd column) and Window ID (1st column)          
    WS_ID=$(echo "$line" | awk '{print $2}')
    WIN_ID=$(echo "$line" | awk '{print $1}')

    # 3. Only close if it matches the current workspace                         
    if [ "$WS_ID" == "$CURRENT_WS" ]; then
	wmctrl -ic "$WIN_ID"
    fi
done

