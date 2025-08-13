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
# writing for loops

dog_names <- c("Teddy", "Khora", "Banjo", 'Waffle')

for (pupster in dog_names) {
  print(paste("My dog's name is", pupster))
}

# another for loop

mass <- seq(from = 0, to = 3, by = 0.5)

#practicing writing the body of the for loop
i <- mass [1]
i
new_value <- i + 2
new_value

# write into a for loop

for(i in mass){
  new_value <- i + 2
  print(new_value)
}

#practice same example with indexing
i <- 1
new_value <- mass[i] + 2
new_value

#write into for loop

for(i in 1:length(mass)){
  new_value <- mass[i] + 2
  print(new_value)
}

# another example

tree_height <- c(1,2,6,10)

for(i in seq_along(tree_height)) {
  sum_tree <- tree_height[i] + tree_height[i+1]
  print(sum_tree)
}

# for loops with conditional statements

animal <- c("cat", "dog", "dog", "zebra", "dog")
one_animal <- animal[1]
if(one_animal == "dog"){
  print("I love dogs")
  } else {
    print("these are other animals")
  }


for(i in seq_along(animal)){
  if(animal[i] ==  "dog"){
    print("I love dogs")
  } else
    print("these are other animals")
}

#another for loop example with conditionals

species <- c("dog", "elephant", "goat", "dog", 'dog', "elephant")

#respective ages in human years
human_age <- c(3, 8, 4, 6, 12, 18)

#convert to respective age in animal years
#1 human year = 7 dog years
# 1 human year = 0.88 elephant years
# 1 human year = 4.7 goat years

animal_age <- vector(mode = "numeric", length = length(species))

for(i in seq_along(species)){
  if(species[i] == "dog") {
    animal_age <- human_age[i] * 7
  } else if(species[i] == "elephant") {
    animal_age <- human_age[i] * 0.88
  } else if(species[i] == "goat") {
    animal_age <- human_age[i] * 4.7
  }
  animal_ages[i] <- animal_age
}

tigers <- c(29, 34, 82)
lions <- c(2,18,6)

big_cats <- vector(mode = "numeric", length = length(tigers))
for(i in seq_along(tigers)){
  total_cats <- tigers[i] + lions[i]
  big_cats[i] <- total_cats
}

# create vectors to store values
mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))
for(i in 1:ncol(mtcars)){
  mean_mtcars[i] <- mean(mtcars[[i]], na.rm = TRUE)
}

library(palmerpenguins)

for(i in seq_along(penguins)){
if(is.numeric(penguins[[i]])) {
  penguin_median <- median(penguins[[i]], na.rm = TRUE)
} else 
  print("data not numeric")
}


# apply() function iterates over columns or rows

#rewrite our for loop for finding mean values of the columns in mtcars
apply(X = mtcars, MARGIN = 2, FUN = mean)

library(tidyverse)

penguins %>%
  group_by(species) %>% 
  summarise(across(where(is.numeric), mean, na.rm = TRUE))
