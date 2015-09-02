proc ModulesHelp { } {
     global mcr 1.0
     puts stderr "\tSets up PATH for mcr for matlab R2014a.\n"
}
module-whatis   "Set up PATH for mcr for matlab R2014a."
set   mcr  1.0
conflict matlab/R2013a 
conflict matlab/R2015a
module load matlab/R2014a 
setenv     MCRHOME        /home/alp514/mcr/v83
