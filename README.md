<h1 align = "center">🧪 Julia Snippets</h1>
<div align="center">

<h3>🔖 Julia Code Snippets repository</h3>

**👤 Kostas Alexandridis, PhD, GISP** | *🏷️ v. 2025.4, November 2025*

![Static Badge](https://img.shields.io/badge/JuliaSnippets-GitHub?style=plastic&logo=github&logoSize=auto&labe=GitHub&labelColor=navy) 
![GitHub License](https://img.shields.io/github/license/ktalexan/juliasnippets?style=plastic&labelcolor=black) 
![Shield Badge: Language-Julia](https://img.shields.io/static/v1?style=plastic&label=language&message=Julia&logo=julia&color=purple&labelColor=black) 

</div>

----

This repository contains a collection of Julia code snippets designed to assist developers in writing efficient and effective Julia code. The snippets cover a wide range of topics, from basic syntax to advanced programming techniques.

The Strucuture of the Repository is as follows:

```text
JuliaSnippets/
├── Project.toml
├── src/
│   ├── JuliaSnippets.jl
│   └── snippets/
│       └── haversine.jl
└── test/                      # New test folder
    ├── runtests.jl            # The test orchestrator
    └── snippets/              # Mirroring your src structure
        └── test_haversine.jl  # Specific tests for the snippet
```

## ✨ List of Snippets

- **📄 haversine.jl**: It provides a Julia code snippet to calculate the Haversine distance between two geographic coordinates (latitude and longitude) on the Earth's surface.
