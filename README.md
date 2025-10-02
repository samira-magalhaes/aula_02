# Trivy GitHub Actions demo


This repo shows how to run Trivy inside GitHub Actions to scan a Docker image built from a small Python app with intentionally outdated packages.


Local quick commands:


```bash
# build locally
docker build -t vuln-python-app:local .


# scan with trivy locally (requires trivy installed)
trivy image vuln-python-app:local