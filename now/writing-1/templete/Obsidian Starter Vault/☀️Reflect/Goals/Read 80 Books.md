---
tags: goal
Progress: 9
Target: 80
Timespan: 1 Year
Deadline: 29th December
---
%%
Bar:: `$= dv.view('progress-bar', {file: 'Read 80 Books'})`
Projects:: `$= const projects = dv.page('Read 80 Books').file.inlinks.where(p => { const mp = dv.page(p.path); return mp.tags?.contains('project') && mp.status === 'In Progress'}); if (projects.length > 0) { dv.header(4, projects.length > 1 ? "Projects" : "Project"); dv.list(projects) }`
%%

## Why is this goal important to you?
-

---
## What does success look like? Why is this goal important?
- 

---
## What are the Key steps you will take to accomplish this goal?
- 
---
### Date created:
### Deadline: 
---
## ACTION PLAN