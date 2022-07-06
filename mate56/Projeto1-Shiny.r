################################################################################
#################################### AULA 1 ####################################
################################################################################

#################################### PACOTE ####################################
#install.packages('rsconnect')
library(shiny)
library(shinydashboard)
library(corrgram)
library(ggplot2)
library(ggpubr)
#install
#library(rsconect)
library(rsconnect)
################################################################################
#rsconnect::setAccountInfo(name='dfranco',
#                          token='E07FE112FEB99D510B995F1BFF4E05E9',
#                          secret='<SECRET>')
rsconnect::setAccountInfo(name='dfranco',
                          token='E07FE112FEB99D510B995F1BFF4E05E9',
                          secret='D/lhSXD5Ev0ylFvo1E40BNY/5GZ8BtbjT7kxcF75')
#library(rsconnect)
#rsconnect::deployApp('C:/Users/Lineia/Documents/mate56/')

# VISUALIZAÃÃO INTERATIVA - Projeto de Visualização de Dados: Vulnerabilidade Social em Idosos

library(readr)
#Dados_Lab01 <- read.csv("C:/Users/SUPORTE/documents/dataset.csv", sep="")
Dados_Lab01 <- read.csv("dataset.csv", sep="")
#Dados_Lab01 <- read.csv("C:/Users/Lineia/Documents/mate56/dataset.csv", sep="")

ui <- dashboardPage(skin = "blue",
                    
                    dashboardHeader(title = "Mais transparência",
                                    titleWidth = 700),
                    dashboardSidebar(
                      width = 200,
                      sidebarMenu(
                        menuItem("Justificativa", tabName = "item1", icon = icon("book-open")),
                        #atom
#                        menuItem("Power", tabName = "subitem3", icon = icon("plug"))),
                        menuItem("Metodologia", tabName = "item2", icon = icon("laptop-code")),
                        menuItem("Descritivos", tabName = "item3", icon = icon("glasses")),
                        menuItem("Mapas", tabName = "item4", icon = icon("globe")),
                        menuItem("Referência", tabName = "item5", icon = icon("graduation-cap")),
                        br(),
#h6("powered"),
                        tags$img(src='ufba.jpg')
                        #br()

                      )),
                    
                    dashboardBody(
                      tags$head(tags$style(HTML('
                      .main-header .logo {
                      font-family: Georgia;
                      font-weight: bold;
                      font-size: 32px;
                      }
                    '))),
                      tabItems(
                        tabItem(tabName = "item1",
                                h2("Justificativa"),
                                br(),
                                h4("Bancos de dados abertos com muita informação a ser extraída."),
                                br(),
                                h3("O problema"),
                                h4("Falta de informação e conhecimento sobre a distribuição da desigualdade no Brasil."),
                                h4("Falta de políticas públicas claramente definidas para combater a desigualdade."),
                                h4("População idosa em aumento."),
                                h4("População idosa em pobreza extrema em aumento"),
                                h4("Censo 2022"),
                                br(),
                                h3("Nós, cidadãos, temos o direito a informação de forma clara e transparente."),
                                h3("Precisamos saber o que acontece em nosso país.")),

                                
                                
                                #h4("As vulnerabilidades sociais vinculam-se a situaÃ§Ãµes de empobrecimento da classe trabalhadora, relacionadas a dificuldades materiais para a manutenção da sobrevivÃªncia, mas, tambÃ©m, a dificuldades relacionais e culturais, pois estas interferem na forma de viver dos trabalhadores e de suas famÃ­lias (DE MORAES ALVES e SEMZEZEM, 2013)."),
                              #  h4("Embora a vulnerabilidade social seja fator importante para todas as fases da vida, na velhice hÃ¡ evidÃªncias crescentes que ligam circunstÃ¢ncias sociais com a idade. Idosos frÃ¡geis em contexto de vulnerabilidade social trazem consigo demandas para as polÃ­ticas pÃºblicas, podendo estar altamente relacionada Ã  saÃºde e Ã s necessidades de auxÃ­lios da assistÃªncia social (ANDREW e KEEF, 2014; ANDREW, 2015; JESUS et al., 2017)."),
                               # h4("Segundo o CORECON BA â Conselho Regional de Economia da Bahia, a vulnerabilidade social no estado era considerada muito alta em 2000 e alta em 2010 (CORECON-BA, 2015).")),
                        tabItem(tabName = "item2",
                                h2("Metodologia"),
                                h4("As vulnerabilidades sociais são um fator determinante na sociedade, entendê-las pode ajudar na melhora de políticas públicas e na conscientização da população, neste caso o enfoque é a população vulnerável na terceira idade, particularmente no Estado da Bahia. Os dados analisados a um nível de município, já Os dados ão do CENSO-2010."),
                                h6(tags$img(src='c2010.png',type="png", height=400, width=800)),
                                h6(tags$img(src='c2022.png',type="png", height=400, width=800))),
                      
#                                h4("MUN MunicÃ­pio do Estado da Bahia "),
 #                               h4("V1 	População total"),
  #                              h4("V2 	% da população que vive em domicílios com banheiro e Ã¡gua encanada "),
   #                             h4("V3 	IDHM - Ãndice de Desenvolvimento Humano Municipal "),
    #                            h4("V4 	IDHM Renda "),
     #                           h4("V5 	IDHM Longevidade "),
      #                          h4("V6 	IDHM Educação "),
       #                         h4("V7 	População masculina com 80 anos e mais de idade "),
        #                        h4("V8 	Taxa de envelhecimento "),
         #                       h4("V9 	População feminina com 80 anos e mais de idade "),
          #                      h4("V10 População em domicílios vulnerÃ¡veis e com idoso "),
           #                     h4("Uma anÃ¡lise de agrupamentos pode ajudar a entender graficamente onde estÃ£o concentrados os municÃ­pios similares na classificação, de acordo com as variÃ¡veis do censo.")),
                        tabItem(tabName = "item5",
                                
                                #mainPanel(
                                #  box(status = "warning", 
                                #      width = 1200,
                                #      height = 1200,
                                #      solidHeader = T,
                                #      title = "ReferÃªncia",
                                h2("Referência"),
                                h4("Bancos de dados abertos com muita informação a ser extraída."),
                                h4("KELLER Guimarães Silveira, Natália Alves de Matos, Thalles de Freitas Castro, Ana Beatriz Farias de Souza, Olivia Maria de Paula Alves Bezerra, Frank Silva Bezerra. Are there still sex differences in the functioning of the elderly?. Não paginado. Disponível em: http://www.scielo.br/scielo.php?script=sci_arttext&pid=S0103-51502022000100210&lang=pt Acesso em: 06 de maio de 2022."),
                                h4("ROMERO Dalia Elena [...]Danilo Rodrigues Pereira da Silva. Idosos no contexto da pandemia da COVID-19 no Brasil: efeitos nas condições de saúde, renda e trabalho. Não paginado. Disponível em: https://www.scielo.br/j/csp/a/gXG5RYBXmdhc8ZtvKjt7kzc/?lang=pt. Acesso em: 06 de maio de 2022."),
                                h4("BARBOSA Lara de Melo, Kenya Noronha, Mirela Castro Santos Camargos,  Carla Jorge Machado. Perfis de integração social entre idosos institucionalizados não frágeis no município de Natal, Rio Grande do Norte, Brasil. Não paginado. Disponível em: https://www.scielo.br/j/csc/a/QjmHMXkmwjkJtKhYbNGSyjH/?lang=pt. Acesso em: 06 de maio de 2022."),
                                #h4("DIDON�? Letícia Souza [...]Marisa Silvana Zazzetta. Factors associated with depressive symptoms in older adults in context of social vulnerability. Não paginado. Disponível em: https://www.scielo.br/j/reben/a/LG5C4ZzBLKB45Qs7sL4tBqw/?lang=en. Acesso em: 06 de maio de 2022."),
                                h4("MACHADO de Jesus Isabela Thaís, Maria Angélica Andreotti Diniz, Rafaela Brochine Lanzotti, Fabiana de Sousa Orlandi, Sofia Cristina Iost Pavarin, Marisa Silvana Zazzetta. Fragilidade e qualidade de vida de idosos em contexto de vulnerabilidade social. Não paginado. Disponível em: https://www.scielo.br/j/tce/a/mr3rsQRHTq3VGnCkTPcqQ9b/?lang=pt. Acesso em: 06 de maio de 2022."),
                                h4("MACHADO de Jesus Isabela Thaís, Ariene Angelini dos Santos Orlandi, Eliane da Silva Grazziano, Marisa Silvana Zazzetta. Fragilidade de idosos em vulnerabilidade social. Não paginado. Disponível em: https://www.scielo.br/j/ape/a/SSwxqdQ5WShQRCkHV3Q4nSg/?lang=pt. Acesso em: 06 de maio de 2022."),
                                h4("LIBERALESO Neri Anita, Mônica Sanches Yassuda, Ludgleydson Fernandes de Araújo, Maria do Carmo Eulálio, Benedita Edina Cabral, Maria Eliane Catunda de Siqueira, Geraldine Alves dos Santos, José Guilherme de Arruda Moura. Metodologia e perfil sociodemográfico, cognitivo e de fragilidade de idosos comunitários de sete cidades brasileiras: Estudo FIBRA.  Não paginado. Disponível em: https://www.scielo.br/j/csp/a/xQ65bzxRxMRZ9FpddG344dt/?lang=pt. Acesso em: 06 de maio de 2022."),
                                h4("ALVES Jolinda de Moraes, Priscila Semzezem Belatur. Vulnerabilidade social, abordagem territorial e proteção na Política de Assistência Social | Alves | Serviço Social em Revista. Não paginado. Disponível em: http://www.uel.br/revistas/uel/index.php/ssrevista/article/view/16115. Acesso em: 06 de maio de 2022."),
                                      
                                h4("Isabela Thaís Machado de Jesus , Maria Angélica Andreotti Diniz , Rafaela Brochine Lanzotti , Fabiana de Sousa Orlandi , Sofia Cristina Iost Pavarin , Marisa Silvana Zazzetta. Fragilidade e qualidade de vida de idosos em contexto de vulnerabilidade social. Não paginado. Disponível em: https://www.scielo.br/j/tce/a/mr3rsQRHTq3VGnCkTPcqQ9b/?format=pdf&lang=pt. Acesso em: 06 de maio de 2022."),
                                h4("FERNANDO. Bahia apresenta redução no índice de vulnerabilidade social. Não paginado. Disponível em:  http://www.corecon-ba.org.br/bahia-apresenta-reducao-no-indice-de-vulnerabilidade-social/. Acesso em: 06 de maio de 2022.")),
                                      #h4("Are there still sex differences in the functioning of the elderly."),
                                      #h4("Idosos no contexto da pandemia da COVID-19 no Brasil: efeitos nas condiÃ§Ãµes de saÃºde, renda e trabalho."),
                                      #h4("Perfis de integração social entre idosos institucionalizados nÃ£o frÃ¡geis no municÃ­pio de Natal, Rio Grande do Norte, Brasil."),
                                      #h4("Factors associated with depressive symptoms in older adults in context of social vulnerability."),
                                      #h4("Fragilidade e qualidade de vida de idosos em contexto de vulnerabilidade social."),
                                      #h4("Fragilidade de idosos em vulnerabilidade social."))

                                  #)),
                        #  tabItems(
                        tabItem(tabName = "subitem3",
                                mainPanel(
                                  box(status = "warning", 
                                      width = 5,
                                      height = 300,
                                      solidHeader = T,
                                      title = "Menu de InformaÃ§Ãµes",
                                      h1("Escreva aqui <h1>"),
                                      h2("Escreva aqui <h2>"),
                                      h3("Escreva aqui <h3>"),
                                      h4("Escreva aqui <h4>"),
                                      h4(strong("Escreva <strong>"), "aqui"))
                                )),
                        tabItem(tabName = "item3",
                                fluidRow(
                                  box(
                                    solidHeader = F, status = "warning",
                                    plotOutput("ex_a")
                                  ),
                                  box(
                                    solidHeader = F, status = "warning",
                                    plotOutput("ex_b")
                                  ),
                                  box(
                                    solidHeader = F, status = "warning",
                                    plotOutput("ex_c")
                                  ),
                                  box(
                                    solidHeader = F, status = "warning",
                                    plotOutput("ex_d")
                                  ),
                                  box(
                                    solidHeader = F, status = "warning",
                                    plotOutput("ex_e")
                                  ),
                                  box(
                                    solidHeader = F, status = "warning",
                                    plotOutput("ex_g")
                                  ),
                                  box(
                                    solidHeader = F, status = "warning",
                                    plotOutput("ex_h")
                                  ),
                                  box(
                                    solidHeader = F, status = "warning",
                                    plotOutput("ex_i")
                                  )
                                )),
                        tabItem(tabName = "item4",
                                fluidRow(
                                  box(
                                    width = 500,
                                    height = 600,
                                    solidHeader = F, status = "warning",
                                    #tags$img(src='www/Rplot08.png', height=100, width=100),
                                    #h6("Mapas", br(), tags$img(src='Rplot08.png',type="png")),
                                    h6(tags$img(src='m.png',type="png", height=400, width=800)),
                                    h6(tags$img(src='c.png',type="png", height=150, width=300)),
                                    h6(tags$img(src='Rplot08.png',type="png", height=400, width=650)),
                                    h6(tags$img(src='w.png',type="png", height=300, width=500)),
                                    plotOutput("ex_f")
                                  )
                              #  )),
                        #        mainPanel(
                        #          box(status = "warning", 
                        #              width = 100,
                        #              height = 500,
                        #              solidHeader = T,
                        #              title = "Municipios da Bahia",
                        #              img(src="Rplot08.png" ))
                                      #h4(<img> "Rplot08.png"<img>),
                                      #h4("Are there still sex differences in the functioning of the elderly."),
                                      #h4("Idosos no contexto da pandemia da COVID-19 no Brasil: efeitos nas condiÃ§Ãµes de saÃºde, renda e trabalho."),
                                      #h4("Perfis de integração social entre idosos institucionalizados nÃ£o frÃ¡geis no municÃ­pio de Natal, Rio Grande do Norte, Brasil."),
                                      #h4("Factors associated with depressive symptoms in older adults in context of social vulnerability."),
                                      #h4("Fragilidade e qualidade de vida de idosos em contexto de vulnerabilidade social."),
                                      #h4("Fragilidade de idosos em vulnerabilidade social.")),
                                  
                                ))
                        #tabItem(tabName = "item4",
                        #        fluidRow(
                       # tabsetPanel(type = "tab",
                        #            box(
                         #           solidHeader = F, status = "warning",
                         #           imageOutput("Help", tags$img("Rplot08.jpg"))
                        #            )
                         #        ))
                                    #box("Help", tags$img(src= "Rplot08.jpg"))
                                    #tabPanel("Help", tags$img(src= "Rplot08.jpg")),
                                    #tabPanel("Data",tableOutput("mtcars"))
                          
                        #)
                          #      fluidRow(
                          #        box("Help", tags$img(src= "C:/Users/Lineia/Documents/mate56/Rplot08.png")
                                    #solidHeader = F, status = "warning",
                                    #plotOutput("ex_f")
                                    #imageOutput("myImage")
                                    #imageOutput(<img> "Rplot08.png"<img>)
                                  #)
                                  
                                #))                        
                      )
                    ))


server <- function(input, output) { 
  
  output$ex_a <- renderPlot({
    mi_archivo <- read.csv2("dataset.csv")
    summary(mi_archivo)
    boxplot(mi_archivo$V1, main="População total",
            ylab="População", col=("blue"))
#    boxplot(mi_archivo$V2, main="% da população que vive em domicílios com banheiro e Ã¡gua encanada ",
#            ylab="População", col=("blue"))
#    boxplot(mi_archivo$V3, mi_archivo$V4, mi_archivo$V5, mi_archivo$V6, main="IDHM - Ãndice de Desenvolvimento Humano Municipal",
#            names=c("Municipal","Renda","Longevidade", "Educação"),
#            xlab="IDHM", ylab="Ãndice", col=("blue"))
    
#    boxplot(mi_archivo$V10, mi_archivo$V7, mi_archivo$V9, main="População em domicílios vulnerÃ¡veis e com idoso",
#            names=c("Total","Masculina","Feminina"),
#            xlab="População", ylab="Ãndice", col=("blue"))
    
#    boxplot(mi_archivo$V8, main="Taxa de envelhecimento",
#            ylab="Taxa", col=("blue"))
    
    

#    bp1 <- ggplot(Dados_Lab01, aes(y = escore_socioeconomico)) +
#      geom_boxplot() +
#      labs(y="Escore SocioeconÃ´mico")+
#      theme_minimal()
    
#    bp2 <- ggplot(Dados_Lab01, aes(y = mortalidade)) +
#      geom_boxplot() +
#      labs(y="Taxa de Mortalidade")+y
#      theme_minimal()
    
#    gg1 <- ggarrange(bp2, bp1, labels = c("A", "B"), ncol = 2, nrow = 1)
#    annotate_figure(gg1, top = text_grob("Boxplot", color = "black", face = "bold", size = 20))
    
  })
  
  output$ex_b <- renderPlot({
    mi_archivo <- read.csv2("dataset.csv")
    summary(mi_archivo)
 #   boxplot(mi_archivo$V1, main="População total",
#            ylab="População", col=("blue"))
    boxplot(mi_archivo$V2, main="% da população que vive em domicílios com banheiro e água encanada ",
            ylab="População", col=("blue"))
#    boxplot(mi_archivo$V3, mi_archivo$V4, mi_archivo$V5, mi_archivo$V6, main="IDHM - Ãndice de Desenvolvimento Humano Municipal",
#            names=c("Municipal","Renda","Longevidade", "Educação"),
#            xlab="IDHM", ylab="Ãndice", col=("blue"))
    
#    boxplot(mi_archivo$V10, mi_archivo$V7, mi_archivo$V9, main="População em domicílios vulnerÃ¡veis e com idoso",
#            names=c("Total","Masculina","Feminina"),
#            xlab="População", ylab="Ãndice", col=("blue"))
    
#    boxplot(mi_archivo$V8, main="Taxa de envelhecimento",
#            ylab="Taxa", col=("blue"))

#    dd <- ggplot(Dados_Lab01, aes(x = escore_socioeconomico)) +
#      geom_histogram(bins=30,col = "black", fill = "white") +
#      labs(x="Escore SocioeconÃ´mico", y="FrequÃªncia")+
#      theme_minimal()
    
#    ddd <- ggplot(Dados_Lab01, aes(x = mortalidade)) +
#      geom_histogram(bins=30,col = "black", fill = "white") +
#      labs(x="Taxa de Mortalidade", y="FrequÃªncia")+
#      theme_minimal()
    
 #   gg <- ggarrange(ddd, dd, labels = c("A", "B"), ncol = 2, nrow = 1)
#    annotate_figure(gg, top = text_grob("Histograma", color = "black", face = "bold", size = 20))
  })
  output$ex_c <- renderPlot({
    mi_archivo <- read.csv2("dataset.csv")
    summary(mi_archivo)
        boxplot(mi_archivo$V3, mi_archivo$V4, mi_archivo$V5, mi_archivo$V6, main="IDHM - Índice de Desenvolvimento Humano Municipal",
                names=c("Municipal","Renda","Longevidade", "Educação"),
                xlab="IDHM", ylab="Índice", col=("blue"))
    
    #    boxplot(mi_archivo$V10, mi_archivo$V7, mi_archivo$V9, main="População em domicílios vulnerÃ¡veis e com idoso",
    #            names=c("Total","Masculina","Feminina"),
    #            xlab="População", ylab="Ãndice", col=("blue"))
    
    #    boxplot(mi_archivo$V8, main="Taxa de envelhecimento",
    #            ylab="Taxa", col=("blue"))
    
  })
  output$ex_d <- renderPlot({
    mi_archivo <- read.csv2("dataset.csv")
    boxplot(mi_archivo$V10, mi_archivo$V7, mi_archivo$V9, main="População em domicílios vulneráveis e com idoso",
                names=c("Total","Masculina","Feminina"),
                xlab="População", ylab="Índice", col=("blue"))
    
    #    boxplot(mi_archivo$V8, main="Taxa de envelhecimento",
    #            ylab="Taxa", col=("blue"))
    
  })
  output$ex_e <- renderPlot({
    mi_archivo <- read.csv2("dataset.csv")

        boxplot(mi_archivo$V8, main="Taxa de envelhecimento",
                ylab="Taxa", col=("blue"))
    
  })
  output$ex_g <- renderPlot({
    mi_archivo <- read.csv2("dataset.csv")
    theme_set(theme_bw())  # pre-set the bw theme.
    g <- ggplot(mi_archivo, aes(V3, V4))
    g + geom_count(col="tomato3", show.legend=F) +
      labs(subtitle="IDHM Renda", 
           y="IDHM Renda", 
           x="IDHM", 
           title="IDHM vs IDHM Renda")
  })
  #Educação
      output$ex_h <- renderPlot({
      mi_archivo <- read.csv2("dataset.csv")
      theme_set(theme_bw())  # pre-set the bw theme.
      g <- ggplot(mi_archivo, aes(V3, V5))
      g + geom_count(col="tomato3", show.legend=F) +
        labs(subtitle="IDHM Longevidade", 
             y="IDHM Longevidade", 
             x="IDHM", 
             title="IDHM vs IDHM Longevidade")
      })
      #Educação
      output$ex_i <- renderPlot({
        mi_archivo <- read.csv2("dataset.csv")
        theme_set(theme_bw())  # pre-set the bw theme.
        g <- ggplot(mi_archivo, aes(V3, V6))
        g + geom_count(col="tomato3", show.legend=F) +
          labs(subtitle="IDHM Educação", 
               y="IDHM Educação", 
               x="IDHM", 
               title="IDHM vs IDHM Educação")
        
      #boxplot(mi_archivo$V8, main="Taxa de envelhecimento",
    #        ylab="Taxa", col=("blue"))
    
  })
  #output$myImage <- <img src="Rplot08.png"> #renderImage({
  #  {
  output$ex_f <- renderUI({
    h6("Mapas", br(), tags$img(src='Rplot08.png',type="png"))
    #boxplot(src = "Rplot08.jpg", main="Taxa de envelhecimento",
    #        ylab="Taxa", col=("blue"))
    #src = "Rplot08.jpg"
    #filetype = "image/jpg"
  })
    
    #mi_archivo <- read.csv2("dataset.csv")
    #outfile <-tempfile(fileext = '.png')
    #outfile <- <img src="Rplot08.png">
    #png(outfile, width = 400, height = 300)
    #hist
    #boxplot(mi_archivo$V8, main="Taxa de envelhecimento",
    #        ylab="Taxa", col=("blue"))
    
  #})
  
    
    
}

shinyApp(ui, server)

