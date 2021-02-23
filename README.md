# README

How to run Jupyter Lab on the UniFr beo05 HPC.

Based on setup instructions from Pangeo: http://pangeo.io/setup_guides/hpc.html

## Configuration

The simplest configuration for day-to-day use requires the use of SSH keys. For Windows, https://devops.ionos.com/tutorials/use-ssh-keys-with-putty-on-windows/ has useful information.

Your account on beo05 first needs to be setup for Jupyter Lab.

For generic HPC info: https://carpentries-incubator.github.io/hpc-intro/ 

### Installation on beo05

1. Follow 'Installing a software environment' in the Pangeo link above.
2. Follow 'Configure Jupyter' in the link above.
3. Edit `start_jlab.sh` so that the command `conda activate <env>` matches the environment set up in step 1.
4. `scp` `start_jlab.sh` onto beo05, at `/home/<user>/scripts/` (you may need to make the scripts directory yourself).

### Local configuration

#### Mac/Unix

The script `beojn` is designed to be run from a local bash terminal.

Take note of the resource request variables at the top of the script.


#### Windows

Beyond having beo05 set up as a server in your PuTTY configuration, there isn't really anything that you can configure here.

However, you may want to consider running JupyterLab via Ubuntu installed using Windows Subsystem for Linux (WSL), which will allow you to use the `beojn` script. This will require:

* SSH keys setup for use between your Ubuntu WSL and beo05
* Firefox or another browser to be installed within Ubuntu WSL (because the SSH tunnel needed to open the JupyterLab port is between your WSL and beo05, *not* between Windows and beo05).


## Running 

On Unix/Mac, a regular terminal window suffices. Execute

```bash
./beojn <number of cores>
```

On Windows you'll need to either (1) use WSL Ubuntu to run the `beojn` script, or (2) use PuTTY:

1. Open PuTTY, log in to beo05
2. Run `qrsh -q big.q -pe smp 4 source scripts/start_jlab.sh` (you can change the queue name and number or cores; you may also want to save this line as an alias in your `.bashrc`)
3. Note the compute node and port which appears - e.g. `node47.cluster:8888`
4. Open a second PuTTY window. Load the beo05 configuration, then go to SSH->Tunnels. Add a tunnel between port 8888 and the node:port, e.g. `node47.cluster:8888`.
5. Open the connection.
6. In a web browser, navigate to `localhost:8888`.
