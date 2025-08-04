#options(repos = c(CRAN = "https://cloud.r-project.org/"))

#install.packages("party")
library(party)
input.dat<-readingSkills[c(1:105),]
output.tree<-ctree(nativeSpeaker~age+shoeSize+score,
data=input.dat)
png("decision_tree_plot.png")

# Plot the tree
plot(output.tree)

# Close the graphical device
dev.off()
#dt is saved in the working directory