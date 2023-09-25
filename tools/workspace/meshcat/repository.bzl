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
        commit = "9eab23d2178060e33ce82f9d5349df857b35ff02",
        sha256 = "cb6787cd2a0903dad816a963fad37a38bf9eec8a5f4f3ad05d262c903addad35",  # noqa
        build_file = ":package.BUILD.bazel",
        mirrors = mirrors,
    )
