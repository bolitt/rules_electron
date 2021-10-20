workspace(name = "bolitt_rules_electron")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

RULES_GO_SHA256 = "8e968b5fcea1d2d64071872b12737bbb5514524ee5f0a4f54f5920266c261acb"
RULES_GO_TAG = "v0.28.0"

http_archive(
    name = "io_bazel_rules_go",
    sha256 = RULES_GO_SHA256,
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/{TAG}/rules_go-{TAG}.zip".format(TAG=RULES_GO_TAG),
        "https://github.com/bazelbuild/rules_go/releases/download/{TAG}/rules_go-{TAG}.zip".format(TAG=RULES_GO_TAG),
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
go_rules_dependencies()
go_register_toolchains(version = "1.17.1")

ELECTRON_SHA256 = "32d3d4e5f7dbb8fe035a7b91dc64c042eb930461424784d4c450e06768e7162d"
ELECTRON_TAG = "v15.2.0"

http_file(
    name = "electron_release",
    sha256 = ELECTRON_SHA256,
    urls = [
        "https://github.com/electron/electron/releases/download/{TAG}/electron-{TAG}-darwin-x64.zip".format(TAG=ELECTRON_TAG),
    ],
)
