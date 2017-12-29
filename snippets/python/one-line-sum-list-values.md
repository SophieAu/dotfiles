---
id: 3
tags: clean-code
lang: python
title: "Sum up list values in one line"
---

Instead of doing:

array = [1, 6, 7, 8]
total = 0
for i in amount:
	total += i

Do this:

```python
array = [1, 6, 7, 8]
total = sum(amounts)
```
