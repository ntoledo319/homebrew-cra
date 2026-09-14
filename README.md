# homebrew-cra

Homebrew tap for [`cra-watch`](https://github.com/ntoledo319/cra-watch).

```sh
brew tap ntoledo319/cra
brew install cra-watch
```

## What `cra-watch` does

On **11 September 2026** the EU Cyber Resilience Act's reporting obligations became
enforceable. Under Article 14 of Regulation (EU) 2024/2847, a manufacturer of a product
with digital elements placed on the EU market must report an **actively exploited**
vulnerability to their coordinating national CSIRT and ENISA **within 24 hours** of
becoming aware of it.

`cra-watch` intersects your declared dependencies with the **CISA Known Exploited
Vulnerabilities** catalogue, so you see the components that could plausibly start that
clock — not another wall of CVEs.

```sh
cra-watch scan .                  # walk a project's lockfiles
cra-watch scan --sbom sbom.json   # or a CycloneDX / SPDX SBOM
cra-watch clock 2026-09-14T09:00Z # compute the 24h / 72h / 14d deadlines
```

Exit codes: `0` nothing on KEV, `1` at least one KEV match, `2` no dependency manifests found.

MIT © Toledo Technologies LLC. Engineering tooling, **not legal advice**. Not affiliated with,
endorsed by, or connected to ENISA, the European Commission, or CISA.
