docker pull tdurieux/repairthemall

# script/repair.py Nopol -b Defects4J -i Chart_5
# script/repair.py jGenProg -b Defects4J -i Chart_5
# script/repair.py jGenProg -b Defects4J -i Math_85
# script/repair.py SmFix -b Defects4J -i Math_85 Chart_5

# sudo docker run -it --rm -v /workspace/RepairThemAll/data:/data -v /workspace/RepairThemAll/script:/script -v /workspace/RepairThemAll/results:/results -v /workspace/RepairThemAll/repair_tools:/repair_tools --entrypoint bash tdurieux/repairthemall


# sudo docker run -it --rm --entrypoint bash tdurieux/repairthemall

# sudo docker run -it --rm -v /workspace/RepairThemAll/data:/data -v /workspace/RepairThemAll/results:/results -v /workspace/RepairThemAll/repair_tools:/repair_tools --entrypoint bash tdurieux/repairthemall


# sudo docker run -it --rm -v /workspace/RepairThemAll/data:/data -v /workspace/RepairThemAll/results:/results -v /workspace/RepairThemAll/repair_tools:/repair_tools -v /workspace/RepairThemAll/script:/script tdurieux/repairthemall SmFix -b Defects4J -i Math_85


# Chart_1 Chart_3 Chart_5 Chart_7 Chart_13 Chart_15 Chart_25 Math_2 Math_5 Math_7 Math_8 Math_28 Math_40 Math_49 Math_50 Math_53 Math_60 Math_70 Math_71 Math_73 Math_78 Math_80 Math_81 Math_82 Math_84 Math_85 Math_95 Time_4 Time_11


# SmFix Chart

ToolName=SmFix # jGenProg

sudo docker run -it --rm -v /workspace/RepairThemAll/data:/data -v /workspace/RepairThemAll/results:/results -v /workspace/RepairThemAll/repair_tools:/repair_tools -v /workspace/RepairThemAll/script:/script tdurieux/repairthemall ${ToolName} -b Defects4J -i Chart_1 Chart_3 Chart_5 Chart_7 Chart_13 Chart_15 Chart_25


# SmFix Math

sudo docker run -it --rm -v /workspace/RepairThemAll/data:/data -v /workspace/RepairThemAll/results:/results -v /workspace/RepairThemAll/repair_tools:/repair_tools -v /workspace/RepairThemAll/script:/script tdurieux/repairthemall ${ToolName} -b Defects4J -i Math_2 Math_5 Math_7 Math_8 Math_28 Math_40 Math_49 Math_50 Math_53 Math_60 Math_70 Math_71 Math_73 Math_78 Math_80 Math_81 Math_82 Math_84 Math_85 Math_95


# SmFix Time

sudo docker run -it --rm -v /workspace/RepairThemAll/data:/data -v /workspace/RepairThemAll/results:/results -v /workspace/RepairThemAll/repair_tools:/repair_tools -v /workspace/RepairThemAll/script:/script tdurieux/repairthemall ${ToolName} -b Defects4J -i Time_4 Time_11




