process report {
    conda 'bioconda::multiqc'
    publishDir 'results/report', mode: 'copy'

    input:
    path files
    output:
    path "*"
    script:
    """
    multiqc .
    """

}