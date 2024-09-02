---
tags: goal
Progress: 97
Target: 2000
Timespan: 4 Months
Creation date:
Deadline: September 2022
---
%%
Bar:: `$= dv.view('progress-bar', {file: '2000 Atomic Notes'})`
Projects:: `$= const projects = dv.page('2000 Atomic Notes').file.inlinks.where(p => { const mp = dv.page(p.path); return mp.tags?.contains('project') && mp.status === 'In Progress'}); if (projects.length > 0) { dv.header(4, projects.length > 1 ? "Projects" : "Project"); dv.list(projects) }`
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