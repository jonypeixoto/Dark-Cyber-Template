#!/bin/bash
# In a land shrouded in mystery...

cyber_name="Dark Cyber"
construction_year=1100
destruction_year=1678

calc_duration() {
  echo $(($destruction_year - $construction_year))
}

echo "The duration of $cyber_name was $(calc_duration) years."

# ...there stood a Dark Cyber
