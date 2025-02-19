import os
from os.path import expanduser
from core.Support import getGridTime

REPAIR_ROOT = os.path.join(os.path.dirname(__file__), '..')
DATA_PATH = os.path.join(REPAIR_ROOT, "data")
REPAIR_TOOL_FOLDER = os.path.join(REPAIR_ROOT, "repair_tools")
WORKING_DIRECTORY = os.environ.get("WORKING_DIRECTORY", os.path.join("/tmp/"))
OUTPUT_PATH = os.environ.get("OUTPUT_PATH", os.path.join(REPAIR_ROOT, "results/"))

Z3_PATH = os.path.join(REPAIR_ROOT, "libs", "z3", "build")

MAVEN_BIN = os.environ.get("MAVEN_BIN", expanduser("/usr/bin/"))

JAVA7_HOME = os.environ.get("JAVA7_HOME", expanduser("/usr/lib/jvm/java-1.7.0-openjdk-amd64/bin/"))
JAVA8_HOME = os.environ.get("JAVA8_HOME", expanduser("/usr/lib/jvm/java-1.8.0-openjdk-amd64/bin/"))
JAVA_ARGS = os.environ.get("JAVA_ARGS", "-Xmx4g -Xms1g")

LOCAL_THREAD = int(os.environ.get("THREADS", "1"))
GRID5K_MAX_NODE = 50
##In minutes
TOOL_TIMEOUT = os.environ.get("TOOL_TIMEOUT", "120")
#Format: HH:MM ## the fuction getGridTime calculates the timeout of the grid taking into account an overhead (expressed as percentage)
GRID5K_TIME_OUT = getGridTime(TOOL_TIMEOUT, overhead=0.33)

