---
tags: goal
Progress: 0
Target: 100
Timespan: 2 Months
Creation date:
Deadline: J
---
%%
Bar:: `$= dv.view('progress-bar', {file: '100 Disciplined Trades'})`
Projects:: `$= const projects = dv.page('100 Disciplined Trades').file.inlinks.where(p => { const mp = dv.page(p.path); return mp.tags?.contains('project') && mp.status === 'In Progress'}); if (projects.length > 0) { dv.header(4, projects.length > 1 ? "Projects" : "Project"); dv.list(projects) }`
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