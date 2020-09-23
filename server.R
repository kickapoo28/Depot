#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(dplyr)
library(lubridate)
library(shiny)
library(ggplot2)
library(magrittr)
library(gridExtra)
library(plotly)
library(RColorBrewer)
library(zoo)
library(scales)
X10
# Define server logic required to draw a histogram
function(input, output) {
    
    # hist
 
  
    
    
    mydata <- reactive({
          kpp2 <- X10 %>%  
            filter(Code == input$dataset) %>% filter(Type == input$radio) %>% 
            filter(date >= input$dates[1]) %>% filter(date <= input$dates[2])
      
    
        
    })
            

    
    
    output$plot <- renderPlotly({p <-ggplot() + geom_line(data = mydata(),
                          aes(x = date, y = RCP, color = "입고", group = 1)) +
        geom_line(data = mydata(), aes(x = date, y = DLV, color = "출고",group = 1))+
        xlab("DATE") +
        ylab("VOLUME") +
                  ggtitle("입출고량")+
      theme_minimal()+
      scale_x_date(date_breaks  = "1 month")+
      scale_y_continuous(labels = scales::comma)+
      theme(plot.title=element_text(size= 20, color="blue"),
            axis.text.x = element_text(angle = 45, hjust = 1),
            legend.title = element_blank(),
            legend.position = "bottom")
        
  
                    
        print(p)
     })     
    
 
    output$STC <- renderPlotly({p <-ggplot() + geom_bar(data = mydata(),
              aes(x = date, y = W_STC) ,stat = 'identity', fill = mydata()$'Color') +
          xlab("DATE") +
        ylab("VOLUME") +
           ggtitle("재고량_실재고 기준") +
      theme_minimal()+
      scale_x_date(date_breaks  = "1 month")+
      theme(plot.title=element_text(size=20, color="blue"),
            axis.text.x = element_text(angle = 45, hjust = 1))+
      scale_y_continuous(labels = scales::comma)
    
     
    
    print(p)
    })
    # table data
    output$table <- DT::renderDataTable(DT::datatable({
        data <- X10
        if (input$dataset != "All") {
            data <- data[data$Code == input$dataset,]
        }
        if (input$radio != "All") {
            data <- data[data$Type == input$radio,]
        }
     
        data[,c(1,2,3,4,5,6,7,9)]
    }))
    
}

