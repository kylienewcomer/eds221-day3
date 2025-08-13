# practice basic if statement

burrito <- 1.5 #assigning an object value

# write a short if statement

if(burrito > 2){
  print("I LOVE BURRITOS!")
}

#Example with strings

my_ships <- c("Millenium Falcon", "X-wing", "Tie-Fighter", "Death Star")

stringr::str_detect(my_ships, pattern = "r")

phrase <- "I LOVE BURRITOS!"

if(stringr::str_detect(phrase, "LOVE")) {
  print("BIG burrito fan")
}

# basic if else statement

pika <- 89.1 #storing a value to an object

if(pika >60) { #define size of mega pikas
  print("mega pika")
} else
  print("normal pika")

# another example with strings

food <- "I LOVE TACOS!"

if(stringr::str_detect(food, pattern = "burritos")) {
  print("yay burritos!")
} else
  print("what about burritos?")

# more options with if-else if-else statements
marmot <- 2.8

if(marmot < 0.5){
  print("small marmot")
} else if(marmot >= 0.5 & marmot < 3){
  print("medium marmot")
} else
  print("large marmot")

# switch function to write complicated if-else statements

species = "mouse"

#all code is the same as several if-else statements
switch(species,
       "cat" = print("meow"),
       "dog" = print("WOOF!"),
       "mouse" = print("squeeaakkkk"))
  