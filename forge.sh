#!/bin/bash

JAVA="/usr/lib/jvm/java-21-openjdk-amd64/bin/java"
ARGS="-Dfile.encoding=UTF-8 -Dsun.stdout.encoding=UTF-8 -Dsun.stderr.encoding=UTF-8"
VMARGS="-Xms768m -XX:+UseParallelGC -Dsun.java2d.xrender=false --add-opens java.base/java.util=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.lang.reflect=ALL-UNNAMED --add-opens java.base/java.text=ALL-UNNAMED --add-opens java.desktop/java.awt.font=ALL-UNNAMED --add-opens java.base/jdk.internal.misc=ALL-UNNAMED --add-opens java.base/sun.nio.ch=ALL-UNNAMED --add-opens java.base/java.nio=ALL-UNNAMED --add-opens java.base/java.math=ALL-UNNAMED --add-opens java.base/java.util.concurrent=ALL-UNNAMED --add-opens java.desktop/java.awt=ALL-UNNAMED --add-opens java.base/java.net=ALL-UNNAMED --add-opens java.desktop/javax.swing=ALL-UNNAMED --add-opens java.desktop/java.beans=ALL-UNNAMED --add-opens java.desktop/javax.swing.border=ALL-UNNAMED -Dio.netty.tryReflectionSetAccessible=true"
DEBUG="-agentlib:jdwp=transport=dt_socket,address=127.0.0.1:50117,suspend=y,server=n -javaagent:/opt/intellij/idea-2025.2.2/plugins/java/lib/rt/debugger-agent.jar=file:///tmp/capture12724341442039884869.props -Dkotlinx.coroutines.debug.enable.creation.stack.trace=false -Ddebugger.agent.enable.coroutines=true -Dkotlinx.coroutines.debug.enable.flows.stack.trace=true -Dkotlinx.coroutines.debug.enable.mutable.state.flows.stack.trace=true"

cd ./forge-gui-desktop/ || exit
$JAVA $ARGS $VMARGS -jar ./forge-gui-desktop.jar "$@"

