#!/bin/bash
UNIT="$1"
echo -e "\033[1mChecking syntax..\033[0m\n"
ghdl -s --ieee=synopsys "$UNIT".vhd tb_"$UNIT".vhd
echo -e "\033[1mAnalyzing files..\033[0m\n"
ghdl -a --ieee=synopsys "$UNIT".vhd tb_"$UNIT".vhd
echo -e "\033[1mElaborating unit..\033[0m\n"
ghdl -e --ieee=synopsys tb_"$UNIT"
echo -e "\033[1mRun unit and dumping signal values..\033[0m\n"
ghdl -r tb_"$UNIT" --vcd=tb_"$UNIT".vcd
echo -e "\033[1mStarting waveform viewer..\033[0m\n"
gtkwave --rcvar 'do_initial_zoom_fit yes' --rcvar 'hier_max_level 0' --rcvar 'splash_disable on' tb_"$UNIT".vcd
echo -e "\033[1mDone.\033[0m"
exit 0
