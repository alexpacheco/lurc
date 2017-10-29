---
title       : Using SLURM scheduler on Sol
subtitle    : Lehigh Research Computing
author      : https://researchcomputing.lehigh.edu
job         : 
logo        : lu.png
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js      # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
license     : by-sa
--- .class #id

## Research Computing Resources

* <strong> Maia </strong>
  - 32-core Symmetric Multiprocessor (SMP) system available to all Lehigh Faculty, Staff and Students
  - dual 16-core AMD Opteron 6380 2.5GHz CPU
  - 128GB RAM and 4TB HDD
  - Theoretical Performance: 640 GFLOPs (640 billion floating point operations per second)
  - Access: Batch Scheduled, no interactive access to Maia

  $$latex
  GFLOPs = cores \times clock \times \frac{FLOPs}{cycle}
  $$

  [FLOPs for various AMD & Intel CPU generation](https://en.wikipedia.org/wiki/FLOPS#FLOPs_per_cycle)


--- .class #id

## Research Computing Resources

* <strong> Sol </strong>
  - Lehigh's Flagship High Performance Computing Cluster
  - 9 nodes, dual 10-core Intel Xeon E5-2650 v3 2.3GHz CPU, 25MB Cache, 128GB
  RAM
  - 33 nodes, dual 12-core Intel Xeon E5-2670 v3 2.3Ghz CPU, 30 MB Cache,
  128GB RAM
  - 13 nodes, dual 12-core Intel Xeon E5-2650 v4 2.3Ghz CPU, 30 MB Cache, 64GB
  RAM
  - Two nVIDIA GTX 1080 GPU cards per node (50 GPUs operational)
  - 1TB HDD per node
  - 2:1 oversubscribed Infiniband EDR (100Gb/s) interconnect fabric
  - In progress: 1 node, dual 8-core Intel Xeon 2630 v3 2.4GHz CPU, 20 MB
  Cache, 512GB RAM
  - Theoretical Performance: 47.37 TFLOPs (CPU) + 28.270 TFLOPs (GPU)
  - Access: Batch Scheduled, interactive on login node for compiling, editing
  only


--- .class #id &twocol

## Sol 

*** =left

<img class="fullwidth" src='assets/img/sol/20160509_140506.jpg'>

*** =right

<img class="fullwidth" src='assets/img/sol/20160509_141134.jpg'>

--- .class #id &twocol

## Sol 

*** =left

<img class="fullwidth" src='assets/img/sol/20160627_153416.jpg'>

*** =right

<img class="fullwidth" src='assets/img/sol/20160509_133642.jpg'>

--- .class #id

## Network Layout Sol &amp; Ceph Storage Cluster

<img class="fullwidth" src='assets/img/hpcnetwork.png'>

--- .class #id

## LTS Managed Faculty Resources 

* __Monocacy__: Ben Felzer, Earth & Environmental Sciences
  - Eight nodes, dual 8-core Intel Xeon E5-2650v2, 2.6GHz, 64GB RAM
     * Theoretical Performance: 2.662TFlops
* __Baltrusaitislab__: Jonas Baltrusaitis, Chemical Engineering
  - Three nodes, dual 16-core AMD Opteron 6376, 2.3Ghz, 128GB RAM
     * Theoretical Performance: 1.766TFlops
* __Pisces__: Keith Moored, Mechanical Engineering and Mechanics
  - Six nodes, dual 10-core Intel Xeon E5-2650v3, 2.3GHz, 64GB RAM, nVIDIA Tesla K80
     * Theoretical Performance: 4.416 TFlops (CPU) + 17.46TFlops (GPU)
  - To be merged with Sol in Fall 2017
* Unnamed : decommissioned faculty cluster for prototyping new resources
  - Twenty nodes, dual 8-core Intel Xeon E5-2650v2, 2.6GHz, 64GB RAM
     * Theoretical Performance: 6.656TFlops

--- .class

## Total Computational Resources Supported


| Cluster | Cores | CPU Memory | CPU TFLOPs | GPUs | CUDA Cores | GPU Memory |  GPU TFLOPS |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Maia | 32 | 128 | 0.640 |
| Monocacy | 128 | 512 | 2.662 |
| Unnamed | 320 | 1280 | 6.656 | 
| Baltrusaitislab | 96 | 384 | 1.766 |
| Pisces | 120 | 384 | 4.416 | 6 | 29952 | 144 | 17.472 |
| Sol | 1300 | 6720 | 47.366 | 110 | 281600 | 880 | 28.27 |
| Total | 1996 | 9408 | 63.507 | 116 | 311552 | 1024 | 45.742 | 


--- .class #id

## Apply for an account

* [Apply for an account at the LTS website] (https://idmweb.cc.lehigh.edu/accounts/?page=hpc)
   - Click on Services > Account & Password > Lehigh Computing Account > Request an account
   - Click on the big blue button "Start Special Account Request" > Research Computing Account 
   - Maia
       - Click on "FREE Linux command-line computing"
   - Sol: PIs should contact Alex Pacheco or Steve Anthony, web request is not functional
       - ~~Click on "Fee-based research computing"~~ 
       - Annual charge of \$50/account paid by Lehigh Faculty or Research Staff, and
       - Annual charge for computing time

* Sharing of accounts is explicitly forbidden
* Users need to be associated with an allocation to run jobs on Sol 

--- .class #id

## Allocation Charges - Effective Oct. 1, 2016

* Cost per core-hour or service unit (SU) is 1&cent;
* SU is defined as 1 hour of computing on 1 core of the Sol base compute node.
   - One base compute node of Sol consumes 20 SU/hour, 480 SU/day and 175,200 SU/year

* PIs can share allocations with their collaborators
   - Minimum Annual Purchase of 50,000 SU - &#36;500/year
   - Additional Increments of 10,000 SU - &#36;100 per 10K increments
   - Fixed Allocation cycle: Oct 1 - Sep 30
   - Unused allocations do not rollover to next allocation cycle
   - Total available computing time for purchase annually: 1.4M SUs or 1 year of continuous computing on 8 nodes
* __No 'free' computing time provided once allocation has been expended__

--- .class #id

## Condo Investments

* New sustainable model for High Performance Computing at Lehigh
* Faculty (Condo Investor) purchase compute nodes to increase overall capacity of Sol
* LTS will provide for the length of hardware warranty, typically 4 years
   - System Administration, Power and Cooling, User Support for Condo
     Investments
* Condo Investor
   - receives annual allocation equivalent to their investment
   - can utilize allocations on all available nodes, including nodes from other
     Condo Investors
   - allows idle cycles on investment to be used by other Sol users
   - unused allocation will not rollover to the next allocation cycle.
   - can purchase additional SUs in 10K increments (minimum 50K not required)
       -  and must be consumed in current allocation cycle
* Annual Allocation cycle is Oct. 1 - Sep. 30.

--- .class

## Condo Investors

* Two at initial launch 
   - Dimitrios Vavylonis, Physics (1 node)
   - Wonpil Im, Biological Sciences (25 nodes, 50 GPUs)
   - Anand Jagota, Chemical Engineering (1 node)
   - Brian Chen, Computer Science & Engineering (1 node)
   - Ed Webb & Alp Oztekin, Mechanical Engineering (6 nodes)
   - Jeetain Mittal & Srinivas Rangarajan, Chemical Engineering (13 nodes, 60 GPUs)

* Total SU on Sol after Condo Investments: 11,247,840
* Acquisition in progress
   - Seth Richards-Shubik, Economics (1 node)

--- .class #id

## Accessing Research Computing Resources

* Sol &amp; Faculty Clusters: accessible using ssh while on Lehigh's network
   * `ssh username@clustername.cc.lehigh.edu`
* Maia: No direct access to Maia, instead login to Polaris
  - `ssh username@polaris.cc.lehigh.edu`
  - Polaris is a gateway that also hosts the batch scheduler for Maia
  - No computing software including compilers is available on Polaris
  - Login to Polaris and request computing time on Maia including interactive access
      - On Polaris, run the `maiashell` command to get interactive access to
        Maia for 15 minutes.
* If you are not on Lehigh's network, login to the ssh gateway to get to Research Computing resources
  - `ssh username@ssh.cc.lehigh.edu`

--- .class #id

## Available Software

* Commercial, Free and Open source software is installed on
  - [Maia](https://webapps.lehigh.edu/dokuwiki/sites/researchcomputing/doku.php?id=maia#installed_software): /zhome/Apps
  - [Sol](https://webapps.lehigh.edu/dokuwiki/sites/researchcomputing/doku.php?id=sol#installed_software): /share/Apps
* Software is managed using module environment
  - Why? We may have different versions of same software or software built with different compilers
  - Module environment allows you to dynamically change your *nix environment based on software being used
  - Standard on many University and national High Performance Computing resource since circa 2011
* How to use Sol/Maia Software on your [linux](https://webapps.lehigh.edu/dokuwiki/sites/researchcomputing/doku.php?id=linux) workstation
* LTS provides [licensed and open source software](https://software.lehigh.edu) for Windows, Mac and Linux and [Gogs](https://gogs.cc.lehigh.eu), a self hosted Git Service or Github clone 


--- .class #id

## Module Command

| Command | Description |
|:-------:|:-----------:|
| <code>module avail</code> | show list of software available on resource |
| <code>module load abc</code> | add software <code>abc</code> to your environment (modify your <code>PATH</code>, <code>LD_LIBRARY_PATH</code> etc as needed) |
| <code>module unload abc</code> | remove <code>abc</code> from your environment |
| <code>module swap abc1 abc2</code> | swap <code>abc1</code> with <code>abc2</code> in your environment |
| <code>module purge</code> | remove all modules from your environment |
| <code>module show abc</code> | display what variables are added or modified in your environment |
| <code>module help abc</code> | display help message for the module <code>abc</code> |

* Users who prefer not to use the module environment will need to modify their
  .bashrc or .tcshrc files. Run `module show` for list variables that need
  modified, appended or prepended

--- .class #id

## Software on Sol

<img width = '960px' src = 'assets/img/sol-module.png'>

--- .class #id &twocol_width

## Installed Software

*** =left width:45%

* Chemistry/Materials Science
  - CPMD
  - GAMESS
  - Gaussian
  - NWCHEM
  - Quantum Espresso
  - VASP
* Molecular Dynamics
  - Desmond
  - GROMACS
  - LAMMPS
  - NAMD

*** =right width:45%

* Computational Fluid Dynamics
  - Abaqus
  - Ansys
  - Comsol
  - OpenFOAM
  - OpenSees
* Math
  - GNU Octave
  - Magma
  - Maple
  - Mathematica
  - Matlab

--- .class #id  &twocol_width

## More Software

*** =left width:35%

* Scripting Languages
  - R
  - Perl
  - Python
* Compilers
  - GNU
  - Intel
  - PGI
  - CUDA
* Parallel Programming
  - MVAPICH2
  - OpenMPI

*** =right width:65%

* Libraries
  - BLAS/LAPACK/GSL/SCALAPACK
  - Boost
  - FFTW
  - Intel MKL
  - HDF5
  - NetCDF
  - METIS/PARMETIS
  - PetSc
  - QHull/QRupdate
  - SuiteSparse
  - SuperLU

--- .class #id &twocol_width
 
## More Software

*** =left width:30%

* Visualization Tools
  - Avogadro 
  - GaussView
  - GNUPlot
  - PWGui
  - PyMol
  - VMD
  - XCrySDen
* Other Tools
  - CMake
  - Lmod
  - Scons
  - SPACK


*** =right width:70%

* You can always install a software in your home directory
* Stay compliant with software licensing
* Modify your .bashrc/.tcshrc to add software to your path, OR
* create a module and dynamically load it so that it doesn't interfere 
 with other software installed on the system
  - e.g. You might want to use openmpi instead of mvapich2 
  - the system admin may not want install it system wide for just one user
* Add the directory where you will install the module files to the variable 
  MODULEPATH in .bashrc/.tcshrc

```sh
# My .bashrc file
export MODULEPATH=${MODULEPATH}:/home/alp514/modulefiles
```
* Use [SPACK](https://spack.readthedocs.io) to build your own software stack

--- .class #id

## Module File Example

<img width = '900px' src = 'assets/img/mcr.png'>

--- .class #id &twocol_width

## Cluster Environment

* A cluster is a group of computers (nodes) that works together closely

*** =left width:30%

* Two types of nodes
   - Head/Login Node
   - Compute Node

* Multi-user environment

* Each user may have multiple jobs running simultaneously

*** =right width:65%

<img width = '640px' src = 'assets/img/solnetwork.png'>


--- .class #id

## How to run jobs

* All compute intensive jobs are scheduled
* Write a script to submit jobs to a scheduler
  - need to have some background in shell scripting (bash/tcsh)
* Need to specify
   - Resources required (which depends on configuration)
       - number of nodes
       - number of processes per node
       - memory per node
   - How long do you want the resources
       - have an estimate for how long your job will run
   - Which queue to submit jobs
       - SLURM uses the term _partition_ instead of _queue_


--- .class #id

## Scheduler &amp; Resource Management

* A software that manages resources (CPU time, memory, etc) and schedules job execution
   - Sol: Simple Linux Utility for Resource Management (SLURM)
   - Others:  Portable Batch System (PBS)
          - Scheduler: Maui
          - Resource Manager: Torque
          - Allocation Manager: Gold

* A job can be considered as a user’s request to use a certain amount of resources for a certain amount of time

* The Scheduler or queuing system determines
    - The order jobs are executed
    - On which node(s) jobs are executed



--- .class #id &twocol_width
 
## Job Scheduling

*** =left width:50%

* Map jobs onto the node-time space
    - Assuming CPU time is the only resource

* Need to find a balance between
    - Honoring the order in which jobs are received
    - Maximizing resource utilization


*** =right width:45%

<img width = '440px' src = 'assets/img/JobSchedule-1.png'>


--- .class #id &twocol_width
 
## Backfilling

*** =left width:50%
* A strategy to improve utilization
   - Allow a job to jump ahead of others when there are enough idle nodes
   - Must not affect the estimated start time of the job with the highest priority

*** =right width:45%

<img width = '440px' src = 'assets/img/JobSchedule-2.png'>



--- .class #id &twocol_width
 
## How much time must I request

* Ask for an amount of time that is
    - Long enough for your job to complete
    - As short as possible to increase the chance of backfilling

*** =left width:45%

<img width = '360px' src = 'assets/img/JobSchedule-3.png'>

*** =right width:45%

<img width = '360px' src = 'assets/img/JobSchedule-4.png'>


--- .class #id .small

## Available Queues

* Sol

| Partition Name | Max Runtime in hours | Max SU consumed node per hour |
|:----------:|:--------------------:|:--------------------:|
| _lts_ | 72 | 20 (will change to 18+2)|
| imlab | 48 | 22 | 
| imlab-gpu | 48 | 24 |
| _eng_ | 72 | 24 (will change to 22+2)|
| _engc_ | 72 | 24 (will change to 22+2)|
| all-cpu | 48 |
| all-gpu | 48 |



* Maia

| Queue Name | Max Runtime in hours | Max Simultaneous Core-hours |
|:----------:|:-----------:|:---------------------------:|
| smp-test | 1 | 4 |
| smp | 96 | 384 |


--- .class #id

## How much memory can or should I use per core?

* The amount of installed memory less the amount that is used by the operating system and other utilities

* A general rule of thumb on most HPC resources: leave 1-2GB for the OS to run. 

* Sol

| Partition | Max Memory/core (GB) | Recommended Memory/Core (GB) |
|:---------:|:--------------------:|:----------------------------:|
| lts | 6.4 | 6.2 |
| eng/imlab/imlab-gpu | 5.3 | 5.1 |
| engc | 2.66 | 2.4 |


*  <span class="alert">if you need to run a single core job that requires 10GB memory in the imlab partition, you need to request 2 cores even though you are only using
         1 core.</span>  

* Maia: Users need to specify memory required in their submit script. Max
memory that should be requested is 126GB.

--- .class #id .small

## Useful SBATCH Directives

| SLURM Directive | Description |
|:---------------:|:-----------:|
| #SBATCH --partition=queuename | Submit job to the <em>queuename</em> partition. |
| #SBATCH --time=hh:mm:ss | Request resources to run job for <em>hh</em> hours, <em>mm</em> minutes and <em>ss</em> seconds. |
| #SBATCH --nodes=m | Request resources to run job on <em>m</em> nodes. |
| #SBATCH --ntasks-per-node=n | Request resources to run job on <em>n</em> processors on each node requested. |
| #SBATCH --ntasks=n | Request resources to run job on a total of <em>n</em> processors. |
| #SBATCH --job-name=jobname | Provide a name, <em>jobname</em> to your job. |
| #SBATCH --output=filename.out | Write SLURM standard output to file filename.out. |
| #SBATCH --error=filename.err | Write SLURM standard error to file filename.err. |
| #SBATCH --mail-type=events | Send an email after job status events is reached. |
| | events can be NONE, BEGIN, END, FAIL, REQUEUE, ALL, TIME_LIMIT(_90,80) |
| #SBATCH --mail-user=address | Address to send email. |
| #SBATCH --account=mypi | charge job to the __mypi__ account |


--- .class #id .small

## Useful SBATCH Directives (contd)

| SLURM Directive | Description |
|:---------------:|:-----------:|
| #SBATCH --qos=nogpu | Request a quality of service (qos)  for the job in `imlab`, `engc` partitions. |
| | Job will remain in queue indefinitely if you do not specify qos |
| #SBATCH --gres=gpu:# | Specifies number of gpus requested in the gpu partitions |
| | You can request 1 or 2 gpus with a minimum of 1 core or cpu per gpu | 

* SLURM can also take short hand notation for the directives

| Long Form | Short Form |
|:---------:|:----------:|
| --partition=queuename | -p queuename |
| --time=hh:mm:ss | -t hh:mm:ss |
| --nodes=m | -N m |
| --ntasks=n | -n n |
| --account=mypi | -A mypi |
| --job-name=jobname | -J jobname |
| --output=filename.out | -o filename.out |


--- .class #id

## SBATCH Filename Patterns

* sbatch allows for a filename pattern to contain one or more replacement
  symbols, which are a percent sign "%" followed by a letter (e.g. %j). 

| Pattern | Description |
|:-------:|:-----------:|
| %A |    Job array's master job allocation number. |
| %a |    Job array ID (index) number. |
| %J |    jobid.stepid of the running job. (e.g. "128.0") |
| %j |    jobid of the running job. |
| %N |    short hostname. This will create a separate IO file per node. |
| %n |    Node identifier relative to current job (e.g. "0" is the first node of the running job) This will create a separate IO file per node. |
| %s |    stepid of the running job. |
| %t |    task identifier (rank) relative to current job. This will create a separate IO file per task. |
| %u |    User name. |
| %x |    Job name. |




--- .class #id .small

## Useful PBS Directives

| PBS Directive | Description |
|:-------------:|:------------|
| #PBS -q queuename | Submit job to the <em>queuename</em> queue.|
| #PBS -l walltime=hh:mm:ss| Request resources to run job for <em>hh</em> hours, <em>mm</em> minutes and <em>ss</em> seconds.|
| #PBS -l nodes=m:ppn=n| Request resources to run job on <em>n</em> processors each on <em>m</em> nodes.|
| #PBS -l mem=xGB| Request <em>xGB</em> per node requested, applicable on Maia only|
| #PBS -N jobname| Provide a name, <em>jobname</em> to your job.|
| #PBS -o filename.out| Write PBS standard output to file filename.out.|
| #PBS -e filename.err| Write PBS standard error to file filename.err.|
| #PBS -j oe| Combine PBS standard output and error to the same file.|
| #PBS -M your email address| Address to send email.|
| #PBS -m status| Send an email after job status status is reached.| 
| | status can be a (abort), b (begin) or e (end). The arguments can be combined |
| |  for e.g. abe will send email when job begins and either aborts or ends|



--- .class #id .pbs

## Useful PBS/SLURM environmental variables


| SLURM Command | Description | PBS Command |
|:-------------:|:-----------:|:-----------:|
| SLURM_SUBMIT_DIR | Directory where the <code>qsub</code> command was executed | PBS_O_WORKDIR |
| SLURM_JOB_NODELIST | Name of the file that contains a list of the HOSTS provided for the job | PBS_NODEFILE |
| SLURM_NTASKS | Total number of cores for job | PBS_NP |
| SLURM_JOBID | Job ID number given to this job | PBS_JOBID | 
| SLURM_JOB_PARTITION | Queue job is running in | PBS_QUEUE |
| | Walltime in secs requested | PBS_WALLTIME
| | Name of the job. This can be set using the -N option in the PBS script | PBS_JOBNAME |
| | Indicates job type, PBS_BATCH or PBS_INTERACTIVE | PBS_ENVIRONMENT |
| | value of the SHELL variable in the environment in which qsub was executed | PBS_O_SHELL |
| | Home directory of the user running qsub | PBS_O_HOME |


--- .class #id

## Basic Job Manager Commands

* Submission
* Monitoring
* Manipulating
* Reporting

--- .class 

## Job Types

* Interactive Jobs
  - Set up an interactive environment on compute nodes for users
  - Will log you into a compute node and wait for your prompt
  - Purpose: testing and debugging code. __Do not run jobs on head node!!!__
      * All compute node have a naming convention __sol-[a,b,c]###__
      * head node is __sol__
* Batch Jobs
   - Executed using a batch script without user intervention
       - Advantage: system takes care of running the job
       - Disadvantage: cannot change sequence of commands after submission
   - Useful for Production runs
   - Workflow: write a script -> submit script -> take mini vacation ->
   analyze results

--- .class #id

## Job Types: Interactive

   - PBS: Use `qsub -I` command with PBS Directives
       *    `qsub -I -V -l walltime=<hh:mm:ss>,nodes=<# of nodes>:ppn=<# of core/node> -q <queue
   name>`

   - SLURM:  Use `srun` command with SBATCH Directives followed by `--pty /bin/bash`
       * `srun --time=<hh:mm:ss> --nodes=<# of nodes> --ntasks-per-node=<#
   of core/node> -p <queue name> --pty /bin/bash`
       * If you have `soltools` module loaded, then use `interact` with at
   least one SBATCH Directive
           - `interact -t 20` [Assumes `-p lts -n 1 -N 20`]
   - Run a job interactively replace `--pty /bin/bash --login` with the
     appropriate command. 
       - For e.g. `srun -t 20 -n 1 -p imlab --qos=nogpu $(which lammps) -in in.lj
     -var x 1 -var n 1`
       - Default values are 3 days, 1 node, 20 tasks per node and lts
   partition

--- .class #id

## Job Types: Batch 

* Workflow: write a script -> submit script -> take mini vacation -> analyze
  results
* Submitting Batch Jobs
   * PBS: `qsub filename`
   * SLURM: `sbatch filename`

* `qsub` and `sbatch` can take the options for `#PBS` and `#SBATCH` as command line arguments
   * `qsub -l walltime=1:00:00,nodes=1:ppn=16 -q normal filename`
   * `sbatch --time=1:00:00 --nodes=1 --ntasks-per-node=20 -p lts filename` 


--- .class #id .big

## Minimal submit script for Serial Jobs



```bash
#!/bin/bash
#PBS -q smp
#PBS -l walltime=1:00:00
#PBS -l nodes=1:ppn=1
#PBS -l mem=4GB
#PBS -N myjob

cd ${PBS_O_WORKDIR}
./myjob < filename.in > filename.out

```


```bash
#!/bin/bash
#SBATCH --partition=lts
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --job-name myjob

cd ${SLURM_SUBMIT_DIR}
./myjob < filename.in > filename.out

```

--- .class #id .big

## Minimal submit script for MPI Job


```bash
#!/bin/bash
#SBATCH --partition=lts
#SBATCH --time=1:00:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=20
## For --partition=imlab, 
###  use --ntasks-per-node=22
### and --qos=nogpu
#SBATCH --job-name myjob

module load mvapich2

cd ${SLURM_SUBMIT_DIR}
srun ./myjob < filename.in > filename.out

exit
```

--- .class #id .big

## Minimal submit script for OpenMP Job


```bash
#!/bin/tcsh
#SBATCH --partition=imlab
# Directives can be combined on one line
#SBATCH --time=1:00:00 --nodes=1 --ntasks-per-node=22
#SBATCH --qos=nogpu
#SBATCH --job-name myjob

cd ${SLURM_SUBMIT_DIR}
# Use either
setenv OMP_NUM_THREADS 22
./myjob < filename.in > filename.out

# OR
OMP_NUM_THREADS=22 ./myjob < filename.in > filename.out

exit
```

--- .class #id .big

## Minimal submit script for LAMMPS GPU job


```bash
#!/bin/tcsh
#SBATCH --partition=imlab
# Directives can be combined on one line
#SBATCH --time=1:00:00
#SBATCH --nodes=1
# 1 CPU can be be paired with only 1 GPU
# 1 GPU can be paired with all 24 CPUs
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1
# Need both GPUs, use --gres=gpu:2
#SBATCH --job-name myjob

cd ${SLURM_SUBMIT_DIR}
# Load LAMMPS Module
module load lammps/17nov16-gpu
# Run LAMMPS for input file in.lj
srun $(which lammps) -in in.lj -sf gpu -pk gpu 1 gpuID ${CUDA_VISIBLE_DEVICE}

exit
```

--- .class #id

## Monitoring &amp; Manipulating Jobs


| SLURM Command | Description | PBS Command |
|:-----------:|:-----------:|:-------------:|
| squeue | check job status (all jobs) | qstat |
| squeue -u username | check job status of user <em>username</em> | qstat -u username |
| squeue --start | Show <strong>estimated</strong> start time of jobs in queue | showstart jobid |
| scontrol show job jobid | Check status of your job identified by <em>jobid</em> | checkjob jobid |
| scancel jobid | Cancel your job identified by <em>jobid</em> | qdel jobid |
| scontrol hold jobid | Put your job identified by <em>jobid</em> on hold | qhold jobid |
| scontrol release jobid | Release the hold that <strong>you put</strong> on <em>jobid | qrls jobid |

* The following scripts written by RC staff can also be used for monitoring
  jobs. 
   * __checkq__: `squeue` with additional useful option. 
   * __checkload__: `sinfo` with additional options to show load on compute nodes.  
* load the `soltools` module to get access to RC staff created scripts


--- .class #id

## Usage Reporting

* [sacct](http://slurm.schedmd.com/sacct.html): displays accounting data for all jobs and job steps in the SLURM job accounting log or Slurm database
* [sshare](http://slurm.schedmd.com/sshare.html): Tool for listing the shares of associations to a cluster. 

* We have created scripts based on these to provide usage reporting
    -  `alloc_summary.sh`
        - included in your .bash_profile
        - prints allocation usage on your login shell
    -  `balance`
        - prints allocation usage summary
    -  `solreport`
        - obtain your monthly usage report
        - PIs can obtain usage report for all or specific users on their
	allocation
        - use `--help` for usage information

--- .class #id

## Usage Reporting

<img width = '960px' src = 'assets/img/slurmreport.png'> 



--- .class #id

## Online Usage Reporting  

* Monthly usage is summarized at https://researchcomputing.lehigh.edu/usage
* Scrollable Usage for entire cluster
   - https://webapps.lehigh.edu/hpc/usage/canvas.html
* For a specific PI:
   - Replace lts with a PI's name in the following link
       * https://webapps.lehigh.edu/hpc/usage/lts.html
* <span class="alert">Usage plots are restricted to Lehigh IPs</span>


--- .class #id

## Online Usage Reporting: Sol Cluster

<object style="width:85%" data="https://webapps.lehigh.edu/hpc/usage/2016.svg" type="image/svg+xml">
</object>

--- .class #id

## Online Usage Reporting: lts partition

<object style="width:85%" data="https://webapps.lehigh.edu/hpc/usage/2016-lts.svg" type="image/svg+xml">
</object>

--- .class #id

## Online Usage Reporting: imlab &amp; imlab-gpu partitions

<object style="width:85%" data="https://webapps.lehigh.edu/hpc/usage/2016-imlab.svg" type="image/svg+xml">
</object>


--- .class #id

## Online Usage Reporting: eng partitions

<object style="width:85%" data="https://webapps.lehigh.edu/hpc/usage/2016-eng.svg" type="image/svg+xml">
</object>


--- .class #id

## Online Usage Reporting: engc partitions

<object style="width:85%" data="https://webapps.lehigh.edu/hpc/usage/2016-engc.svg" type="image/svg+xml">
</object>


--- .class #id

## Need to run multiple jobs in sequence?

* Option 1: Submit jobs as soon as previous jobs complete
* Option 2: Submit jobs with a dependency
    * [SLURM](https://webapps.lehigh.edu/dokuwiki/sites/researchcomputing/doku.php?id=slurm#submitting_dependency_jobs):
  `sbatch --dependency=afterok:<JobID> <Submit Script>`
    * [PBS](https://webapps.lehigh.edu/dokuwiki/sites/researchcomputing/doku.php?id=corona#submitting_dependency_jobs):
  `qsub -W depend=afterok:<JobID> <Submit Script>`

* You want to run several serial processor jobs on
    * one node: your submit script should be able to run several serial
    jobs in background and then use the `wait` command for all jobs to finish
    * more than one node: this requires some background in scripting but the
    idea is the same as above


--- .class #id

## Additional Help &amp; Information

* Issue with running jobs or need help to get started: 
  * Open a help ticket: <http://go.lehigh.edu/rchelp>
* More Information
  * [Research Computing] (https://researchcomputing.lehigh.edu)
  * [Research Computing Wiki](https://go.lehigh.edu/rcwiki)
  * [Research Computing Training](https://researchcomputing.lehigh.edu/training)
* Subscribe
     * HPC Training Google Groups: <mailto:hpctraining-list+subscribe@lehigh.edu>
     * Research Computing Mailing List: <https://lists.lehigh.edu/mailman/listinfo/hpc-l>
* My contact info
  * eMail:  <alp514@lehigh.edu>
  * Tel: (610) 758-6735 
  * Location: Room 296, EWFM Computing Center
  * [My Schedule] (https://www.google.com/calendar/embed?src=alp514%40lehigh.edu&ctz=America/New_York )


 