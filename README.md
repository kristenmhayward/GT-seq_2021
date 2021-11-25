# GT-seq_2021
Pipelines, scripts, and raw sequencing data used by Hayward et al. (2021) 
Genotyping-in-thousands by sequencing (GT-seq) of non-invasive fecal and degraded samples:  a new panel to enable ongoing monitoring of Canadian polar bear populations

Thank you for checking out our data/scripts. 
All credit for GT-seq pipeline scripts goes to Campbell et al. (2015): https://github.com/GTseq/GTseq-Pipeline
Campbell, N.R., S.A. Harmon, and S.R. Narum. 2015. Genotyping-in-thousands by sequencing (GT-seq): a cost effective SNP genotyping method based on custom amplicon sequencing. Molecular Ecology Resources 15:855-867.

Please read carefully, and feel free to contact k.hayward@queensu.ca with any questions. 

Descriptions of files:
1. DAPC.R: R script to perform discriminant analysis of principal components with GT-seq data
2. KHayward_relatedness.Rmd: R notebook for relatedness calculations, simulations
3. KHayward_self-assignment.Rmd: R notebook for self-assignment tests
4. Pb-relatedness.txt: raw pairwise relatedness values from 642 individuals (GT-seq + ddRAD data) 
5. bcftools_pipeline_2021.txt: notes/troubleshooting guide for a bcftools genotyping pipeline
6. ddRAD_and_GTseq_inds.culled2_genepop.txt - raw GT-seq and ddRADseq sequencing data for GT-seq panel SNPs in genepop format. 
7. ddRAD_and_GTseq_inds.culled2x.recode.vcf - raw GT-seq and ddRADseq sequencing data for GT-seq panel SNPs in vcf format. 
8. extraparams.txt: extraparams file for STRUCTURE analysis
9. gtseq_campbell_pipeline2021.txt: notes/troubleshooting guide for Campbell et al. (2015) GT-seq pipeline 
10. logistic_regression.R: R script for logistic regression on qPCR-determined DNA quantity (ng/uL) & genotyping success (0,1)
11. mainparams.txt: mainparams file for STRUCTURE analysis
12. structure_job_list.txt: STRUCTURE scripts for analysis 
