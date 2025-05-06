process faindex {
    conda 'bioconda::bwa bioconda::samtools'
    publishDir 'results/faindex'
    tag "$reference"

    input:
    path reference
    output:
    path "*.fai"
    script:
    """
    samtools faidx $reference
    """

}