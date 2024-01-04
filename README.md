# User-Contributed Extra Test Suite for Zig Toolchain

Ideally, all Zig toolchain tests would have perfect, minimized test cases, and
they would all go into the ziglang/zig repository, and they would not need
network access, but they would somehow also test the network, and the CI would
complete quickly, but also it would have a ton of test coverage, and it would
cover regressions in real world projects, but it would account for intentional
breaking changes... alas! These requirements are impossible and downright
contradictory.

This repository exists as a pragmatic strategy to augment what is missed in the
ziglang/zig repository.

 * Network access: OK!
 * Depending on large quantities of third party projects: OK!

Rust has that project [crater](https://github.com/rust-lang/crater) which fills
a similar role as this. This project is a poor man's crater. Maybe, like a good
Pokemon, it can evolve into something better someday.

It is recommended to run this in a sandboxed environment. This project does not
currently automatically discover and run code but with user-contributed code,
the chances are much higher for malicious code.

## Contributing

Add your project to build.zig.zon and build.zig.
