# Titanic is avaliable in your workspace

# 1 - Check the structure of titanic

# Have a look at the str() of the titanic dataset, which has been loaded into your workspace. Looks like the data is pretty tidy!
  
str(titanic)

# 2 - Use ggplot() for the first instruction

# Plot the distribution of sexes within the classes of the ship.
# Use ggplot() with the data layer set to titanic.
# Map Pclass onto the x axis, Sex onto fill and draw a dodged bar plot using geom_bar(), i.e. set the geom position to "dodge".

ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")

#3 - Plot 2, add facet_grid() layer

# These bar plots won't help you estimate your chances of survival. Copy the previous bar plot, but this time add a facet_grid() layer: . ~ Survived.

ggplot(titanic, aes(x = Pclass, fill = Sex)) +
geom_bar(position = "dodge") +
facet_grid(.~Survived)

# 4 - Define an object for position jitterdodge, to use below

posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4

# Include Age, the final variable.

# Take plot 3 and add a mapping of Age onto the y aesthetic.
# Change geom_bar() to geom_point() and set its attributes size = 3, alpha = 0.5 and position = posn.jd.
# Make sure that Sex is mapped onto color instead of fill to correctly color the scatter plots.

ggplot(titanic, aes(x = Pclass, y=Age, col = Sex)) +
geom_point(size=3, alpha=0.5, position = posn.jd) +
facet_grid(.~Survived)