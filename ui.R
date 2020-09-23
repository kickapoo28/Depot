#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  
    
    # Application title
    titlePanel("KLP물류센터 물동량 및 재고 현황"),
    
    # sidebarpanel
    sidebarPanel(

    # Sidebar panel for inputs ----
    
    
    selectInput("dataset", label = h3("물류센터"),
                 choices = c("105857-(新)당진물류센터"="105857",
                            "104850-(新)대구물류센터"="104850",
                            "105805-(폐소)당진물류센터"="105805",
                            "104801-(폐소)대구물류센터"="104801",
                            "103860-(폐소)홈플러스 밀양물류센터(KPP전용)"="103860",
                            "101894-가락물류센터"="101894",
                            "104803-경북물류센터"="104803",
                            "101964-곤지암물류센터"="101964",
                            "107804-광양물류센터"="107804",
                            "107811-광양물류센터"="107811",
                            "107810-광주물류센터"="107810",
                            "101854-김포물류센터"="101854",
                            "103853-김해물류센터"="103853",
                            "101968-남양주물류센터"="101968",
                            "103861-롯데마트 김해물류센터(KPP전용)"="103861",
                            "101979-롯데마트 오산물류센터(KPP전용)"="101979",
                            "107816-목포물류센터"="107816",
                            "103818-사천물류센터"="103818",
                            "106805-서청주물류센터"="106805",
                            "101856-시화물류센터"="101856",
                            "105809-아산물류센터"="105809",
                            "101945-안성ADC물류센터"="101945",
                            "101946-안성FDC물류센터"="101946",
                            "101920-안성농협물류센터"="101920",
                            "103815-양산물류센터"="103815",
                            "104804-영천물류센터"="104804",
                            "101857-용인물류센터"="101857",
                            "103803-울산물류센터"="103803",
                            "103855-울산물류센터"="103855",
                            "101851-원주물류센터"="101851",
                            "101970-이마트 여주물류센터(KPP전용)"="101970",
                            "101978-이마트 용인물류센터(KPP전용)"="101978",
                            "101858-인천물류센터"="101858",
                            "108805-전주물류센터"="108805",
                            "107806-제주물류센터"="107806",
                            "106804-증평물류센터"="106804",
                            "103821-창원물류센터"="103821",
                            "106806-청원물류센터"="106806",
                            "101905-파주물류센터"="101905",
                            "101873-평택물류센터"="101873",
                            "101832-포천물류센터(KPP)"="101832",
                            "104832-포항물류센터"="104832",
                            "106805-서청주물류센터"="106805",
                            
      width = 2  )
                         ),
    
    
    # Copy the line below to make a set of type
    selectInput("radio", label = h3("유형"),
                 choices = c("N11", "N12","P11","P13","P14","LT12","W11","W12","W13","PA11","PA12","Total"), 
                 ),
    
    # Copy the line below to make a set of date
    
    
    dateRangeInput("dates",label = h3("기간"),
                   format = "yyyy-mm",
                   start  = "2018-01-01",
                   end    = as.character(Sys.Date()),
                    ),
    
    width = 2),
    
    
    
       # Create a new row for the table.
    mainPanel(
        plotlyOutput("plot"), 
        plotlyOutput("STC"), 
     DT::dataTableOutput("table"),
    width = 8 
    ),
    
    
   
    

)

)
 
