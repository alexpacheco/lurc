---
title       : Using SLURM scheduler on Sol
subtitle    : Research Computing
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

  - `Currently out of warranty`. 
  - `Will be permanently shut down in case of hardware failure`
  - `No plans to replace Maia`

--- .class #id

## Research Computing Resources

* <strong> Sol </strong>
  - Lehigh's Flagship High Performance Computing Cluster
  - 9 nodes, dual 10-core Intel Xeon E5-2650 v3 2.3GHz CPU, 25MB Cache, 128GB RAM
  - 33 nodes, dual 12-core Intel Xeon E5-2670 v3 2.3Ghz CPU, 30 MB Cache, 128GB RAM
  - 14 nodes, dual 12-core Intel Xeon E5-2650 v4 2.3Ghz CPU, 30 MB Cache, 64GB RAM
  - 1 node, dual 8-core Intel Xeon 2630 v3 2.4GHz CPU, 20 MB Cache, 512GB RAM
  - 24 nodes, dual 18-core Intel Xeon Gold 6140 2.3GHz CPU, 24.7 MB Cache, 192GB RAM
  - 72 nVIDIA GTX 1080 GPU cards
  - 48 nVIDIA RTX 2080TI GPU cards
  - 1TB HDD per node
  - 2:1 oversubscribed Infiniband EDR (100Gb/s) interconnect fabric
  - Theoretical Performance: 82.816 TFLOPs (CPU) + 36.1296 TFLOPs (GPU)
  - Access: Batch Scheduled, interactive on login node for compiling, editing only


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
     * Theoretical Performance: 3.840TFlops (CPU) + 17.46TFlops (GPU)
* Devel/Testing : decommissioned faculty cluster for prototyping new resources
  - Twenty nodes, dual 8-core Intel Xeon E5-2650v2, 2.6GHz, 64GB RAM
     * Theoretical Performance: 6.656TFlops


--- .class

## Total Computational Resources Supported


|Cluster      | Cores| CPU Memory| CPU TFLOPs| GPUs| CUDA Cores| GPU Memory| GPU TFLOPS|
|:------------|-----:|----------:|----------:|----:|----------:|----------:|----------:|
|Maia         |    32|        128|      0.640|    0|          0|          0|     0.0000|
|Monocacy     |   128|        512|      2.662|    0|          0|          0|     0.0000|
|Devel        |   320|       1280|      6.656|    0|          0|          0|     0.0000|
|Baltrusaitis |    96|        384|      1.766|    0|          0|          0|     0.0000|
|Pisces       |   120|        384|      3.840|   12|      29952|        144|    17.4220|
|Sol          |  2188|      11392|     82.816|  120|     393216|       1104|    36.1296|
|Total        |  2884|      14080|     98.380|  132|     423168|       1248|    53.5516|

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
  - or use ssh as a jump host
      - `ssh -J username@ssh.cc.lehigh.edu username@sol.cc.lehigh.edu`

--- .class #id

## Available Software

* Commercial, Free and Open source software is installed on
  - [Maia](https://webapps.lehigh.edu/dokuwiki/sites/researchcomputing/doku.php?id=maia#installed_software): /zhome/Apps
  - [Sol](https://go.lehigh.edu/solsoftware): /share/Apps
* Software is managed using module environment
  - Why? We may have different versions of same software or software built with different compilers
  - Module environment allows you to dynamically change your *nix environment based on software being used
  - Standard on many University and national High Performance Computing resource since circa 2011
* How to use Sol/Maia Software on your [linux](https://go.lehigh.edu/linux) workstation
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

--- .class

## Compilers

* Various versions of compilers installed on Sol 
* Open Source: GNU Compiler (also called gcc even though gcc is the c compiler)
   - 4.8.5 (system default), 5.3.0, 6.1.0, 7.1.0 and 8.1.0
* Commercial: Only two seats of each
   - Intel Compiler: 16.0.3, 17.0.0, 17.0.3 and 18.0.1
   - Portland Group or PGI: 16.5, 16.10, 17.4, 17.7, 18.3 and 19.1
* _We are licensed to install any available version_
* On Sol, all except gcc 4.8.5 are available via the module environment

| Language | GNU | Intel | PGI |
|:--------:|:---:|:-----:|:---:|
| Fortran  | `gfortran` | `ifort` | `pgfortran` |
| C | `gcc` | `icc` | `pgcc` |
| C++ | `g++` | `icpc` | `pgc++` |


--- .class

## Compiling Code

* Usage: `<compiler> <options> <source code>`
* Example:
  - `ifort -o saxpyf saxpy.f90`
  - `gcc -o saxpyc saxpy.c`
* Common Compiler options or flags
  - `-o myexec`: compile code and create an executable myexec. If this option is not given, then a default `a.out` is created.
  - `-l{libname}`: link compiled code to a library called libname. e.g. to use lapack libraries, add `-llapack` as a compiler flag.
  - `-L{directory path}`: directory to search for libraries. e.g. `-L/usr/lib64 -llapack` will search for lapack libraries in /usr/lib64.
  - `-I{directory path}`: directory to search for include files and fortran modules.


--- .class

## Compiling and Running Serial Codes


```sh
[2018-02-22 08:47.27] ~/Workshop/2017XSEDEBootCamp/OpenMP
[alp514.sol-d118](842): icc -o laplacec laplace_serial.c
[2018-02-22 08:47.46] ~/Workshop/2017XSEDEBootCamp/OpenMP
[alp514.sol-d118](843): ./laplacec
Maximum iterations [100-4000]?
1000
---------- Iteration number: 100 ------------
[995,995]: 63.33  [996,996]: 72.67  [997,997]: 81.40  [998,998]: 88.97  [999,999]: 94.86  [1000,1000]: 98.67
---------- Iteration number: 200 ------------
[995,995]: 79.11  [996,996]: 84.86  [997,997]: 89.91  [998,998]: 94.10  [999,999]: 97.26  [1000,1000]: 99.28
---------- Iteration number: 300 ------------
[995,995]: 85.25  [996,996]: 89.39  [997,997]: 92.96  [998,998]: 95.88  [999,999]: 98.07  [1000,1000]: 99.49
---------- Iteration number: 400 ------------
[995,995]: 88.50  [996,996]: 91.75  [997,997]: 94.52  [998,998]: 96.78  [999,999]: 98.48  [1000,1000]: 99.59
---------- Iteration number: 500 ------------
[995,995]: 90.52  [996,996]: 93.19  [997,997]: 95.47  [998,998]: 97.33  [999,999]: 98.73  [1000,1000]: 99.66
---------- Iteration number: 600 ------------
[995,995]: 91.88  [996,996]: 94.17  [997,997]: 96.11  [998,998]: 97.69  [999,999]: 98.89  [1000,1000]: 99.70
---------- Iteration number: 700 ------------
[995,995]: 92.87  [996,996]: 94.87  [997,997]: 96.57  [998,998]: 97.95  [999,999]: 99.01  [1000,1000]: 99.73
---------- Iteration number: 800 ------------
[995,995]: 93.62  [996,996]: 95.40  [997,997]: 96.91  [998,998]: 98.15  [999,999]: 99.10  [1000,1000]: 99.75
---------- Iteration number: 900 ------------
[995,995]: 94.21  [996,996]: 95.81  [997,997]: 97.18  [998,998]: 98.30  [999,999]: 99.17  [1000,1000]: 99.77
---------- Iteration number: 1000 ------------
[995,995]: 94.68  [996,996]: 96.15  [997,997]: 97.40  [998,998]: 98.42  [999,999]: 99.22  [1000,1000]: 99.78

Max error at iteration 1000 was 0.034767
Total time was 4.099030 seconds.
```

--- .class &twocol_width

## Compilers for Parallel Programming: OpenMP & TBB

* OpenMP support is built-in

| Compiler | OpenMP Flag | TBB Flag |
|:---:|:---:|:---:|
| GNU | `-fopenmp` | `-L$TBBROOT/lib/intel64_lin/gcc4.4 -ltbb` |
| Intel | `-qopenmp` | `-L$TBBROOT/lib/intel64_lin/gcc4.4 -ltbb` |
| PGI | `-mp` |

*** =left width:35%

* TBB is available as part of Intel Compiler suite
- `$TBBROOT` depends on the Intel Compiler Suite you want to use.
- Not sure if this will work for PGI Compilers

*** =right width:60%


```sh
[alp514.sol](1083): module show intel
-------------------------------------------------------------------
/share/Apps/share/Modules/modulefiles/toolchain/intel/16.0.3:

module-whatis    Set up Intel 16.0.3 compilers. 
conflict         pgi 
conflict         gcc 
setenv           INTEL_LICENSE_FILE /share/Apps/intel/licenses/server.lic 
setenv           IPPROOT /share/Apps/intel/compilers_and_libraries_2016.3.210/linux/ipp 
setenv           MKLROOT /share/Apps/intel/compilers_and_libraries_2016.3.210/linux/mkl 
setenv           TBBROOT /share/Apps/intel/compilers_and_libraries_2016.3.210/linux/tbb 
...
snip
...

```


--- .class

## Compiling and Running OpenMP Codes



```sh
[2018-02-22 08:47.56] ~/Workshop/2017XSEDEBootCamp/OpenMP/Solutions
[alp514.sol-d118](845): icc -qopenmp -o laplacec laplace_omp.c
[2018-02-22 08:48.09] ~/Workshop/2017XSEDEBootCamp/OpenMP/Solutions
[alp514.sol-d118](846): OMP_NUM_THREADS=4 ./laplacec
Maximum iterations [100-4000]?
1000
---------- Iteration number: 100 ------------
[995,995]: 63.33  [996,996]: 72.67  [997,997]: 81.40  [998,998]: 88.97  [999,999]: 94.86  [1000,1000]: 98.67
---------- Iteration number: 200 ------------
[995,995]: 79.11  [996,996]: 84.86  [997,997]: 89.91  [998,998]: 94.10  [999,999]: 97.26  [1000,1000]: 99.28
---------- Iteration number: 300 ------------
[995,995]: 85.25  [996,996]: 89.39  [997,997]: 92.96  [998,998]: 95.88  [999,999]: 98.07  [1000,1000]: 99.49
---------- Iteration number: 400 ------------
[995,995]: 88.50  [996,996]: 91.75  [997,997]: 94.52  [998,998]: 96.78  [999,999]: 98.48  [1000,1000]: 99.59
---------- Iteration number: 500 ------------
[995,995]: 90.52  [996,996]: 93.19  [997,997]: 95.47  [998,998]: 97.33  [999,999]: 98.73  [1000,1000]: 99.66
---------- Iteration number: 600 ------------
[995,995]: 91.88  [996,996]: 94.17  [997,997]: 96.11  [998,998]: 97.69  [999,999]: 98.89  [1000,1000]: 99.70
---------- Iteration number: 700 ------------
[995,995]: 92.87  [996,996]: 94.87  [997,997]: 96.57  [998,998]: 97.95  [999,999]: 99.01  [1000,1000]: 99.73
---------- Iteration number: 800 ------------
[995,995]: 93.62  [996,996]: 95.40  [997,997]: 96.91  [998,998]: 98.15  [999,999]: 99.10  [1000,1000]: 99.75
---------- Iteration number: 900 ------------
[995,995]: 94.21  [996,996]: 95.81  [997,997]: 97.18  [998,998]: 98.30  [999,999]: 99.17  [1000,1000]: 99.77
---------- Iteration number: 1000 ------------
[995,995]: 94.68  [996,996]: 96.15  [997,997]: 97.40  [998,998]: 98.42  [999,999]: 99.22  [1000,1000]: 99.78

Max error at iteration 1000 was 0.034767
Total time was 2.459961 seconds.
```

--- .class &twocol

## Compilers for Parallel Programming: MPI

* MPI is a library and not a compiler, built or compiled for different compilers.

| Language | Compile Command |
|:--------:|:---:|
| Fortran  | `mpif90` |
| C | `mpicc` |
| C++ | `mpicxx` |

* Usage: `<compiler> <options> <source code>`
*** =left


```sh
[2017-10-30 08:40.30] ~/Workshop/2017XSEDEBootCamp/MPI/Solutions
[alp514.sol](1096): mpif90 -o laplace_f90 laplace_mpi.f90 
[2017-10-30 08:40.45] ~/Workshop/2017XSEDEBootCamp/MPI/Solutions
[alp514.sol](1097): mpicc -o laplace_c laplace_mpi.c
[2017-10-30 08:40.57] ~/Workshop/2017XSEDEBootCamp/MPI/Solutions
```

*** =right

* The MPI compiler command is just a wrapper around the underlying compiler

```bash
[alp514.sol](1080): mpif90 -show
ifort -fPIC -I/share/Apps/mvapich2/2.1/intel-16.0.3/include 
  -I/share/Apps/mvapich2/2.1/intel-16.0.3/include 
  -L/share/Apps/mvapich2/2.1/intel-16.0.3/lib 
  -lmpifort -Wl,-rpath -Wl,/share/Apps/mvapich2/2.1/intel-16.0.3/lib 
  -Wl,--enable-new-dtags -lmpi
```


--- .class

## MPI Libraries

* There are two different MPI implementations commonly used
* `MPICH`: Developed by Argonne National Laboratory
   - used as a starting point for various commercial and open source MPI libraries
   - `MVAPICH2`: Developed by D. K. Panda with support for  InfiniBand, iWARP, RoCE, and Intel Omni-Path. (default MPI on Sol)
   - `Intel MPI`: Intel's version of MPI. __You need this for Xeon Phi MICs__.
      - available in cluster edition of Intel Compiler Suite. Not available at Lehigh
   - `IBM MPI` for IBM BlueGene and 
   - `CRAY MPI` for Cray systems
* `OpenMPI`: A Free, Open Source implementation from merger of three well know MPI implementations. Can be used for commodity network as well as high speed network
   - `FT-MPI` from the University of Tennessee
   - `LA-MPI` from Los Alamos National Laboratory
   - `LAM/MPI` from Indiana University


--- .class

## Running MPI Programs


* Every MPI implementation come with their own job launcher: `mpiexec` (MPICH,OpenMPI &amp; MVAPICH2), `mpirun` (OpenMPI)  or `mpirun_rsh` (MVAPICH2)
* Example: `mpiexec [options] <program name> [program options]`
* Required options: number of processes and list of hosts on which to run program 

| Option Description | mpiexec | mpirun | mpirun_rsh |
|:-----------:|:-------:|:------:|:----------:|
| run on `x` cores | -n x | -np x | -n x |
| location of the hostfile | -f filename | -machinefile filename | -hostfile filename |

* To run a MPI code, you need to use the launcher from the same implementation that was used to compile the code.
* For e.g.: You cannot compile code with OpenMPI and run using the MPICH and MVAPICH2's launcher
   - Since MVAPICH2 is based on MPICH, you can launch MVAPICH2 compiled code using MPICH's launcher.
* SLURM scheduler provides `srun` as a wrapper around all mpi launchers


--- .class

## Compiling and Running MPI Codes


```sh
[2018-02-22 08:48.27] ~/Workshop/2017XSEDEBootCamp/MPI/Solutions
[alp514.sol-d118](848): mpicc -o laplacec laplace_mpi.c
[2018-02-22 08:48.41] ~/Workshop/2017XSEDEBootCamp/MPI/Solutions
[alp514.sol-d118](849): mpiexec -n 4 ./laplacec
Maximum iterations [100-4000]?
1000
---------- Iteration number: 100 ------------
[995,995]: 63.33  [996,996]: 72.67  [997,997]: 81.40  [998,998]: 88.97  [999,999]: 94.86  [1000,1000]: 98.67
---------- Iteration number: 200 ------------
[995,995]: 79.11  [996,996]: 84.86  [997,997]: 89.91  [998,998]: 94.10  [999,999]: 97.26  [1000,1000]: 99.28
---------- Iteration number: 300 ------------
[995,995]: 85.25  [996,996]: 89.39  [997,997]: 92.96  [998,998]: 95.88  [999,999]: 98.07  [1000,1000]: 99.49
---------- Iteration number: 400 ------------
[995,995]: 88.50  [996,996]: 91.75  [997,997]: 94.52  [998,998]: 96.78  [999,999]: 98.48  [1000,1000]: 99.59
---------- Iteration number: 500 ------------
[995,995]: 90.52  [996,996]: 93.19  [997,997]: 95.47  [998,998]: 97.33  [999,999]: 98.73  [1000,1000]: 99.66
---------- Iteration number: 600 ------------
[995,995]: 91.88  [996,996]: 94.17  [997,997]: 96.11  [998,998]: 97.69  [999,999]: 98.89  [1000,1000]: 99.70
---------- Iteration number: 700 ------------
[995,995]: 92.87  [996,996]: 94.87  [997,997]: 96.57  [998,998]: 97.95  [999,999]: 99.01  [1000,1000]: 99.73
---------- Iteration number: 800 ------------
[995,995]: 93.62  [996,996]: 95.40  [997,997]: 96.91  [998,998]: 98.15  [999,999]: 99.10  [1000,1000]: 99.75
---------- Iteration number: 900 ------------
[995,995]: 94.21  [996,996]: 95.81  [997,997]: 97.18  [998,998]: 98.30  [999,999]: 99.17  [1000,1000]: 99.77
---------- Iteration number: 1000 ------------
[995,995]: 94.68  [996,996]: 96.15  [997,997]: 97.40  [998,998]: 98.42  [999,999]: 99.22  [1000,1000]: 99.78

Max error at iteration 1000 was 0.034767
Total time was 1.030180 seconds.
```


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

## Scheduler &amp; Resource Management

* A software that manages resources (CPU time, memory, etc) and schedules job execution
   - Sol: Simple Linux Utility for Resource Management (SLURM)
   - Others:  Portable Batch System (PBS)
          - Scheduler: Maui
          - Resource Manager: Torque
          - Allocation Manager: Gold

* A job can be considered as a user???s request to use a certain amount of resources for a certain amount of time

* The Scheduler or queuing system determines
    - The order jobs are executed
    - On which node(s) jobs are executed


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

## File Systems - Where to run jobs?

* There are three distinct file spaces on Sol.
   - HOME, your home directory on Sol, 150GB quota default. More if PI has purchased a CEPH space.
   - SCRATCH, 500GB scratch storage on the local disk associated with your running job.
   - CEPHFS, 11TB global parallel scratch for running jobs with a lifetime of 14 days.

* Best Practices
   - Store all input files, submit scripts, and output files following job completion in HOME
   - Single node jobs, use SCRATCH to run your jobs and store temporary files
      - SCRATCH is deleted by the SLURM scheduler when job is complete, so make sure that you copy all required data back to HOME.
      - SLURM automatically creates `/scratch/${USER}/${SLURM_JOBID}`
   - All jobs, use CEPHFS. CEPHFS contents are kept for 14 days after your job is complete.
      - SLURM automatically creates `/share/ceph/scratch/${USER}/${SLURM_JOBID}`


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

## Available Queues on Sol

| Partition Name | Max Runtime in hours | Max SU consumed node per hour |
|:----------:|:--------------------:|:--------------------:|
| lts | 72 | 20 |
| im1080 | 48 | 20 | 
| im1080-gpu | 48 | 24 |
| eng | 72 | 22 |
| eng-gpu | 72 | 24 |
| engc | 72 | 24 |
| himem | 72 | 48 |
| enge | 72 | 36 |
| engi | 72 | 36 |
| im2080 | 48 | 28 |
| im2080-gpu | 48 | 36
| debug | 1 | 16 |


--- .class #id

## How much memory can or should I use per core?

* The amount of installed memory less the amount that is used by the operating system and other utilities

* A general rule of thumb on most HPC resources: leave 1-2GB for the OS to run. 

| Partition | Max Memory/core (GB) | Recommended Memory/Core (GB) |
|:---------:|:--------------------:|:----------------------------:|
| lts | 6.4 | 6.2 |
| eng/im1080/im1080-gpu/enge/engi/im2080/im2080-gpu | 5.3 | 5.1 |
| engc | 2.66 | 2.4 |
| himem | 32 | 31.5 |


*  <span class="alert">if you need to run a single core job that requires 10GB memory in the imlab partition, you need to request 2 cores even though you are only using
         1 core.</span>  


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
      * All compute node have a naming convention __sol-[a,b,c,d,e]###__
      * head node is __sol__
* Batch Jobs
   - Executed using a batch script without user intervention
       - Advantage: system takes care of running the job
       - Disadvantage: cannot change sequence of commands after submission
   - Useful for Production runs
   - Workflow: write a script -> submit script -> take mini vacation ->
   analyze results

--- .class #id .small

## Useful SLURM Directives

| SLURM Directive | Description |
|:---------------:|:-----------:|
|  --partition=queuename | Submit job to the <em>queuename</em> partition. |
|  --time=hh:mm:ss | Request resources to run job for <em>hh</em> hours, <em>mm</em> minutes and <em>ss</em> seconds. |
|  --nodes=m | Request resources to run job on <em>m</em> nodes. |
|  --ntasks-per-node=n | Request resources to run job on <em>n</em> processors on each node requested. |
|  --ntasks=n | Request resources to run job on a total of <em>n</em> processors. |
|  --job-name=jobname | Provide a name, <em>jobname</em> to your job. |
|  --output=filename.out | Write SLURM standard output to file filename.out. |
|  --error=filename.err | Write SLURM standard error to file filename.err. |
|  --mail-type=events | Send an email after job status events is reached. |
| | events can be NONE, BEGIN, END, FAIL, REQUEUE, ALL, TIME&#95;LIMIT(&#95;90,80) |
|  --mail-user=address | Address to send email. |
|  --account=mypi | charge job to the __mypi__ account |


--- .class #id .small

## Useful SLURM Directives (contd)

| SLURM Directive | Description |
|:---------------:|:-----------:|
|  --qos=nogpu | Request a quality of service (qos)  for the job in `imlab`, `engc` partitions. |
| | Job will remain in queue indefinitely if you do not specify qos |
|  --gres=gpu:# | Specifies number of gpus requested in the gpu partitions, min 1 cpu per gpu |
| | up to 2 gpus on im1080-gpu and eng-gpu, and up to 4 gpus on im2080-gpu | 

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

## SLURM Filename Patterns

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



<!--
--- .class #id .small

## Useful PBS Directives

| PBS Directive | Description |
|:-------------:|:------------|
|  -q queuename | Submit job to the <em>queuename</em> queue.|
|  -l walltime=hh:mm:ss| Request resources to run job for <em>hh</em> hours, <em>mm</em> minutes and <em>ss</em> seconds.|
|  -l nodes=m:ppn=n| Request resources to run job on <em>n</em> processors each on <em>m</em> nodes.|
|  -l mem=xGB| Request <em>xGB</em> per node requested, applicable on Maia only|
|  -N jobname| Provide a name, <em>jobname</em> to your job.|
|  -o filename.out| Write PBS standard output to file filename.out.|
|  -e filename.err| Write PBS standard error to file filename.err.|
|  -j oe| Combine PBS standard output and error to the same file.|
|  -M your email address| Address to send email.|
|  -m status| Send an email after job status status is reached.| 
| | status can be a (abort), b (begin) or e (end). The arguments can be combined |
| |  for e.g. abe will send email when job begins and either aborts or ends|

-->


--- .class #id .pbs

## Useful SLURM environmental variables


| SLURM Command | Description | 
|:-------------:|:-----------:|
| SLURM_SUBMIT_DIR | Directory where the <code>qsub</code> command was executed |
| SLURM_JOB_NODELIST | Name of the file that contains a list of the HOSTS provided for the job |
| SLURM_NTASKS | Total number of cores for job |
| SLURM_JOBID | Job ID number given to this job |
| SLURM_JOB_PARTITION | Queue job is running in |
| SLURM_JOB_NAME | Name of the job. This can be set using the -N option in the PBS script |

--- .class #id

## Job Types: Interactive

   - Use `srun` command with SLURM Directives followed by `--pty /bin/bash`
       * `srun --time=<hh:mm:ss> --nodes=<# of nodes> --ntasks-per-node=<#
   of core/node> -p <queue name> --pty /bin/bash`
       * If you have `soltools` module loaded, then use `interact` with at
   least one SLURM Directive
           - `interact -t 20` [Assumes `-p lts -n 1 -N 20`]
   - Run a job interactively replace `--pty /bin/bash --login` with the
     appropriate command. 
       - For e.g. `srun -t 20 -n 1 -p imlab --qos=nogpu $(which lammps) -in in.lj -var x 1 -var n 1`
       - Default values are 3 days, 1 node, 20 tasks per node and lts
   partition

--- .class #id

## Job Types: Batch 

* Workflow: write a script -> submit script -> take mini vacation -> analyze
  results
* Batch scripts are written in bash, tcsh, csh or sh
   * ksh scripts will work if ksh is installed
* Add SLURM directives after the shebang line but before any shell
  commands
   * `#SBATCH DIRECTIVES`
* Submitting Batch Jobs
   * `sbatch filename`

* `sbatch` can take the options for `#SBATCH` as command line arguments
   * `sbatch --time=1:00:00 --nodes=1 --ntasks-per-node=20 -p lts filename` 


--- .class #id .big

## Minimal submit script for Serial Jobs



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
srun $(which lammps) -in in.lj -sf gpu -pk gpu 1 

exit
```

--- .class #id

## Need to run multiple jobs

* In sequence or serially
    * Option 1: Submit jobs as soon as previous jobs complete
    * Option 2: Submit jobs with a dependency
       * [SLURM](https://webapps.lehigh.edu/dokuwiki/sites/researchcomputing/doku.php?id=slurm#submitting_dependency_jobs):
  `sbatch --dependency=afterok:<JobID> <Submit Script>`

* In parallel, use [GNU Parallel](https://webapps.lehigh.edu/dokuwiki/sites/researchcomputing/doku.php?id=parallel)

--- .class #id

## Monitoring &amp; Manipulating Jobs


| SLURM Command | Description |
|:-----------:|:-----------:|:-------------:|
| squeue | check job status (all jobs) |
| squeue -u username | check job status of user <em>username</em> |
| squeue --start | Show <strong>estimated</strong> start time of jobs in queue |
| scontrol show job jobid | Check status of your job identified by <em>jobid</em> |
| scancel jobid | Cancel your job identified by <em>jobid</em> |
| scontrol hold jobid | Put your job identified by <em>jobid</em> on hold |
| scontrol release jobid | Release the hold that <strong>you put</strong> on <em>jobid</em> |

* The following scripts written by RC staff can also be used for monitoring
  jobs. 
   * __checkq__: `squeue` with additional useful option. 
   * __checkload__: `sinfo` with additional options to show load on compute nodes.  
* load the `soltools` module to get access to RC staff created scripts


--- .class 

## Modifying Resources for Queued Jobs

* Modify a job after submission but before starting: 
    * `scontrol update SPECIFICATION jobid=<jobid>`
* Examples of `SPECIFICATION` are
    * add dependency after a job has been submitted: `dependency=<attributes>`
    * change job name: `jobname=<name>`
    * change partition: `partition=<name>`
    * modify requested runtime: `timelimit=<hh:mm:ss>`
    * change quality of service (when changing to imlab/engc): `qos=nogpu` 
    * request gpus (when changing to one of the gpu partitions): `gres=gpu:<1-4>`
* SPECIFICATIONs can be combined for e.g. command to move a queued job to `imlab` partition and change timelimit to 48 hours for a job 123456 is
   * `scontrol update partition=im1080 qos=nogpu timelimit=48:00:00 jobid=123456`



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

* [Monthly usage summary](https://webapps.lehigh.edu/hpc/usage/dashboard.html) (updated daily)
* [Scheduler Status](https://webapps.lehigh.edu/hpc/monitor) (updated every 15 mins)
* [Current AY Usage Reports](https://webapps.lehigh.edu/hpc/monitor/ay1920.html) (updated daily)
* Prior AY Usage Reports
    * [AY1819](https://webapps.lehigh.edu/hpc/monitor/ay1819.html)
    * [AY1718](https://webapps.lehigh.edu/hpc/monitor/ay1718.html)
    * [AY1617](https://webapps.lehigh.edu/hpc/monitor/ay1617.html)
* <span class="alert">Usage reports restricted to Lehigh IPs</span>


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


 
