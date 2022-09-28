# Github Actions OIDC token claims

refs: 
- https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/about-security-hardening-with-openid-connect#customizing-the-token-claims

Check this workflow:
- [./.github/workflows/print-gha-claim.yaml](./.github/workflows/print-gha-claim.yaml)

Example claim:
```json
{
  "jti": "988764ef-0632-4385-97d2-4e3593e6fbdf",
  "sub": "repo:bruno-yamada/labs:ref:refs/heads/master",
  "aud": "https://github.com/bruno-yamada",
  "ref": "refs/heads/master",
  "sha": "2ab8064a846b3ce4bb3165dc92f561bfe8842c24",
  "repository": "bruno-yamada/labs",
  "repository_owner": "bruno-yamada",
  "repository_owner_id": "8508500",
  "run_id": "3147092640",
  "run_number": "6",
  "run_attempt": "1",
  "repository_visibility": "public",
  "repository_id": "511714419",
  "actor_id": "8508500",
  "actor": "bruno-yamada",
  "workflow": "Print GHA claim (oidc)",
  "head_ref": "",
  "base_ref": "",
  "event_name": "push",
  "ref_type": "branch",
  "job_workflow_ref": "bruno-yamada/labs/.github/workflows/print-gha-claim.yaml@refs/heads/master",
  "iss": "https://token.actions.githubusercontent.com",
  "nbf": 1664401044,
  "exp": 1664401944,
  "iat": 1664401644
}
```
