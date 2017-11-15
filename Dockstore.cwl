baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
doc: bai
id: bai
doc: |
    ![build_status](https://quay.io/repository/collaboratory/dockstore-tool-bamstats/status)
    A Docker container for the BAMStats command. See the [BAMStats](http://bamstats.sourceforge.net/) website for more information.

dct:creator:
  "@id": "http://orcid.org/0000-0002-7681-6415"
  foaf:name: Brian O'Connor
  foaf:mbox: "mailto:briandoconnor@gmail.com"

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
