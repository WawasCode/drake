load("@drake//tools/workspace:github.bzl", "github_archive")

def meshcat_repository(
        name,
        mirrors = None):
    github_archive(
        name = name,
        repository = "WawasCode/meshcat",
        upgrade_advice = """
        Updating this commit requires local testing; see
        drake/tools/workspace/meshcat/README.md for details.
        """,
        commit = "d150ec775fc04d91a810401a08ba53c2775cd923",
        sha256 = "63153c14a750bfb35938b96696292173ce08fce413f42874ac88dae01ff07e23",  # noqa
        build_file = ":package.BUILD.bazel",
        mirrors = mirrors,
    )
