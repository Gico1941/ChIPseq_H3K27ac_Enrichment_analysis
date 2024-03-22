# conda install bioconda::bioconductor-rtracklayer
# conda install --name bigwig -c bioconda ucsc-wigtobigwig

# source ~/.profile
# conda activate bigwig


# cd /mnt/e/bioinfo/MAO_lab/HMCan-master
# bash ./LILY-master/LILY_batch_run.sh

for i in /mnt/e/bioinfo/MAO_lab/HMCan-master/result/*;
do
	if [ ! -f ./result/$(basename $i)/$(basename $i)".scores.bed" ];
	then
			if [ ! -f ./result/$(basename $i)/$(basename $i)".wig.bw" ];
			then
				cp -R ./GSE154907_RAW/RAW_bigwig/$(basename $i)".renorm.bw" ./result/$(basename $i)/$(basename $i)".wig.bw"
			fi
	cat ./LILY-master/scripts/runLILY.R | R --slave --args $i/$(basename $i) ./result/$(basename $i) 12500 2500 /mnt/e/bioinfo/MAO_lab/HMCan-master/hg19_refseq.ucsc /mnt/e/bioinfo/MAO_lab/HMCan-master/hg19.fa.fai
	
	fi
done





################     for  HMCan out put of a/b/c_peaks.narrowPeak LILY input file path is a/b/c (down to the file name but without extension _peaks.narrowPeak)
################     to generate result, besides three mendatory result : CNV_profile , _peaks.narrowPeak , and _region.bed , there need a extra c.wig.bw file


#cat ./LILY-master/scripts/renormalizeWig.R | R --slave --args /mnt/e/bioinfo/MAO_lab/HMCan-master/example/GSM6429313_SKNSHm_CD44pos.H3K27ac.renorm H3K27ac