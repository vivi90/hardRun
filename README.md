hardRun
=======
This is an [VHDL](https://en.wikipedia.org/wiki/VHDL) simulation bash script.
[GHDL](http://ghdl.free.fr) is used for VHDL compilation, simulation and VCD export.
After that [GTKWave](http://gtkwave.sourceforge.net) is used to view the waveform.
Tested on [Manjaro](https://manjaro.org) Linux with Kernel 5.6.3.

Install notes
-------------
1. Install GHDL and GTKWave.
2. Download or clone this repository in a temporary destination.
3. Run `chmod +x run.sh` to mark this script as executable.
4. Run `cp run.sh /usr/bin/hdr` with administration rights to make this script globally available.
5. Delete the rest of this repository.
6. Enjoy! :-)

Usage
-----
Just run `hdr <UNIT_NAME>` in your project directory
*(Please replace `<UNIT_NAME>` with the name of your VHDL unit, not filename.)*.

Troubleshooting
---------------
This script is assuming, that:
* Your files have the extension `*.vhd`.
* Your testbench files are named like the pattern `tb_<UNIT_NAME>.vhd`.

License
-------
This project is free software under the terms of the GNU General Public License v3 as published by the Free Software Foundation.
It is distributed WITHOUT ANY WARRANTY (without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE).
For more details please see the LICENSE file or: http://www.gnu.org/licenses

Credits
-------
 * Contact: Vivien Richter <vivien-richter@outlook.de>
 * Git repository: https://github.com/vivi90/hardrun.git
 * Based on this video: https://www.youtube.com/watch?v=H2GyAIYwZbw
