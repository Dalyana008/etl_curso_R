# amostragem sem reposição usando função sample
sample(distNormalSimulacao, 15, replace = FALSE) 

# amostragem com reposição usando função sample
sample(distNormalSimulacao, 15, replace = TRUE)

# bootstraping com função replicate
set.seed(412) 

bootsDistNormal10 <- replicate(10, sample(distNormalSimulacao, 10, replace = TRUE)) 
bootsDistNormal10

# calculando uma estatística com bootstrapping (10 amostras)
mediaBootsNormal10 <- replicate(10, mean(sample(distNormalSimulacao, 10, replace = TRUE)))

# calculamos a média de 10 amostras de 10 casos
mediaBootsNormal50 <- replicate(50, mean(sample(distNormalSimulacao, 10, replace = TRUE)))

# calculamos a média de 50 amostras de 10 casos
mediaBootsNormal100 <- replicate(100, mean(sample(distNormalSimulacao, 10, replace = TRUE)))
# calculamos a média de 100 amostras de 10 casos

# comparação
mean(mediaBootsNormal10) # media do boostraping 10
mean(mediaBootsNormal50) # media do boostraping 50
mean(mediaBootsNormal100) # media do boostraping 100
mean(distNormalSimulacao) # media dos dados originais

# partições
install.packages('caret', dependencies = T) 
library(caret)

# partições de dados
particaoDistNormal <- createDataPartition(1:length(distNormalSimulacao), p=.7)
treinoDistNormal <- distNormalSimulacao[unlist(particaoDistNormal)] 
testeDistNormal <- distNormalSimulacao[- unlist(particaoDistNormal)]
