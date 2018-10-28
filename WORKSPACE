git_repository(
    name = "bazel_skylib",
    remote = "https://github.com/bazelbuild/bazel-skylib.git",
    tag = "0.5.0",
)

git_repository(
    name = "io_bazel_rules_rust",
    commit = "4a9d0e0b6c66f1e98d15cbd3cccc8100a0454fc9",
    remote = "https://github.com/bazelbuild/rules_rust.git",
)

git_repository(
    name = "io_bazel_rules_python",
    remote = "https://github.com/bazelbuild/rules_python.git",
    commit = "8b5d0683a7d878b28fffe464779c8a53659fc645",
)

load("@io_bazel_rules_rust//rust:repositories.bzl", "rust_repositories")
rust_repositories()

load("//third_party/cargo:crates.bzl", "raze_fetch_remote_crates")
raze_fetch_remote_crates()

load("//bazel:workspace.bzl", "bazel_version")
bazel_version(name = "bazel_version")

load("@io_bazel_rules_python//python:pip.bzl", "pip_import")
pip_import(name = "deps", requirements = "//third_party/python:requirements.txt")
