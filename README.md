# Setup Amazon Inspector SBOM Generator GitHub Action

[![Lint Codebase](https://github.com/build-failure/setup-inspector-sbomgen/actions/workflows/linter.yml/badge.svg)](https://github.com/build-failure/setup-inspector-sbomgen/actions/workflows/linter.yml)
[![Continuous Integration](https://github.com/build-failure/setup-inspector-sbomgen/actions/workflows/ci.yml/badge.svg)](https://github.com/build-failure/setup-inspector-sbomgen/actions/workflows/ci.yml)

Fails if report findings exceed threshold.

## Inputs

### `version`

Amazon Inspector SBOM Generator version. Default `"latest"`.

### `platform`

Target platform to execute Amazon Inspector SBOM Generator. Default `"amd64"`.

## Example usage

```yaml
- name: Setup Amazon Inspector SBOM Generator
  id: setup-sbomgen
  uses: build-failure/setup-inspector-sbomgen@v1
- name: Run
  run: $inspector_sbomgen --version
```
