# jKali

OUTPUT_DIR=/workspace/RepairThemAll/results_jKali
mkdir -p $OUTPUT_DIR

ToolName=jKali
# jKali Math

sudo docker run -it --rm -v /workspace/RepairThemAll/data:/data -v ${OUTPUT_DIR}:/results -v /workspace/RepairThemAll/repair_tools:/repair_tools -v /workspace/RepairThemAll/script:/script tdurieux/repairthemall ${ToolName} -b Defects4J -i Chart_1 Chart_5 Chart_13 Chart_15 Chart_25 Chart_26 Math_2 Math_8 Math_28 Math_32 Math_40 Math_49 Math_50 Math_78 Math_80 Math_81 Math_82 Math_84 Math_85 Math_95 Time_4 Time_11

