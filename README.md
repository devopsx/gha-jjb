## Jenkins Job Builder action

This action launches [Jenkins Job Builder](https://jenkins-job-builder.readthedocs.io/en/latest/) to update your Jenkins jobs.

## Example

```yaml
name: jjb

on: [push]

jobs:
  jjb:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: devopsx/gha-jjb@master
        with:
          jenkins_token: ${{ secrets.JENKINS_TOKEN }}
          jjb_yml: jenkins/jobs.yml
          jjb_ini: jenkins/jenkins_jobs.ini
```

## Configuration

1. Create Jenkins [API token](https://www.jenkins.io/blog/2018/07/02/new-api-token-system/).
2. Create `JENKINS_TOKEN` [secret](https://docs.github.com/en/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-a-repository) in repo settings.
3. Add gha yaml, as described above. That's it!
