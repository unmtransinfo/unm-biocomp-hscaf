#!/bin/sh
#
if [ "`uname -s`" = "Darwin" ]; then
	APPDIR="/Users/app"
elif [ "`uname -s`" = "Linux" ]; then
	APPDIR="/home/app"
else
	APPDIR="/home/app"
fi
#
LIBDIR=$HOME/src/java/lib
CLASSPATH=$LIBDIR/unm_biocomp_hscaf.jar
CLASSPATH=$CLASSPATH:$LIBDIR/unm_biocomp_util.jar
CLASSPATH=$CLASSPATH:$APPDIR/ChemAxon/JChem/lib/jchem.jar
#
#LIBDIR=$APPDIR/lib
#CLASSPATH=$CLASSPATH:$LIBDIR/berkeleydb.jar
#
java -classpath $CLASSPATH edu.unm.health.biocomp.hscaf.hscaf_scaf2smarts $*
#
