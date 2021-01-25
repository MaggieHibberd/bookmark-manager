# Bookmark Manager

This code is intended as a supplementary guide for [bookmark manager](https://github.com/makersacademy/course/tree/master/bookmark_manager). The commits on master branch roughly correspond with the walkthroughs provided in the challenge.

## User Stories

```
As a user so I can see what sites I have visited I would like to be able to see a list of my bookmarks
```

## Domain Model

![Bookmark Manager domain model](./public/mvc_diagram.png)

 ## Database Creation

 Connect to psql
 Create the database using the psql command CREATE DATABASE bookmark_manager;
 Connect to the database using the pqsl command \c bookmark_manager;
 Run the query we have saved in the file 01_create_bookmarks_table.sql
