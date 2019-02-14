FROM rocker/shiny-verse:3.5.2

# RUN install2.r --error \
# --deps TRUE \
# flexdashboard \
# DT \
# dygraphs \ 
# knitr \
# leaflet && \

RUN R -e "install.packages(c('flexdashboard', \
'DT',\
'knitr',\
'dygraphs',\
'leaflet'), repos='http://cran.rstudio.com/')" && \
R -e "devtools::install_github('hadley/emo')"

