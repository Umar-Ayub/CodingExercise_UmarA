# Snakemake file for the following workflow
# Input CRAM file
# Apply bwa mem for realign to the hg38 reference genome
# Preconditions: input fasta i.e. the reference genome is indexed (use : bwa index <ref>)
# Time Complexity is O(n) for bwa mem: linear time complexity depending upon the length of query sequences.
# Space Complexity is O(nlogn) but could be better depending upon implementations 




rule bwa_mem:
    input:
        "hg38.fa",
        "{sample}.cram"
    output:
        '{sample}.txt'
    threads: 4
    shell:
        'bwa mem -t {threads} {input[0]} {input[1]} > {output}'
