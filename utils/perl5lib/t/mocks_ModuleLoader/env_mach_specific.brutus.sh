#!/usr/bin/env sh -f 
#===============================================================================
# Automatically generated module settings for brutus
# DO NOT EDIT THIS FILE DIRECTLY!  Please edit env_mach_specific.xml 
# in your CASEROOT. This file is overwritten every time modules are loaded!
#===============================================================================

.  /etc/profile.d/modules.sh
CIME_REPO=`./xmlquery CIME_REPOTAG -value`
if [ -n $CIME_REPO  ]
then 
  COMPILER=`./xmlquery  COMPILER          -value`
  MPILIB=`./xmlquery  MPILIB        -value`
  DEBUG=`./xmlquery  DEBUG         -value`
  OS=`./xmlquery  OS        -value`
  PROFILE_PAPI_ENABLE=`./xmlquery  PROFILE_PAPI_ENABLE -value`
fi
module purge  
if [ "$COMPILER" = "intel" ]
then
	module load intel/10.1.018
fi
if [ "$COMPILER" = "pgi" ]
then
	module load pgi/9.0-1
fi
if [ "$MPILIB" = "mpich" ]
then
	module load mvapich2/1.4rc2
fi
if [ "$MPILIB" = "openmpi" ]
then
	module load open_mpi/1.4.1
fi
module load netcdf/4.0.1 
