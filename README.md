# README

How to run Jupyter Lab on the UniFr beo05 HPC.

Based on setup instructions from Pangeo: http://pangeo.io/setup_guides/hpc.html

## Configuration

Your account on beo05 first needs to be setup for Jupyter Lab.

### Installation on beo05

1. Follow 'Installing a software environment' in the link above.
2. Follow 'Configure Jupyter' in the link above.
3. Edit `start_jlab.sh` so that the command `conda activate <env>` matches the environment set up in step 1.
4. `scp` `start_jlab.sh` onto beo05, at `/home/<user>/scripts/` (you may need to make the scripts directory yourself).

### Local configuration

The script `beojn` is designed to be run from a local bash terminal.

Take note of the resource request variables at the top of the script.


## Running 

How to do this on Windows given that the bash script cannot be run?
