# On a compute node, activate pangeo environment and start Jupyter Lab server.
# Based on http://pangeo.io/setup_guides/hpc.html.
# Andrew Tedstone, UniFR, September 2019.

# (1) Activate the installed pangeo conda environment.
source ~/setup_rivers.sh
conda deactivate
conda activate geospatial

# (2) Delete any old file containing the jupyter host name.
rm ~/.jupyter_lab_host

# (3) Save the current hostname to the file so that it can be accessed by user-side script.
echo `hostname` > ~/.jupyter_lab_host

# (4) Make SGE job scheduler available
#export SGE_ROOT=/opt/sge 
#source $SGE_ROOT/default/common/settings.sh

# (5) Start notebook server.
jupyter lab --no-browser --ip=`hostname` --port=8892
