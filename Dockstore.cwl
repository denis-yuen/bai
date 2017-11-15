baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
doc: bai
id: bai
inputs:
  nameBai:
    doc: ''
    inputBinding: {position: 2, prefix: --nameBai}
    type: string
  nameBam:
    doc: ''
    inputBinding: {position: 1, prefix: --nameBam}
    type: File
label: Bam Index Maker
outputs:
  nameReturn:
    doc: ''
    outputBinding: {glob: nameReturn/*}
    type: File
requirements:
- {class: DockerRequirement, dockerOutputDirectory: /data/out, dockerPull: 'pfda2dockstore/bai:3'}
