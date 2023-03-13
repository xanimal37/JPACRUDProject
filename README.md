# JPACRUDProject

# Description
This project is called "Goalie Tender". It stores data about shots on a goalie in order to extract information about how the goalie is doing and what things they might need to work on. Are they having trouble with a particular side or shot angle? Maybe they aren't making the right save selection or, even if making the right decision, are getting scored on more often when making a particular one. This could be considered a training aid. Right now the only table in the database is shots, but each shot can be linked to a game, which could be linked to a player and the options expanded from there.

# Technologies
- Java/Eclipse
- git/github
- SpringBoot/Hibernate
- JPA
- JPQL

# Lessons Learned
- do not change table names and then stop working. While it would be helpful if this project were expanded to not have every table use column 'id', changing this requires updating the entity. I changed a table name and then came back later and couldn't figure out what was 'broken'.
- calculations are better in the DAO than JSP but still, should I have some kind of 'utility' class that could help with these to keep the DAO focused on database interaction?
- error messages are very helpful once you know how to format and find them. !!!
- checkboxes pass value "true" and will be converted to boolean (yay)
- command objects are great (didn't use them last time)
- PRECHECK checkbox and radio buttons using JSP conditionals and parameters
- to be doubly safe, set default values for checkbox parameters, or they won't get passed if unchecked

# To Do
- Would be more useful with more tables.
- Better visual design.
- could be all on one page, like an app but wanted to work on loading jsp
- should haved used BOOLEAN? for not null things? But command object seems to work and data is checked on front end so it is working. Maybe should still switch?
