---
cssClasses:  cards
---

## Reading 
```dataview
Table ("![|100](" + cover_url + ")") as Cover, author as Author, total_page as "Pages", category as "Category"
From #book
where contains(status,"Reading")
```
---
---
## Unfinished
```dataview
Table ("![|100](" + cover_url + ")") as Cover, author as Author, total_page as "Pages", category as "Category"
From #book
where contains(status,"Unfinished")
```
---
---
## Completed
```dataview
Table ("![|100](" + cover_url + ")") as Cover, author as Author, total_page as "Pages", category as "Category"
From #book
where contains(status,"Completed")
```
---
---

## To Read
```dataview
Table ("![|100](" + cover_url + ")") as Cover, author as Author, total_page as "Pages", category as "Category"
From #book
where contains(status,"To Read")
```
---
---