
#source ~/.profile



# conda create --name bigwig ucsc-bigwigtobedgraph -c bioconda
# conda activate bigwig
# cd /mnt/e/bioinfo/MAO_lab/neuro/GSE154907_RAW/bigwig2bedgraph
# bigWigToBedGraph in.bigWig out.bedGraph


#bash /mnt/e/bioinfo/MAO_lab/HMCan-master/HMCan_batch_run.sh


for i in /mnt/e/bioinfo/MAO_lab/neuro/GSE154907_RAW/bigwig_Converted_wig/*.wig;
do
	if [ ! -f /mnt/e/bioinfo/MAO_lab/HMCan-master/result/$(basename $i .renorm.bw.wig) ];
	then

	echo processing" "$i
	mkdir /mnt/e/bioinfo/MAO_lab/HMCan-master/result/$(basename $i .renorm.bw.wig)
	./HMCan $i - /mnt/e/bioinfo/MAO_lab/HMCan-master/HMCan.config.narrow.txt /mnt/e/bioinfo/MAO_lab/HMCan-master/result/$(basename $i .renorm.bw.wig)/$(basename $i .renorm.bw.wig)
	fi
	done

