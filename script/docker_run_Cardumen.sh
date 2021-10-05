# jKali

OUTPUT_DIR=/workspace/RepairThemAll/results_Cardumen
mkdir -p $OUTPUT_DIR

ToolName=Cardumen
# jKali Math

sudo docker run -it --rm -v /workspace/RepairThemAll/data:/data -v ${OUTPUT_DIR}:/results -v /workspace/RepairThemAll/repair_tools:/repair_tools -v /workspace/RepairThemAll/script:/script tdurieux/repairthemall ${ToolName} -b Defects4J -i Chart_1 Chart_3 Chart_4 Chart_5 Chart_6 Chart_7 Chart_9 Chart_11 Chart_12 Chart_13 Chart_15 Chart_17 Chart_24 Chart_25 Chart_26 Closure_7 Closure_10 Closure_12 Closure_13 Closure_21 Closure_22 Closure_33 Closure_40 Closure_45 Closure_46 Closure_55 Closure_133 Lang_7 Lang_10 Lang_14 Lang_22 Lang_24 Lang_27 Lang_39 Math_2 Math_5 Math_6 Math_8 Math_18 Math_20 Math_28 Math_30 Math_32 Math_33 Math_40 Math_41 Math_46 Math_49 Math_50 Math_57 Math_58 Math_60 Math_62 Math_63 Math_69 Math_70 Math_73 Math_74 Math_78 Math_79 Math_80 Math_81 Math_82 Math_84 Math_85 Math_88 Math_95 Math_97 Math_101 Math_104 Math_105 Time_4 Time_7 Time_9 Time_11 Time_17 Time_18

