ToolName=jGenProg-MIPI

SEED=300
POPSIZE=20
MAXGEN=500
TIMEOUT=120

OUTPUT_DIR_NAME=results_pop${POPSIZE}_maxgen${MAXGEN}_time${TIMEOUT}_seed${SEED}

REPTA_ROOT_DIR=/workspace/RepairThemAll
OUTPUT_DIR=${REPTA_ROOT_DIR}/${OUTPUT_DIR_NAME}
mkdir -p ${OUTPUT_DIR}

# sudo docker run -it --rm -v ${REPTA_ROOT_DIR}/data:/data -v ${OUTPUT_DIR}:/results -v ${REPTA_ROOT_DIR}/repair_tools:/repair_tools -v ${REPTA_ROOT_DIR}/script:/script tdurieux/repairthemall ${ToolName} --seed ${SEED} --population ${POPSIZE} --maxgen ${MAXGEN} --maxtime ${TIMEOUT} -b Defects4J -i Chart_1 Chart_3 Chart_5 Chart_7 Chart_13 Chart_15 Chart_25 Math_2 Math_5 Math_7 Math_8 Math_28 Math_40 Math_49 Math_50 Math_53 Math_60 Math_70 Math_71 Math_73 Math_78 Math_80 Math_81 Math_82 Math_84 Math_85 Math_95 Time_4 Time_11

sudo docker run -it --rm -v ${REPTA_ROOT_DIR}/data:/data -v ${OUTPUT_DIR}:/results -v ${REPTA_ROOT_DIR}/repair_tools:/repair_tools -v ${REPTA_ROOT_DIR}/script:/script tdurieux/repairthemall ${ToolName} --seed ${SEED} --population ${POPSIZE} --maxgen ${MAXGEN} --maxtime ${TIMEOUT} -b QuixBugs
