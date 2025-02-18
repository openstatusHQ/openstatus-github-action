# OpenStatus Synthetics CI

This repository contains the GitHub Action that powers the OpenStatus Synthetics CI.


## Requirements

1. Create an account on [OpenStatus](https://www.openstatus.dev), set up your monitors, and get an API key.
2. Set up a config file in your repository. The default path is `config.openstatus.yaml`. The config file should contain the following fields:

```yaml
tests:
  ids:
     - 2258
```
3. Add the OpenStatus Synthetics CI GitHub Action to your repository.

```yaml
      - name: Run OpenStatus Synthetics CI
        uses: openstatushq/openstatus-github-action@v1
        with:
          api_key: ${{ secrets.OPENSTATUS_API_KEY }}

```

## Inputs

### `api_key`
**Required** The OpenStatus API key.

### `config_path`
the path of the config file. Default `config.openstatus.yaml`.

## Example usage

https://github.com/openstatusHQ/github-action-tester