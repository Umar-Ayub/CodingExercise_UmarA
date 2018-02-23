#!/usr/bin/env cwl_runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: bwa mem
inputs:
  reference_genome:
    type: File
    inputBinding:
      position: 1
  cram_file:
    type: File
    inputBinding:
      position: 2
outputs:
  output_file:
    type: File
    outputBinding:
      glob: '$(inputs["cram_file"])out.txt'
