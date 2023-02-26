library(tidyverse)

#Aesthetic Mapping:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))


#You can convey information about your data by mapping the aesthetics in your plot
#to the variables in your dataset. 

ggplot(data =mpg) +
  geom_point(mapping = aes(x = displ, y=hwy, color= class))


ggplot(data = mpg)+
  geom_point(mapping = aes(x= displ, y = hwy, size = class))

# Top
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Bottom
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))
#The ggplot2 will only use six shapes at a time. By default, addtional groups will
# go unplotted when you use this aesthetics

# For each aesthetic you use, the aes() to associate the name of the aesthetic with a 
# variable to display. 

# You can also set the aesthetic properties of your geom manually. For example,
# we can make all of the points in our plot blue:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
# Note: It goes outside of aes().


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ<5))


#One common problem when creating ggplot2 graphics is to put the + in the 
# wrong place: it has to come at the end of the line, not the start. 

#If you need more help you can just ?function_name in the console. 

#Facets:

#Another way, particularly useful for categorical variable , is to split your plot
# into facets, subplots that each display one subset of the data.
# use facet_wrap()

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y=hwy))+
  facet_wrap(~ class, nrow=2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)
