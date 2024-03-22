
#source ~/.profile

#cd /mnt/e/bioinfo/MAO_lab/neuro/bed/

#bash homer_batch_run.sh

#human-p

for i in /mnt/e/bioinfo/MAO_lab/neuro/bed/result_of_board_bed/*/*.bed;
	do
	if [ ! -f "${i%.*}""_annotation.txt" ];
	then
	echo processing" "$(basename $i )


	annotatePeaks.pl $i hg19 -annStats "${i%.*}""_annotation.txt" > "${i%.*}""_homer.txt"
	
	fi
	done