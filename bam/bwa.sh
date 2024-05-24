bwa index aratha1-ser.fa
bwa index ecoli-ser.fa
bwa index hg19-ser.fa
bwa index methr-ser.fa
bwa index sacer-ser.fa
bwa mem -W13 -k6 -xont2d -T20 aratha1-ser.fa aratha1.fa > aratha1.bam
bwa mem -W13 -k6 -xont2d -T20 ecoli-ser.fa ecoli.fa > ecoli.bam
bwa mem -W13 -k6 -xont2d -T20 hg19-ser.fa hg19.fa > hg19.bam
bwa mem -W13 -k6 -xont2d -T20 methr-ser.fa methr.fa > methr.bam
bwa mem -W13 -k6 -xont2d -T20 sacer-ser.fa sacer.fa > sacer.bam
samtools sort aratha1.bam > aratha1.std.bam
samtools sort ecoli.bam > ecoli.std.bam
samtools sort hg19.bam > hg19.std.bam
samtools sort methr.bam > methr.std.bam
samtools sort sacer.bam > sacer.std.bam
samtools index aratha1.std.bam
samtools index ecoli.std.bam
samtools index hg19.std.bam
samtools index methr.std.bam
samtools index sacer.std.bam
samtools idxstats aratha1.std.bam > count/aratha1.txt
samtools idxstats ecoli.std.bam > count/ecoli.txt
samtools idxstats hg19.std.bam > count/hg19.txt
samtools idxstats methr.std.bam > count/methr.txt
samtools idxstats sacer.std.bam > count/sacer.txt
python3 get_counts.py -o rep1.counts.tsv -i {aratha1,ecoli,hg19,methr,sacer}.bam > rep1.stats.tsv
python3 get_counts.py -o count/aratha1.count.tsv -i aratha1.bam > count/aratha1.tsv
python3 get_counts.py -o count/ecoli.count.tsv -i ecoli.bam > count/ecoli.tsv
python3 get_counts.py -o count/hg19.count.tsv -i hg19.bam > count/hg19.tsv
python3 get_counts.py -o count/methr.count.tsv -i methr.bam > count/methr.tsv
python3 get_counts.py -o count/sacer.count.tsv -i sacer.bam > count/sacer.tsv
