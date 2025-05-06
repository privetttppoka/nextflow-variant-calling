process refindex {
    conda 'bioconda::bwa bioconda::samtools'
    publishDir 'results/refindex'
    tag "$reference"

    input:
    path reference
    
    output:
    path "*"
    
    script:
    """
    bwa index $reference
    """

}