
#source ~/.profile

#cd /mnt/e/bioinfo/MAO_lab/HMCan-master

#bash homer_batch_run_motif.sh

#human-p


for i in /mnt/e/bioinfo/MAO_lab/HMCan-master/result/*/*.scores.bed;
	do
	echo processing" "$(basename $i .bed)
	mkdir ./motif_enrichment/$(basename $i .bed)
	findMotifsGenome.pl $i hg19 ./motif_enrichment/$(basename $i .bed)/ -size 200 -mask -nomotif

		
	done