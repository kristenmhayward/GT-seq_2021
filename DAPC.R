#import vcf and add population information
pb_vcfR<-read.vcfR("ddRAD_and_GTseq_inds.culled2x.recode.vcf")
pb_genind<-vcfR2genind(pb_vcfR)

pops<-read.csv("pop_info_for_vcf.txt", sep = "\t", header=TRUE)

pb_genind@pop<-as.factor(pops$Pop)

pb_genind@pop

#find clusters
grp<-find.clusters(pb_genind, max.n.clust = 15)

#selected 4 as the number of grps

#make DAPC of assignments
pb_dapc<-dapc(pb_genind, grp$grp)
