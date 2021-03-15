
---
  layout: true
class: left, top, highlight

## Tarea 1.1 

---
  
  .left-column[
    
    ### Data
    `ggplot()`
    
    ]

.right-column[
  
  Data en formato __"limpio"__ (_"tidy"_):
    
    1. Cada __variable__ es una __columna__.
  2. Cada __observación__ es una __fila__.
  
  __¿Reconoces esta base de datos?__
  --> __¿Está en formato "limpio"?__
  
  **Fundamentar**
    
    ```{r, echo=FALSE, fig.cap="", out.width = '100%'}
  knitr::include_graphics("data/eda2020-all-messy.PNG")
  ```
  
  ]

---
  layout: true
class: left, top, highlight

## Tarea 1.2 

---
  
  .left-column[
    
    ### Data
    `ggplot()`
    
    ]

.right-column[
  
  Data en formato __"limpio"__ (_"tidy"_):
    
    1. Cada __variable__ es una __columna__.
  2. Cada __observación__ es una __fila__.
  
  __¿Reconoces esta base de datos?__
  --> __¿Está en formato "limpio"?__
  
  **Fundamentar**
    
    ```{r, echo=FALSE, fig.cap="", out.width = '90%'}
  knitr::include_graphics("data/gapminder-all-tidy.PNG")
  ```
  
  ]


---
  layout: true
class: left, top, highlight

## Tarea 1.3 

---
  .left-code[
    ### Grafique un __Histograma__ de "Edad" con el "Número de Casos" por rangos de 10 años, a nivel Nacional
    
    1. _Retirar_ filas con edades negativas.
    1. **Mapear x: "Edad"**
      1. **Usar la geometría `geom_histogram()`**
      1. **Modificar el argumento `binwidth=10` dentro de `geom_histogram()`**
      
      ```{r, fig.show="hide",warning=FALSE,message=FALSE,eval=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      ggplot(aes(x = ____)) + #<<
      geom_________(________ = __) #<<
    ```
    
    ```{r example-14, fig.show="hide",warning=FALSE,message=FALSE,echo=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      ggplot(aes(x = EDAD)) + #<<
      geom_histogram(binwidth = 10) #<<
    ```
    
    ]
.right-plot[
  ![](`r knitr::fig_chunk("example-14", "svg")`)
  ]


---
  layout: true
class: left, top, highlight

## Tarea 1.4 

---
  .left-code[
    ### Grafique un __Diagrama de Barras__ con el "Número de Casos" por cada Fecha de Reporte ("Fecha") a nivel Nacional
    
    1. _Retirar_ filas con edades negativas.
    1. **Mapear x: "Fecha"**
      1. **Usar la geometría `geom_bar()`**
      1. **Cambia la geometría `geom_bar()` por la geometría `geom_histogram(binwidth = 1)`**
      1. **Comentar: ¿Cuál es la diferencia entre las dos geometrías? ¿Cuál prefieres?**
      
      ```{r, fig.show="hide",warning=FALSE,message=FALSE, eval=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      ggplot(aes(x = ___________)) + #<<
      geom______() #<<
    # geom_histogram(binwidth = 1) #<<
    ```
    
    ```{r example-13, fig.show="hide",warning=FALSE,message=FALSE,echo=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      ggplot(aes(x = FECHA_RESULTADO)) + #<<
      geom_bar() #<<
    # geom_histogram(binwidth = 1) #<<
    ```
    
    ]
.right-plot[
  ![](`r knitr::fig_chunk("example-13", "svg")`)
  ]




---
  layout: true
class: left, top, highlight

## Tarea 1.5 

---
  .left-code[
    ### Grafique un __Diagrama Violín__ para explorar la distribución de "Edad" por "Método" de diagnóstico
    
    1. _Retirar_ filas con edades negativas.
    1. **Mapear x: "Método" y: "Edad"**
      1. **Usar la geometría `geom_violin()`**
      1. **Modificar el argumento `draw_quantiles = c(0.5,0.25,0.75)` dentro de `geom_violin()`**
      
      ```{r, fig.show="hide",warning=FALSE,message=FALSE,eval=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      ggplot(aes(x = ________, y = ________)) + #<<
      geom________(________ = ________) #<<
    ```
    
    
    ```{r example-15, fig.show="hide",warning=FALSE,message=FALSE,echo=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      ggplot(aes(x = METODODX, y = EDAD)) + #<<
      geom_violin(draw_quantiles = c(0.5,0.25,0.75)) #<<
    ```
    
    ]
.right-plot[
  ![](`r knitr::fig_chunk("example-15", "svg")`)
  ]



---
  layout: true
class: left, top, highlight

## Tarea 1.6 

---
  .left-code[
    ### Grafique un __Diagrama de Calor__ con la cantidad de casos por "Edad" en el tiempo según "Fecha" de resultado. Ambos como variables continuas
    
    1. _Retirar_ filas con edades negativas.
    1. **Mapear x: "Fecha" y: "Edad"**
      1. **Usar la geometría `geom_bin2d()`**
      
      ```{r, fig.show="hide",warning=FALSE,message=FALSE,eval=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      ggplot(aes(x = __________,y = __________)) + #<<
      geom__________() #<<
    ```
    
    
    ```{r example-16, fig.show="hide",warning=FALSE,message=FALSE,echo=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      ggplot(aes(x = FECHA_RESULTADO,y = EDAD)) + #<<
      geom_bin2d() #<<
    ```
    
    ]
.right-plot[
  ![](`r knitr::fig_chunk("example-16", "svg")`)
  ]

---
  layout: true
class: left, top, highlight

## Tarea 1.7 

---
  .left-code[
    ### Grafique un __Diagrama de Calor__ con la cantidad de casos por "Edad" en el tiempo según "Fecha" de resultado. La variable "Edad" recategorizada cada 10 años.
    
    1. _Retirar_ filas con edades negativas.
    1. _Recategoriza_ "Edad" con `Hmisc::cut2()`.
    1. _Cuenta_ casos por "Grupo de Edad" y "Fecha".
    1. **Mapear x: "Fecha" y: "Grupo" fill: "Casos"**
      1. **Usar la geometría `geom_tile()`**
      1. **Comentar: ¿En qué se diferencia con el gráfico de la tarea 1.6? ¿Cuál prefieres?**
      
      ```{r, fig.show="hide",warning=FALSE,message=FALSE,eval=FALSE}
    # library(tidyverse); install.packages("Hmisc")
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      mutate(EDAD_CAT=Hmisc::cut2(x = EDAD,cuts = seq(10,80,10))) %>% 
      count(FECHA_RESULTADO,EDAD_CAT) %>%
      ggplot(aes(x = ___________, y = ___________, #<<
                 fill = ________)) + #<<
      geom___________() #<<
    ```
    
    
    ```{r example-17, fig.show="hide",warning=FALSE,message=FALSE,echo=FALSE}
    # library(tidyverse)
    # install.packages("Hmisc")
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      mutate(EDAD_CAT=Hmisc::cut2(x = EDAD,cuts = seq(10,80,10))) %>% 
      count(FECHA_RESULTADO,EDAD_CAT) %>%
      ggplot(aes(x = FECHA_RESULTADO, y = EDAD_CAT, #<<
                 fill = n)) + #<<
      geom_tile() #<<
    ```
    
    ]
.right-plot[
  ![](`r knitr::fig_chunk("example-17", "svg")`)
  ]




```{r,echo=FALSE,eval=FALSE}
# 
# <!-- --- -->
# <!-- .left-code[ -->
# <!-- ### **Example 2**: Plot the _number of votes per season_ for each _TV series_ using boxplots -->
# 
# <!-- ```{r eval=FALSE} -->
# <!-- ggplot(df, -->
# <!--        aes(tvseries_title, num_votes,  -->
# <!--            fill=season_number)) + -->
# <!--   geom_boxplot() -->
# <!-- ``` -->
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("example-2", "svg")`) -->
# <!-- ] -->
# 
# <!-- --- -->
# <!-- .left-code[ -->
# <!-- ### **Example 2**: Plot the _number of votes per season_ for each _TV series_ using boxplots -->
# 
# <!-- ```{r example-2, fig.show="hide"} -->
# <!-- ggplot(df, -->
# <!--        aes(tvseries_title, num_votes,  -->
# <!--            fill=season_number)) + -->
# <!--   geom_boxplot() -->
# <!-- ``` -->
# 
# <!-- This looks wrong... What is happening? -->
# 
# <!-- ```{r, out.width="50%", fig.align="center", echo=FALSE} -->
# <!-- knitr::include_graphics("https://media.giphy.com/media/d5Fc6QOUaBawLOxHbR/giphy.gif") -->
# <!-- ``` -->
# 
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("example-2", "svg")`) -->
# <!-- ] -->
# 
# <!-- --- -->
# 
# <!-- .left-code[ -->
# <!-- ### **Example 2**: Plot the _number of votes per season_ for each _TV series_ using boxplots -->
# 
# <!-- ```{r example-2-corrected, fig.show="hide"} -->
# <!-- ggplot(df, -->
# <!--        aes(tvseries_title, num_votes,  -->
# <!--            fill=factor(season_number))) + -->
# <!--   geom_boxplot() -->
# <!-- ``` -->
# 
# <!-- Some geometries need **discrete values**. As `season_number` is a `numerical` variable, ggplot2 considers it a `continuous` variable. We need to factorize it so ggplot knows how to group the different values. -->
# 
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("example-2-corrected", "svg")`) -->
# <!-- ] -->
# 
# <!-- --- -->
# <!-- class: highlight -->
# 
# <!-- ### **Exercise 1**:  Plot the _average ratings_ for each _TV series_ using boxplots -->
# 
# <!-- ### **Exercise 2**: Plot the _average ratings per season_ for each _TV series_ using boxplots -->
# 
# <!-- ### **Exercise 3**: Plot the distribution of _average ratings_ for each _TV series_ using violin plots and boxplots -->
# 
# <!-- Using the plots you generated, try to answer the following questions: -->
# 
# <!-- - #### Which is the highest rated TV show? -->
# <!-- - #### Sequels are never any good? -->
# 
# <!-- --- -->
# <!-- class: highlight -->
# 
# <!-- .left-code[ -->
# <!-- ### **Exercise 1**:  Plot the _average ratings_ for each _TV series_ using boxplots -->
# 
# <!-- ```{r exercise-1, fig.show="hide"} -->
# <!-- ggplot(df, -->
# <!--        aes(tvseries_title, average_rating)) + -->
# <!--   geom_boxplot() -->
# <!-- ``` -->
# 
# <!-- **Which is the highest rated TV show?** -->
# 
# <!-- ```{r, out.width="50%", fig.align="center", echo=FALSE} -->
# <!-- knitr::include_graphics("https://media.giphy.com/media/ZB95y3XSFbljaNu7mT/giphy.gif") -->
# <!-- ``` -->
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("exercise-1", "svg")`) -->
# <!-- ] -->
# 
# <!-- --- -->
# <!-- class: highlight -->
# 
# <!-- .left-code[ -->
# <!-- ### **Exercise 2**: Plot the _average ratings per season_ for each _TV series_ using boxplots -->
# 
# <!-- ```{r exercise-2, fig.show="hide"} -->
# <!-- ggplot(df, -->
# <!--        aes(tvseries_title, average_rating,  -->
# <!--             fill=factor(season_number))) + -->
# <!--   geom_boxplot() -->
# <!-- ``` -->
# 
# <!-- **Sequels are never any good?** -->
# 
# <!-- ```{r, out.width="40%", fig.align="center", echo=FALSE} -->
# <!-- knitr::include_graphics("https://media.giphy.com/media/JOIE1rZkUF4qI/giphy.gif") -->
# <!-- ``` -->
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("exercise-2", "svg")`) -->
# <!-- ] -->
# 
# <!-- --- -->
# <!-- class: highlight -->
# 
# <!-- .left-code[ -->
# <!-- ### **Exercise 3**: Plot the distribution of _average ratings_ for each _TV series_ using violin plots and boxplots -->
# 
# <!-- ```{r exercise-3, fig.show="hide"} -->
# <!-- ggplot(df, -->
# <!--        aes(tvseries_title, average_rating)) + -->
# <!--   geom_violin() + -->
# <!--   geom_boxplot(width=.2) -->
# <!-- ``` -->
# 
# <!-- ```{r, out.width="40%", fig.align="center", echo=FALSE} -->
# <!-- knitr::include_graphics("https://media.giphy.com/media/Zvw675pKMgo2qTmcWR/giphy.gif") -->
# <!-- ``` -->
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("exercise-3", "svg")`) -->
# <!-- ] -->
# 
# <!-- This should really be the first and **last** time you produce this kind of plot!  -->
# 
# <!-- --- -->
# 
# <!-- .left-code[ -->
# <!-- ### **Example 3**: Plot the _number of episodes_ for each _TV series_ using barplots -->
# 
# <!-- ```{r example-3, fig.show="hide"} -->
# <!-- ggplot(df, -->
# <!--        aes(tvseries_title, -->
# <!--            fill=factor(season_number))) + -->
# <!--   geom_bar(stat="count", color="black") -->
# <!-- ``` -->
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("example-3", "svg")`) -->
# <!-- ] -->
# 
# <!-- --- -->
# 
# <!-- .left-code[ -->
# <!-- ### **Example 3**: Plot the _number of episodes_ for each _TV series_ using barplots -->
# 
# <!-- ```{r example-3a, fig.show="hide"} -->
# <!-- ggplot(df, -->
# <!--        aes(tvseries_title, -->
# <!--            fill=factor(season_number))) + -->
# <!--   geom_bar(stat="count", color="black",  -->
# <!--            position="fill") -->
# <!-- ``` -->
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("example-3a", "svg")`) -->
# <!-- ] -->
# 
# <!-- --- -->
# 
# <!-- .left-code[ -->
# <!-- ### **Example 3**: Plot the _number of episodes_ for each _TV series_ using barplots -->
# 
# <!-- ```{r example-3b, fig.show="hide"} -->
# <!-- ggplot(df, -->
# <!--        aes(tvseries_title, -->
# <!--            fill=factor(season_number))) + -->
# <!--   geom_bar(stat="count", color="black",  -->
# <!--            position="dodge") -->
# <!-- ``` -->
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("example-3b", "svg")`) -->
# <!-- ] -->
# 
# <!-- --- -->
# <!-- class: highlight -->
# 
# <!-- ### **Exercise 4**: Plot the density of _average ratings_ for each _TV series_. -->
# 
# <!-- **Tip**: `geom_density()` is another example of a function that does not need a y aesthetic -- it automatically computes and draws the kernel density estimate.  -->
# 
# <!-- --- -->
# <!-- class: highlight -->
# 
# <!-- .left-code[ -->
# <!-- ### **Exercise 4**: Plot the density of _average ratings_ for each _TV series_. -->
# 
# <!-- ```{r exercise-4, fig.show="hide"} -->
# <!-- ggplot(df, -->
# <!--        aes(average_rating)) + -->
# <!--   geom_density(aes(fill=tvseries_title), -->
# <!--                    alpha=0.5) -->
# <!-- ``` -->
# <!-- ] -->
# <!-- .right-plot[ -->
# <!-- ![](`r knitr::fig_chunk("exercise-4", "svg")`) -->
# <!-- ] -->
```


---
  layout: true
class: left, top, highlight

## Tarea 2.1 

---
  .left-code[
    ### Grafique un __Diagrama de Puntos y Tendencia LOESS__ con la cantidad de casos en el tiempo según "Fecha" de resultado.
    
    1. _Retirar_ filas con edades negativas.
    1. _Cuenta_ casos por "Fecha".
    1. **Mapear x: "Fecha" y: "Casos"**
      1. **Usar la geometría `geom_point()`**
      1. **Usar la geometría `geom_smooth()`**
      
      ```{r, fig.show="hide",warning=FALSE,message=FALSE,eval=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      count(FECHA_RESULTADO) %>%
      ggplot(aes(x = _________, #<< 
                 y = _________)) + #<<
      # geom_line() + #<<
      geom_________() + #<<
      geom_________() #<<
    
    ```
    
    ```{r example-21, fig.show="hide",warning=FALSE,message=FALSE,echo=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      count(FECHA_RESULTADO) %>%
      ggplot(aes(x = FECHA_RESULTADO, #<< 
                 y = n)) + #<<
      # geom_line() +
      geom_point() +
      geom_smooth()
    
    ```
    
    ]
.right-plot[
  ![](`r knitr::fig_chunk("example-21", "svg")`)
  ]


---
  layout: true
class: left, top, highlight

## Tarea 2.2 

---
  .left-code[
    ### Grafique un __Diagrama de Puntos y Tendencia con Media Móvil de 7 días__
    
    
    1. _Retirar_ filas con edades negativas.
    1. _Cuenta_ casos por "Fecha".
    1. _Crear_ media movil usando `zoo::rollmean()`
    1. **Mapear x: "Fecha"**
      1. **Usar la geometría `geom_line()` con un mapeo específico y: "Media Movil"**
      1. **Usar la geometría `geom_point()` con un mapeo específico y: "Casos"**
      1. **Comentar: ¿Diferencias entre tarea 2.1 y 2.2?**
      
      ```{r, fig.show="hide",warning=FALSE,message=FALSE,eval=FALSE}
    # library(tidyverse); install.packages("zoo")
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      count(FECHA_RESULTADO) %>%
      mutate(mediamovil=zoo::rollmean(x = n, k = 7, fill=NA, align = "right")) %>% 
      ggplot(aes(x = ___________)) + #<<
      geom_line(aes(y = ___________), #<<
                color="red",size=1.5) + #<<
      geom____________(aes(y = ___________)) #<<
    
    
    ```
    
    ```{r example-22, fig.show="hide",warning=FALSE,message=FALSE,echo=FALSE}
    # library(tidyverse)
    # install.packages("zoo")
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      count(FECHA_RESULTADO) %>%
      mutate(mediamovil=zoo::rollmean(x = n, k = 7, fill=NA, align = "right")) %>% 
      ggplot(aes(x = FECHA_RESULTADO)) + #<<
      geom_line(aes(y = mediamovil), #<<
                color="red",size=1.5) + #<<
      geom_point(aes(y = n)) #<<
    
    
    ```
    
    ]
.right-plot[
  ![](`r knitr::fig_chunk("example-22", "svg")`)
  ]



---
  layout: true
class: left, top, highlight

## Tarea 2.3 

---
  .left-code[
    ### Grafique un __Diagrama de Líneas__ con casos incidentes por "Fecha" por Departamentos. Escala eje Y por log10. Regresión lineal c/u.
    
    1. _Retirar_ filas con edades negativas.
    1. _Contar_ casos por fecha y departamento.
    1. **Mapear x: "Fecha" y: "Casos" color: "Depart."**
      1. **Usar la geometría `geom_point()`**
      1. **Usar la escala `scale_y_log10()`**
      1. **Usar la geometría `geom_smooth()`**
      1. **Comentar: ¿Qué problemas tiene este gráfico?**
      
      ```{r, fig.show="hide",warning=FALSE,message=FALSE,eval=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      count(FECHA_RESULTADO,DEPARTAMENTO) %>% 
      ggplot(aes(x = _________, y = _________, #<<
                 color =_________)) + #<<
      geom_________() + #<<
      scale_________() + #<<
      geom_________(method = "lm",se = FALSE) #<<
    ```
    
    ```{r example-23, fig.show="hide",warning=FALSE,message=FALSE,echo=FALSE}
    # library(tidyverse)
    data_covid %>% 
      filter(EDAD >= 0) %>% 
      count(FECHA_RESULTADO,DEPARTAMENTO) %>% 
      ggplot(aes(x = FECHA_RESULTADO, y = n, #<<
                 color =DEPARTAMENTO)) + #<<
      geom_point() + #<<
      scale_y_log10() + #<<
      geom_smooth(method = "lm",se = FALSE) #<<
    ```
    
    ]
.right-plot[
  ![](`r knitr::fig_chunk("example-23", "svg")`)
  ]
