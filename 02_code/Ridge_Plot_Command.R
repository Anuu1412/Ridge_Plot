# Install packages if needed
install.packages("ggridges")
library(ggplot2)
library(ggridges)
set.seed(123)

data <- choose.files()
data <- read.csv(data)


# Ridge plot
gene_name <- "CRP"
ggplot(data, aes(x = expression, y = condition, fill = condition)) +
  geom_density_ridges(alpha = 0.7, scale = 1) +
  scale_fill_viridis_d() +
  theme_ridges() +
  labs(
    title = paste(gene_name, "Expression Across 12 Conditions"),
    x = "Expression Level",
    y = "Condition"
  )
