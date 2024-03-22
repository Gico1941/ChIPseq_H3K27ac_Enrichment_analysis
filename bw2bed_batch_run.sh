
#source ~/.profile



# conda create --name bigwig ucsc-bigwigtobedgraph -c bioconda
# conda activate bigwig
# cd /mnt/e/bioinfo/MAO_lab/neuro/GSE154907_RAW/bigwig2bedgraph
# bigWigToBedGraph in.bigWig out.bedGraph


#bash bw2bed_batch_run.sh

for i in /mnt/e/bioinfo/MAO_lab/neuro/GSE154907_RAW/RAW_bigwig/*.bw;

	do

	echo processing" "$i

	bigWigToBedGraph $i  /mnt/e/bioinfo/MAO_lab/neuro/GSE154907_RAW/bigwig2bedgraph/converted_bed/$(basename $i)".bed"

	done



