```

<% await tp.system.suggester(["Awaiting Funding", "Not Fulfilled", "Partially Fulfilled", "Fulfilled"], ["Awaiting Funding", "Not Fulfilled", "Partially Fulfilled", "Fulfilled"]) %>
--
// Prompt <% tp.system.prompt("Please enter a value") %> // Prompt with default value <% tp.system.prompt("What is your mood today?", "happy") %> // Multiline prompt <% tp.system.prompt("What is your mood today?", null, false, true) %> // Suggester <% tp.system.suggester(["Happy", "Sad", "Confused"], ["Happy", "Sad", "Confused"]) %> // Suggester with mapping function (same as above example) <% tp.system.suggester((item) => item, ["Happy", "Sad", "Confused"]) %> // Suggester for files [[<% (await tp.system.suggester((item) => item.basename, app.vault.getMarkdownFiles())).basename %>]] // Suggester for tags <% tp.system.suggester(item => item, Object.keys(app.metadataCache.getTags()).map(x => x.replace("#", ""))) %>

---
creation date: <% tp.file.creation_date() %>
modification date: <% tp.file.last_modified_date("dddd Do MMMM YYYY HH:mm:ss") %>
---

<< [[<% tp.date.now("YYYY-MM-DD", -1) %>]] | [[<% tp.date.now("YYYY-MM-DD", 1) %>]] >>

# <% tp.file.title %>

<% tp.web.daily_quote() %>
---
// Daily quote
<% tp.web.daily_quote() %>

// Random picture
<% tp.web.random_picture() %>
// Random picture with size
<% tp.web.random_picture("200x200") %>
// Random picture with size and query
<% tp.web.random_picture("200x200", "landscape,water") %>


```
