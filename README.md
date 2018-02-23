# PipelineSection
## Usage

Sample workflow for applying the bwa mem algorithm to align a query sequence to a Humon genome reference sequence in an automated manner. 
### Getting started 
To install bwa tools in Linux Ubuntu use:
`sudo apt-get install bwa`
Pass name of an output file with 'txt' replaced with 'cram' in input extension

```pip install snakemake``` 


```snakemake <name>.txt```

The command `snakemake example.txt` will use the cram file named `example.cram` as input and output the results in `example.txt`.

Optional paramater `-t` sets number of cores
Preconditions: input fasta i.e. the reference genome is indexed (use : bwa index <ref>)
Time Complexity is O(n) for bwa mem: linear time complexity depending upon the length of query sequences.
Space Complexity is O(nlogn) but could be better depending upon implementations
  
***
# Data Section

The IPython 


