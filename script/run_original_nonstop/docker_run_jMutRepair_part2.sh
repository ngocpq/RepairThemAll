ToolName=jMutRepair

Part=2
#BUG_PARAS="-b Defects4J -i Chart_1 Chart_5 Chart_7 Chart_25 Chart_26 Math_2 Math_28 Math_50 Math_57 Math_80 Math_81 Math_82 Math_84 Math_85 Math_88 Closure_21 Closure_22 Closure_62 Lang_22 Lang_27 Time_4 Time_11 Chart_13 Chart_15 Math_8 Math_32 Math_40 Math_49 Math_78 Math_95"

#BUG_PARAS="-b Defects4J -i Chart_1 Chart_5 Chart_7 Chart_25 Chart_26 Math_2 Math_28 Math_50"
BUG_PARAS="-b Defects4J -i Math_57 Math_80 Math_81 Math_82 Math_84 Math_85 Math_88"
#BUG_PARAS="-b Defects4J -i Closure_21 Closure_22 Closure_62 Lang_22 Lang_27 Time_4 Time_11"
#BUG_PARAS="-b Defects4J -i Chart_13 Chart_15 Math_8 Math_32 Math_40 Math_49 Math_78 Math_95"


SEED=300
POPSIZE=10
MAXGEN=500
TIMEOUT=120

MIPI_MODE=CsNetRnnTri
MIPI_HOST=115.145.178.160
MIPI_PORT=9765

mipifilter_before_validation=false
mipi_avoid_early_stop=false

MIPI_PARAMETER=MipiWebsocketServerHost:${MIPI_HOST}:MipiWebsocketServerPort:${MIPI_PORT}:mipifilter_before_validation:${mipifilter_before_validation}:mipi_avoid_early_stop:${mipi_avoid_early_stop}

OUTPUT_DIR_NAME=results_pop${POPSIZE}_maxgen${MAXGEN}_time${TIMEOUT}_seed${SEED}_${MIPI_MODE}_befor_${mipifilter_before_validation}_es${mipi_avoid_early_stop}_notstopfirst

REPTA_ROOT_DIR=/workspace/RepairThemAll
OUTPUT_DIR=${REPTA_ROOT_DIR}/${OUTPUT_DIR_NAME}
mkdir -p ${OUTPUT_DIR}

DOCKER_CONTAINER_NAME="${ToolName}-p${Part}-${MIPI_MODE}-bv_${mipifilter_before_validation}-aes_${mipi_avoid_early_stop}_notstopfirst"

sudo docker run -it --rm --name ${DOCKER_CONTAINER_NAME} -v ${REPTA_ROOT_DIR}/data:/data -v ${OUTPUT_DIR}:/results -v ${REPTA_ROOT_DIR}/repair_tools:/repair_tools -v ${REPTA_ROOT_DIR}/script:/script tdurieux/repairthemall ${ToolName} --seed ${SEED} --population ${POPSIZE} --maxgen ${MAXGEN} --maxtime ${TIMEOUT} --dontstopfirst --parameters ${MIPI_PARAMETER} ${BUG_PARAS}
