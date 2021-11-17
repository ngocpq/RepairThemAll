
mkdir -p ../statistic_output

#grep -r -m 1 -B 1 "isSolution: true" * | grep "Variant id: " > firstSolution.txt

#grep -r -m 1 -A 1 "Patch 1" * | grep "VARIANT_ID=" > firstSolution_2.txt

# count the number of patches that are predicted incorrect
#grep -r -c "Predicted\":\"incorrect" * | grep -v "log:0" | grep -v ".json:"

# count the number of created variants
grep -r -c "\-\-Summary Creation: for variant " * | grep -v ".json:" | sed --expression="s/repair.log:/repair.log\tNR_CREATED_VARIANT\t/" | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/\//\t/g" > ../statistic_output/NR_CREATED_VARIANT.txt

grep -r -m 1 "Error at generation" * > ../statistic_output/errors_run.txt
grep -r -m 1 -A 4 "Error at generation" * > ../statistic_output/errors_Messages.txt

grep -r -m 1 "End Repair Search" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/\//\t/g" | sed --expression="s/- End Repair Search:/\tEnd Repair Search\t/"> ../statistic_output/out_EndRepairSearch.txt

grep -r -m 1 "Found Solution, child variant " * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/\//\t/g" | sed --expression="s/ - -Found Solution, child variant #/\tFound Solution, child variant\t/"> ../statistic_output/found_patchId.txt

grep -r -c "Found Solution, child variant " * | grep -v ".json:" | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/\//\t/g" | sed --expression="s/repair.log:/repair.log\tSolution count\t/" > ../statistic_output/solution_count.txt

# grep -r -c "isSolution: true" * > countSolution.txt

echo "output status:"
grep -r "OUTPUT_STATUS=" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/[\/:=]/\t/g" > ../statistic_output/outputStatus.txt

grep -r "TOTAL_TIME=" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/[\/:=]/\t/g" > ../statistic_output/totalTime.txt

grep -r "NR_GENERATIONS=" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/[\/:=]/\t/g" > ../statistic_output/nr_generation.txt

grep -r "NR_RIGHT_COMPILATIONS=" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/[\/:=]/\t/g" > ../statistic_output/nr_right_compilation.txt

grep -r "NR_FAILLING_COMPILATIONS=" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/[\/:=]/\t/g" > ../statistic_output/nr_failing_compilation.txt

grep -r "NR_EXECUTED_TESTS=" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/[\/:=]/\t/g" > ../statistic_output/NR_EXECUTED_TESTS.txt

grep -r "NR_VARIANT_MIPI_FILTERED_BEFORE_VALIDATION=" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/[\/:=]/\t/g" > ../statistic_output/NR_VARIANT_MIPI_FILTERED_BEFORE_VALIDATION.txt

grep -r "NR_VALIDATION_EXECUTED=" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/[\/:=]/\t/g" > ../statistic_output/NR_VALIDATION_EXECUTED.txt

grep -r "NR_REGRESSION_EXECUTED=" * | sed --expression="s/befor_/before\t/" | sed --expression="s/_es/\tAvoidEarlyStop\t/" | sed --expression="s/[\/:=]/\t/g" > ../statistic_output/NR_REGRESSION_EXECUTED.txt

