# docker-distribution

Testing docker distribution v3.1.0.
See <https://github.com/distribution/distribution/pull/4353#pullrequestreview-4076095311>

Add registry alias to renovate admin config, replace `mcr.proxy.test` with your distribution proxy.
```json
{
  "registryAliases": {
    "mcr.microsoft.com": "mcr.proxy.test"
  }
}
```
