#!/bin/sh

FELIX_HOME="/usr/share/felix-framework"
FELIX_CONF="/etc/felix-framework/config.properties"
FELIX_OPTS=""
JAVA_OPTS="-Dfelix.config.properties=file:$FELIX_CONF"

# Include the wrappers utility script
. /usr/lib/java-wrappers/java-wrappers.sh

# We need a java5 runtime
find_java_runtime java5 java6 java7

exec $JAVA_HOME/bin/java $JAVA_OPTS -jar $FELIX_HOME/bin/felix.jar $FELIX_OPTS "$@"


