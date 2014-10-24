library(shiny)
##code to calculate the your animal based on chiense calander#

yearanimal <- function(year) {
               x=c("Rat","Ox", "Tiger","Hare", "Dragon", "Snake", "Horse", "Sheep", "Monkey", "Rooster", "Dog", "Pig")
              p=(year-4)%%12
              return(x[p+1]) }
## code to calculate your lucy number based on no of alphabets in your name and born before 2000 or not##

luckyno<- function(year) {if (year>2000) return (2) else return (3)}
            

## server function starts here

shinyServer(
  function(input, output) {
    ## input parameter for display 
    output$disname <- renderPrint({input$yourname})
    output$disyear <- renderPrint({input$year})
    
    ## output parameters for display
    
    output$disanimal <- renderPrint({yearanimal(input$year)})
    output$dislucky <- renderPrint({luckyno(input$year)})
    
    })
   
