library(shiny)
# side bar input buttons

shinyUI(pageWithSidebar(
  headerPanel("**Get to know about yourself**"),
  sidebarPanel(
    h3("Enter your: "),
    textInput("name", "Name:", "firstname"),
    numericInput('year', 'Birth Year', 2014, min = 1900, max = 2103, step = 1),
    submitButton('Submit')
    ),
  
## main page buttons   
  mainPanel(
    h3('Intresting things about yourself'),
    h4('Your lucky animal (based on Chinese calander)'),
    verbatimTextOutput("disanimal"),
    h4('Your lucky number (birth year<2000 then 2 else 3) '),
    verbatimTextOutput("dislucky"),
	## display image for the chinese calander 
   img(src="chinese-zodiac.jpg", height = 400, width = 400)
  )
))
