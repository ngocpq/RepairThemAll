ToolName=SmFix

BUG_PARAS="-b Defects4J -i Chart_1 Chart_1 Chart_11 Chart_12 Chart_13 Chart_15 Chart_17 Chart_24 Chart_25 Chart_26 Chart_3 Chart_4 Chart_5 Chart_6 Chart_7 Chart_9 Closure_10 Closure_12 Closure_13 Closure_133 Closure_21 Closure_22 Closure_33 Closure_40 Closure_45 Closure_46 Closure_55 Closure_7 Lang_10 Lang_14 Lang_22 Lang_24 Lang_27 Lang_39 Lang_7 Math_101 Math_104 Math_105 Math_18 Math_2 Math_20 Math_28 Math_30 Math_32 Math_33 Math_40 Math_41 Math_46 Math_49 Math_5 Math_50 Math_53 Math_57 Math_58 Math_6 Math_60 Math_62 Math_63 Math_69 Math_7 Math_70 Math_71 Math_73 Math_74 Math_78 Math_79 Math_8 Math_80 Math_81 Math_82 Math_84 Math_85 Math_88 Math_95 Math_97 Time_11 Time_17 Time_18 Time_4 Time_7 Time_9"

SEED=300
POPSIZE=10
MAXGEN=500
TIMEOUT=120

MIPI_MODE=CsNetRnnTri
MIPI_HOST=115.145.178.160
MIPI_PORT=9765

mipifilter_before_validation=false
mipi_avoid_early_stop=false

#MIPI_PARAMETER=MipiWebsocketServerHost:${MIPI_HOST}:MipiWebsocketServerPort:${MIPI_PORT}:mipifilter_before_validation:${mipifilter_before_validation}:mipi_avoid_early_stop:${mipi_avoid_early_stop}
MIPI_PARAMETER=mipifilter_before_validation:${mipifilter_before_validation}:mipi_avoid_early_stop:${mipi_avoid_early_stop}

OUTPUT_DIR_NAME=results_pop${POPSIZE}_maxgen${MAXGEN}_time${TIMEOUT}_seed${SEED}_${MIPI_MODE}_befor_${mipifilter_before_validation}_es${mipi_avoid_early_stop}

REPTA_ROOT_DIR=/workspace/RepairThemAll
OUTPUT_DIR=${REPTA_ROOT_DIR}/${OUTPUT_DIR_NAME}
mkdir -p ${OUTPUT_DIR}

DOCKER_CONTAINER_NAME="${ToolName}-${MIPI_MODE}-bv_${mipifilter_before_validation}-aes_${mipi_avoid_early_stop}"

sudo docker run -it --rm --name ${DOCKER_CONTAINER_NAME} -v ${REPTA_ROOT_DIR}/data:/data -v ${OUTPUT_DIR}:/results -v ${REPTA_ROOT_DIR}/repair_tools:/repair_tools -v ${REPTA_ROOT_DIR}/script:/script tdurieux/repairthemall ${ToolName} --seed ${SEED} --population ${POPSIZE} --maxgen ${MAXGEN} --maxtime ${TIMEOUT} --mipi_server_port ${MIPI_PORT} --mipi_server_address ${MIPI_HOST} --parameters ${MIPI_PARAMETER} ${BUG_PARAS}
