
#source ~/.profile


# cd /mnt/e/bioinfo/MAO_lab/neuro/GSE154907_RAW/bigwig2bedgraph



#bash bedgraph2bed_batch.sh

# convert bedgraph : chr/starting/ending/value to  bed : chr/starting/ending/ID/value/strandness (here is unstranded so strandness is “.”)




for i in /mnt/e/bioinfo/MAO_lab/neuro/GSE154907_RAW/bigwig2bedgraph/converted_bed/*.bed;

	do

	echo processing" "$i

	awk '{ \
    		if ($1 ~ /^chr/ && $4 != 0 ) { \
        	print $1"\t"$2"\t"$3"\tid-"NR"\t"$4"\t."; \
    		} \
	}' $i \
	> /mnt/e/bioinfo/MAO_lab/neuro/GSE154907_RAW/bigwig2bedgraph/bedgraph2bed/$(basename $i)

	done






