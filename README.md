# kvSIMD.swift

*kvSIMD.swift* is a cross-platform vectorization-friendly implementation of the SIMD framework interface on Swift.

Structure of package is designed to import *kvSIMD.swift* via `import simd` expression when the SIMD framework is unavailable.
So `import simd` expression imports the SIMD framework if available and *kvSIMD.swift* otherwise.

*kvSIMD.swift* is covered by unit-tests.

Simple benchmark console application is provided.
It's in [`/Benchmark`](./Benchmark) directory.
Benchmark runs on platforms where the SIMD framework is available.
Recent report is available at [`/Benchmark/report.md`](./Benchmark/report.md) path.


## Supported Platforms

There are no explicit restrictions for any platform.
So it's assumed that *kvSIMD.swift* is compiled on any platform Swift is available on.
Package is built on macOS, Linux (Ubuntu 22.04) and Windows (10 x64).


## Getting Started

#### Package Dependencies:
```swift
.package(url: "https://github.com/keyvariable/kvSIMD.swift.git", from: "1.1.0")
```
#### Target Dependencies:
```swift
.product(name: "kvSIMD", package: "kvSIMD.swift")
```
#### Import:
```swift
import simd
```


## SIMD

SIMD means «single instruction, multiple data».
On CPUs it's a set or instructions taking tuples of values and processing them at once and various related instructions.
Transformation of regular code to SIMD-compatible is called vectorization.
Modern compilers vectorize code well but the result still depends on the code style and the developer's skills.
So it's good to explicitly organize data using SIMD-compatible types and use the related functions.


## Examples

Let *v* is a `Float` value and it's needed to find 2∙*v*, 4∙*v*, 8∙*v* and 16∙*v*. It can be done this way:
```swift
let product = simd_float4(repeating: v) * [ 2, 4, 8, 16 ]
```

Let *n* is a normal of a plane in 3D space, *d* is the distance from the plane to the origin.
Then function returning a boolean value indicating whether *v* point is on the plane with *eps* accuracy can be implemented this way:
```swift
func IsPoint(_ v: simd_float3, on plane: simd_float4, eps: Float) -> Bool {
    abs(simd_dot(simd_float4(v, 1), plane)) < eps
}
```
Note that plane is represented as a `simd_float4` value: first three elements are *n*, fourth component is *d*.
Plane can be produced from (*nx*, *ny*, *nz*) components of normal and *d* this way:
```swift
func MakePlane(nx: Float, ny: Float, nz: Float, d: Float) -> simd_float4 {
    simd_float4(nx, ny, nz, d)
}
```

## Authors

- Svyatoslav Popov ([@sdpopov-keyvariable](https://github.com/sdpopov-keyvariable), [info@keyvar.com](mailto:info@keyvar.com)).
