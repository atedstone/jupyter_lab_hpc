# On a compute node, activate pangeo environment and start Jupyter Lab server.
# Based on http://pangeo.io/setup_guides/hpc.html.
# Andrew Tedstone, UniFR, September 2019.

# (1) Activate the installed pangeo conda environment.
conda activate geospa
# Or - source my environment setup.
#source ~/setup_rivers.sh

# (2) Delete any old file containing the jupyter host name.
rm ~/.jupyter_lab_host

# (3) Save the current hostname to the file so that it can be accessed by user-side script.
echo `hostname` > ~/.jupyter_lab_host

# (4) Start notebook server.
jupyter lab --no-browser --ip=`hostname` --port=8888