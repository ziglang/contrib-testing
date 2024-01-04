# User-Contributed Extra Test Suite for Zig Toolchain

Ideally, all Zig toolchain tests would have perfect, minimized test cases, and
they would all go into the ziglang/zig repository, and they would not need
network access, but they would somehow also test the network, and the CI would
complete quickly, but also it would have a ton of test coverage, and it would
cover regressions in real world projects, but it would account for intentional
breaking changes, and it wouldn't have any system dependencies, but it would
also test dependencies on system libraries... alas! These requirements are
impossible and downright contradictory.

This repository exists as a pragmatic strategy to augment what is missed in the
ziglang/zig repository.

 * Network access: OK!
 * Depending on large quantities of third party projects: OK!
 * Depending on system things to be installed: OK!
 * Taking forever for tests to build and run: OK!

Rust has that project [crater](https://github.com/rust-lang/crater) which fills
a similar role as this. This project is a poor man's crater. Maybe, like a good
Pokemon, it can evolve into something better someday.

Expect this codebase to be volatile. Breakage in this repository can be helpful
for working on Zig, but unlike the CI in ziglang/zig, it does not stop the flow
of commits when tests are failing.

## Running the test suite

It is recommended to run this in a sandboxed environment. This project does not
currently automatically discover and run code but with user-contributed code,
the chances are much higher for malicious code.

```
zig build
```

Pass `--help` to discover additional options.

## Contributing

Feel free to submit a pull request adding your project to build.zig.zon and
build.zig.

This gives a chance, but not a guarantee, that Zig contributors will identify
and fix regressions in the Zig toolchain before they affect your project.

Zig developers may decide to remove projects from this repository if
maintaining them as part of this test suite is deemed not worth the effort. If
your project is removed at some point, feel free to submit another pull request
to add it back.
