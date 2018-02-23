# PipelineSection
## Usage

Sample workflow for applying the bwa mem algorithm to align a query sequence to a Humon genome reference sequence in an automated manner using snakemake, a workflow management system used as a tool to create reproducible and scalable data analyses. Here we executed the bwa allignment command in the shell though it can be executed in Python as well.

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

The IPython Notebook CHOP_dataexercise.ipynb provided goes into extracting and analyzing data from an SQLite database. This database is a processed version of the public data set for a specific instance of a query tool. The original open MRS data model can be found here: https://wiki.openmrs.org/display/docs/Data+Model.
