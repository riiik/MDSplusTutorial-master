#! /bin/sh
source /opt/MARTe2/Projects/MARTe2-utils/bin/setenv.sh
export CLASSPATH=$CLASSPATH:$MDSPLUS_DIR/java/classes/jScope.jar:$MDSPLUS_DIR/java/classes/jTraverser.jar:$MDSPLUS_DIR/java/classes/jDevices.jar:$MDSPLUS_DIR/java/classes/MDSobjects.jar:$MDSPLUS_DIR/java/classes/jDispatcher.jar

export my_tree_path=~/projects/MDSplusTutorial-master/trees/
export my_subtree_path=~/projects/MDSplusTutorial-master/trees/

export marte_mds_path=~/projects/MDSplusTutorial-master/trees/


export CONF=$MARTe2_DIR/../MARTe2-demos-sigtools/Configurations
export BIN=$MARTe2_DIR/../bin
export TREES=$MARTe2_DIR/../MARTe2-demos-sigtools/Trees

# source $BIN/setenv.sh
# sudo chown -R xtermuser /opt/MARTe2/
# git clone git@git.ccfe.ac.uk:cboswel/MDSTest.git $BIN/MDSTest
# cd $BIN/MDSTest
# source $BIN/MDSTest/install.sh
