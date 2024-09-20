# CMake Parallel Build with All Cores

Recently, while trying to compile Traffic Server, came across very poor performance issues, turns out the build was only taking one core, and so in order to use all the cores on the system, we can use `-j` or `--parallel` to specify the number of jobs to run in parallel.

## Example

```bash
cmake --build build -j $(nproc --all)

# or

cmake --build build --parallel $(nproc --all)
```

**Note:** This will use up all the cores/threads on the system, which may mean the system becomes very slow, and laggy. So, one may choose to free up a CPU by using following command.

```bash
cmake --build build --parallel $(($(nproc --all) - 1))
```

***Source(s):***

- [StackOverFlow](https://stackoverflow.com/a/70552553)
- [StackOverFlow](https://stackoverflow.com/a/41691009)

***Reference: [CMake - Documentation](https://cmake.org/cmake/help/latest/manual/cmake.1.html#cmdoption-cmake-build-j)***
