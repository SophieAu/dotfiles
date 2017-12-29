---
id: 2
tags: clean-code
lang: python
title: "Filtering lists in one line"
---

Instead of doing this:

a = [2, 24, 88, 96, 14, 12]
b = []
for i in a:
	if i >= 15:
		b.append(i)

Do this:

```python
a = [2, 24, 88, 96, 14, 12]
b = [i for i in a if i >= 15] 
```
