# kvSIMD.swift

*kvSIMD.swift* is a crossplatform vectorization-friendly implementation of the SIMD framework interface on Swift.

Preferred way to import *kvSIMD.swift* is `import kvSIMD`.
*kvSIMD* module is the same as `import simd` or `import kvSimdImpl` whether the SIMD framework is available.
Use `import kvSimdImpl` to import custom implementation unconditionally.

There are no explicit restrictions for any platform.
So it's assumed that *kvSIMD.swift* is compiled on any platform Swift is available on.
It's checked on macOS and Linux (Ubuntu 22.04).
 
*kvSIMD.swift* is covered by unit-tests.

Simple benchmark console application is provided.
It's in `/Benchmark` directory.
Benchmark runs on platforms where the SIMD framework is avaialble.
Recent report is available at `/Benchmark/report.md` path.


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
import kvSIMD
```


## Authors

- Svyatoslav Popov ([@sdpopov-keyvariable](https://github.com/sdpopov-keyvariable), [info@keyvar.com](mailto:info@keyvar.com)).
