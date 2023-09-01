# kvSIMD.swift

*kvSIMD.swift* is a cross-platform vectorization-friendly implementation of the SIMD framework interface on Swift.

Structure of package is designed to import *kvSIMD.swift* via `import simd` expression when the SIMD framework is unavailable.
So `import simd` expression imports the SIMD framework if available and *kvSIMD.swift* otherwise.

There are no explicit restrictions for any platform.
So it's assumed that *kvSIMD.swift* is compiled on any platform Swift is available on.
It's checked on macOS and Linux (Ubuntu 22.04).

*kvSIMD.swift* is covered by unit-tests.

Simple benchmark console application is provided.
It's in [`/Benchmark`](./Benchmark) directory.
Benchmark runs on platforms where the SIMD framework is available.
Recent report is available at [`/Benchmark/report.md`](./Benchmark/report.md) path.


## Getting Started

#### Package Dependencies:
```swift
.package(url: "https://github.com/keyvariable/kvSIMD.swift.git", from: "1.0.0")
```
#### Target Dependencies:
```swift
.product(name: "kvSIMD", package: "kvSIMD.swift")
```
#### Import:
```swift
import simd
```


## Authors

- Svyatoslav Popov ([@sdpopov-keyvariable](https://github.com/sdpopov-keyvariable), [info@keyvar.com](mailto:info@keyvar.com)).
