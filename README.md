# .github

This repository holds the default configurations, workflows, and settings for all my personal GitHub projects. GitHub automatically inherits the community health files located in the `.github/` directory. The rest of the repository serves as my personal reference standard.

## Architecture

- [**`.github/`**](./.github/): Houses the official [GitHub community health files](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file), global templates, and configurations that are automatically inherited by any project in my account without local overrides.
- [**`docs/`**](./docs/): Serves as the documentation standard, containing baseline repository settings and internal guidelines.
  - [**`docs/issues/labels.json`**](./docs/issues/labels.json): The global definition file used to standardise issue and pull request labels across all repositories.
  - [**`docs/projects/project-field-type.json`**](./docs/projects/project-field-type.json): Reference data for the Type single-select field in the "All my repositories" GitHub Project. Includes option names, descriptions, GitHub colour enum names, and Primer hex values (foreground + background).
