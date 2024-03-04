# Setup Amazon Inspector SBOM Generator Action

[![Lint Codebase](https://github.com/build-failure/setup-inspector-sbomgen/actions/workflows/linter.yml/badge.svg)](https://github.com/build-failure/setup-inspector-sbomgen/actions/workflows/linter.yml)
[![Continuous Integration](https://github.com/build-failure/setup-inspector-sbomgen/actions/workflows/ci.yml/badge.svg)](https://github.com/build-failure/setup-inspector-sbomgen/actions/workflows/ci.yml)

Contains a GitHub action to set up [Amazon Inspector SBOM Generator](https://docs.aws.amazon.com/inspector/latest/user/sbom-generator.html)
for generation of software bill of materials (SBOM).

## Inputs

### `version`

Amazon Inspector SBOM Generator version. Default `"latest"`.

### `platform`

Target platform to execute Amazon Inspector SBOM Generator. Default `"amd64"`.

## Example usage

```yaml
- name: Setup Amazon Inspector SBOM Generator
  uses: build-failure/setup-inspector-sbomgen@v1
- name: Run Amazon Inspector SBOM Generator
  run: $inspector_sbomgen --version
```
