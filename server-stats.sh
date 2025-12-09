print_header () {
  echo ""
  echo "  ╭─────────────────────────────╮"
  echo "╭─┤  CPU USAGE                  ├─╮"
  echo "│ ╰─────────────────────────────╯ │"
  echo "│                                 │"
}
print_header

cpu_load=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1 }')



# output after using grep >> Total CPU Usage: %Cpu(s):  3.9 us,  1.6 sy,  0.0 ni, 93.8 id,  0.8 wa,  0.0 hi,  0.0 si,  0.0 st %
# only true for that specific time in my computer
# using sed to capture the idle time for cpu


printf "│  Total CPU Usage: %6.2f%%       │\n" "$cpu_load"
