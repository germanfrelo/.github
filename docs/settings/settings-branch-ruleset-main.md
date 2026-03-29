# Settings / Rulesets / Branch ruleset: `main`

URL: `https://github.com/<owner>/<repo>/settings/rules`

> [!IMPORTANT]
> **Forked repositories:**
> Do not apply this ruleset. Forks require free sync with upstream; apply no ruleset standard to forked repos. In particular, **"Restrict updates" must not be enabled on forks**.

- Ruleset Name: `main`
- Enforcement status: `Active`

## Bypass list

- Repository admin (Role): `Allow for pull requests only`
  <br>*Self note: Admin can bypass via PR; cannot push directly to main.*

## Target branches

###  Branch targeting criteria

- Default *(`main`)*

## Rules

### Branch rules

- [ ] Restrict creations
- [x] Restrict updates
- [x] Restrict deletions
- [x] Require linear history
- [ ] Require deployments to succeed
- [ ] Require signed commits
- [x] Require a pull request before merging
  - Required approvals: `1`
  - [x] Dismiss stale pull request approvals when new commits are pushed
  - [ ] Require review from specific teams
  - [x] Require review from Code Owners
  - [x] Require approval of the most recent reviewable push
  - [x] Require conversation resolution before merging
  - Allowed merge methods: `Squash`, `Rebase`
- [x] Require status checks to pass
  - [x] Require branches to be up to date before merging
  - [ ] Do not require status checks on creation
  - Required checks: *(PER-REPO)*
- [x] Block force pushes
- [x] Require code scanning results
  - CodeQL
    - Security alerts: `High or higher`
    - Alerts: `Errors`
- [x] Require code quality results
  - Severity: `Errors`
- [ ] Automatically request Copilot code review
