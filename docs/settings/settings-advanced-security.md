# Settings / Advanced Security

URL: `https://github.com/<owner>/<repo>/settings/security_analysis`

| Feature | Status |
| :--- | :--- |
| Private vulnerability reporting | ✅ |
| Dependency graph | ✅ |
| Automatic dependency submission | ✅ |
| Dependabot alerts | ✅ |
| Dependabot rules - Dismiss low-impact alerts for development-scoped dependencies | ✅ |
| Dependabot rules - Dismiss package malware alerts | ❌ |
| Dependabot malware alerts | ✅ |
| Dependabot security updates | ✅ |
| Grouped security updates | ✅ |
| Dependabot version updates[^1] | ✅ |
| CodeQL analysis | `Default setup` |
| Copilot Autofix | ✅ |
|  Check runs failure threshold - Security alert severity level | `High or higher` |
|  Check runs failure threshold - Standard alert severity level | `Only errors` |
| Secret Protection | ✅ |
| Push protection | ✅ |

[^1]: Controlled via `.github/dependabot.yml`. That file should exist on the default branch so the UI should show `Configure`.
