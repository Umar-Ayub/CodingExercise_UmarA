# PipelineSection
## Usage

Sample workflow for applying the bwa mem algorithm to align a query sequence to a Humon genome reference sequence in an automated manner using snakemake, a workflow management system used as a tool to create reproducible and scalable data analyses. Here we executed the bwa allignment command in the shell though it can be executed in Python as well.

### Getting started 
To install bwa tools in Linux Ubuntu use:
`sudo apt-get install bwa`
In order to use the tool, we pass the name of an **output** file with the extension string i.e. '.cram' replaced with '.txt' from the input extension name.

```pip install snakemake``` 


```snakemake <name>.txt```

The command `snakemake example.txt` will use the cram file named `example.cram` in the current directory as input and output the results to the same directory as `example.txt`.

With the optional paramater `-t` we can adjust the number of cores.

Preconditions: input fasta i.e. the reference genome is indexed (use : bwa index <ref>)
  
Time Complexity is O(n) for bwa mem: linear time complexity depending upon the length of query sequences. The Space Complexity is O(nlogn) but could be better depending upon implementations. Note that this function will break incase of a misnamed file or  if specified preconditions and not met. In that case more robust error handling and testing can be performed within Python using try except blocks. 
  
***
# Data Section

The IPython Notebook CHOP_dataexercise.ipynb provided goes into extracting and analyzing data from an SQLite database. This database is a processed version of the public data set for a specific instance of a query tool. The original open MRS data model can be found here: https://wiki.openmrs.org/display/docs/Data+Model.

***
24th Feb 2018 Pipeline Section Update:

An indexed reference genome is required for the Snakemake code to run which can be downloaded using 

`wget http://hgdownload-test.cse.ucsc.edu/goldenPath/hg38/bigZips/hg38.fa.gz`.

This file is ~ 1GB and can be indexed using

`bwa index [options] <in.fasta>`.

The provided `<in.cram>` files can then be used to test using the snakemake command above.





