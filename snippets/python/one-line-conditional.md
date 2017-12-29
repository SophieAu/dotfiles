---
id: 4
tags: clean-code
lang: python
title: "One Line conditionals"
---

Instead of doing:

if x < 56:
	some = "Hey"
else:
	some = "Yay"

Do this:

```python
some = "A" if x == y else "B"
```
