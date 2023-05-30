<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
```
. $env:USERPROFILE\scoop\apps\scoop\current\bin\checkver.ps1 -Dir . -u
. $env:USERPROFILE\scoop\apps\scoop\current\bin\checkhashes.ps1 -Dir . -Update
git add -A && git commit -m "update" && git push
```
=======
# Generic scoop bucket

=======
# Generic scoop bucket

For information about `lc_` software, see [here](README_LOCAL.md).



>>>>>>> remotes/jqk/master
=======
# Generic scoop bucket

>>>>>>> remotes/tenvdo/master
❗❗🎉 Repository was converted into Template. See [blog](https://github.blog/2019-06-06-generate-new-repositories-with-repository-templates/?utm_campaign=1559837005&utm_medium=social&utm_source=twitter&utm_content=1559837005) for more information. 🎉❗❗

In this repository you will find everything you need to know about creating custom bucket with appveyor support.

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> remotes/tenvdo/master
- [Files and helpers](#files-and-helpers)
    - [`bucket` Folder](#bucket-folder)
    - [`bin` Folder](#bin-folder)
    - [`Bucket.Tests.ps1` File](#buckettestsps1-file)
    - [`.vscode` Folder](#vscode-folder)
    - [`.github` Folder](#github-folder)
    - [`config files`](#config-files)
- [How to use and adopt this bucket](#how-to-use-and-adopt-this-bucket)

<<<<<<< HEAD
=======
>>>>>>> remotes/jqk/master
=======
>>>>>>> remotes/tenvdo/master
## Files and helpers

### `bucket` Folder

- All manifests belong here
<<<<<<< HEAD
<<<<<<< HEAD
- `.gitkeep` file could be removed when you push your first manifest
=======
- `.gitkeep` file could be removed after you push your first manifest
>>>>>>> remotes/jqk/master
=======
- `.gitkeep` file could be removed when you push your first manifest
>>>>>>> remotes/tenvdo/master

### `bin` Folder

Scripts which will save you time while debuging and writing manifests.
If you need help how to use them just run `Get-Help .\bin\<BINARY>.ps1`.

### `Bucket.Tests.ps1` File

- Test which are executed inside Appveyor pipeline
<<<<<<< HEAD
<<<<<<< HEAD
- Could be configured as `pre_commit` hook
=======
- Could be configured as`pre_commit` hook
>>>>>>> remotes/jqk/master
=======
- Could be configured as `pre_commit` hook
>>>>>>> remotes/tenvdo/master

### `.vscode` Folder

Contains all syntax highlighting, code formating, manifest creating tools you could use.

- Extensions
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> remotes/tenvdo/master
    - All extensions which will save your time while writing manifests are in recommended sections
    - You will be notified about installing them when you open project
- Settings
    - All settings are set to be compatible with Appveyor pipeline and upstream (official) repositories
        - No need to worry about formating restrictions between repositories.
- Code snippets
    - > Code snippets are templates that make it easier to enter repeating code patterns, such as loops or conditional-statements.
    - You could use workspace wide code snippets for speed up manifest creating
    - While editing json file write partitial name of snippet and press `tab`
    - Available Json snippets:
        - `app`
            - Create default manifest structure
        - `appArch`
            - Create default manifest structure with full acrchitecture
        - `arch`
            - Create only architecture property with 64bit and 32bit
        - `upAr`
            - Create autoupdate property with architecture
        - `persistCheck`, `persistInlineContent`, `persistInlineNoContent`
            - Installer / pre_install script for checking if file is already persisted or need to be created
<<<<<<< HEAD
=======
  - All extensions which will save your time while writing manifests are in recommended sections
  - You will be notified about installing them when you open project
- Settings
  - All settings are set to be compatible with Appveyor pipeline and upstream (official) repositories
    - No need to worry about formating restrictions between repositories.
- Code snippets
  - > Code snippets are templates that make it easier to enter repeating code patterns, such as loops or conditional-statements.
    >
  - You could use workspace wide code snippets for speed up manifest creating
  - While editing json file write partitial name of snippet and press`tab`
  - Available Json snippets:
    - `app`
      - Create default manifest structure
    - `appArch`
      - Create default manifest structure with full acrchitecture
    - `arch`
      - Create only architecture property with 64bit and 32bit
    - `upAr`
      - Create autoupdate property with architecture
    - `persistCheck`
      - Installer / pre_install script for checking if file is already persisted or need to be created
>>>>>>> remotes/jqk/master
=======
>>>>>>> remotes/tenvdo/master

### `.github` Folder

GitHub repository configuration.

- `workflows` folder
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> remotes/tenvdo/master
    - Linux (legacy) version [GitHub Actions](https://github.com/features/actions) configuration for automatic issue/PR/updates handling.
    - Windows version of actions could be used for better and future proof implementation (see <https://github.com/Ash258/Scoop-GithubActions/tree/main-win> for updated configs)
- `CODEOWNERS`
    - Pull requests will request review for users defined in this file
- `PULL REQUEST TEMPLATE`
    - Prefilled pull request types with proper titles
- `ISSUE TEMPLATE`
    - The most used issue templates for users to select and prefilled with required information and labels
<<<<<<< HEAD
=======
  - Linux (legacy) version[GitHub Actions](https://github.com/features/actions) configuration for automatic issue/PR/updates handling.
  - Windows version of actions could be used for better and future proof implementation (see[https://github.com/Ash258/Scoop-GithubActions/tree/master-win](https://github.com/Ash258/Scoop-GithubActions/tree/master-win) for updated configs)
- `CODEOWNERS`
  - Pull requests will request review for users defined in this file
- `PULL REQUEST TEMPLATE`
  - Prefilled pull request types with proper titles
- `ISSUE TEMPLATE`
  - The most used issue templates for users to select and prefilled with required information and labels
>>>>>>> remotes/jqk/master
=======
>>>>>>> remotes/tenvdo/master

### `config files`

- `.appveyor.yml`
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> remotes/tenvdo/master
    - Definition of Appveyor CI pipeline
- `.editorconfig`
    - Universal configuration file, compatible with all types of editors
    - Defines how files should look
- `.gitattributes`
    - Simplifying line endings for git
    - No need to configure `auto.clrf` setting on each clone or new workspaces
- `Bucket.Tests.ps1`
    - Test which are executed inside Appveyor pipeline
    - Could be configured as `pre_commit` hook

## How to use and adopt this bucket

1. Click on `Use this template` to create new repository in your account with same files
1. Open project settings and **give your bucket in new name**
1. Add proper description of repository
    - Information about what type of manifests could be found here
1. Add `scoop-bucket` tag for repository
    - Your manifests will be automatically available at <https://scoop-docs.now.sh/apps/>
1. Enable appveyor CI/CD
    1. Register / Login to [Appveyor](https://ci.appveyor.com/login)
    1. Click `New Project`
    1. From Left Panel, choose your source control variant (Github)
    1. From Right Panel, choose repository with bucket and click `+ Add`
    1. 🎉 Project created and ready to build 🎉
    1. Get Badge URL
        1. Open Appveyor Project settings
        1. Navigate to Badges
        1. Copy `Branch Sample markdown code` snippet for further usage
            - Only master branch is better, since you can freely test in other branches and do not mystificate users
            - [You could use alternative styles](https://shields.io/category/build#styles)
1. Clone project into some folder
    - `git clone git@github.com:USER/REPO.git MyAwesomeBucket`
    - or
    - `git clone https://github.com/USER/REPO.git MyAwesomeBucket`
1. Open vscode with this clone
    - `code MyAwesomeBucket`
1. _[optional]_ Configure remote repository
    1. `git remote add 'upstream' 'https://github.com/Ash258/GenericBucket.git'`
    - This step will allow you to synchronize changes with this template repository
    - If some changes are pushed into this repository and you want to reflect them into your bucket, you can simply do something like:
        - `git fetch --all`
        - `git checkout -B upstream-master -t upstream/master`
        - Do changes
        - `git merge master` or create PR in github
1. Create proper README.md
    1. [Open this README in the browser for reference](https://github.com/Ash258/GenericBucket/tree/master/README.md)
    1. Open `README.template.md`
    1. Replace all `%%templatestring%%` with real and according values
        1. Replace appveyor status badge with yours
            - See: <https://appveyor.com/docs/status-badges/>
    1. Override this README with completed `README.template.md`
    1. Remove template `README.template.md`
1. Repository tweaks
    1. Open `.github\CODEOWNERS` and change `@Ash258` to desired github username
    1. Actions
        1. Open each file in `.github\workflows` and change `youremail@email.com` with your email
        1. Visit <https://github.com/Ash258/Scoop-GithubActions> for more information
1. 🎉🎉 Everything set. High quality and automated bucket is ready for new users 🎉🎉
<<<<<<< HEAD
>>>>>>> remotes/BrokeThink/master
=======
  - Definition of Appveyor CI pipeline
- `.editorconfig`
  - Universal configuration file, compatible with all types of editors
  - Defines how files should look
- `.gitattributes`
  - Simplifying line endings for git
  - No need to configure`auto.clrf` setting on each clone or new workspaces
- `Bucket.Tests.ps1`
  - Test which are executed inside Appveyor pipeline
  - Could be configured as`pre_commit` hook

## How to use and adopt this bucket

1. Click on`Use this template` to create new repository in your account with same files
2. Open project settings and**give your bucket in new name**
3. Add proper description of repository

   - Information about what type of manifests could be found here
4. Add`scoop-bucket` tag for repository

   - Your manifests will be automatically available at[https://scoop-docs.now.sh/apps/](https://scoop-docs.now.sh/apps/)
5. Enable appveyor CI/CD

   1. Register / Login to[Appveyor](https://ci.appveyor.com/login)
   2. Click`New Project`
   3. From Left Panel, choose your source control variant (Github)
   4. From Right Panel, choose repository with bucket and click`+ Add`
   5. 🎉 Project created and ready to build 🎉
   6. Get Badge URL
      1. Open Appveyor Project settings
      2. Navigate to Badges
      3. Copy`Branch Sample markdown code` snippet for further usage
         - Only master branch is better, since you can freely test in other branches and do not mystificate users
         - [You could use alternative styles](https://shields.io/category/build#styles)
6. Clone project into some folder

   - `git clone https://github.com/USER/REPO.git MyAwesomeBucket`
7. Open vscode with this clone

   - `code MyAwesomeBucket`
8. Configure remote repository

   1. `git remote add 'upstream' 'https://github.com/Ash258/GenericBucket.git'`

   - This step will allow you to synchronize changes with this template repository
   - If some changes are pushed into this repository and you want to reflect them into your bucket, you can simply do something like:
     - `git fetch --all`
     - `git checkout -B upstream-master -t upstream/master`
     - Do changes
     - `git merge master` or create PR in github
9. Create proper README.md

   1. Open`README.template.md`
   2. Replace all`%%templatestring%%` with real and according values
      1. Replace appveyor status badge with yours
         - See:[https://appveyor.com/docs/status-badges/](https://appveyor.com/docs/status-badges/)
   3. Override this README with completed`README.template.md`
   4. Remove template`README.template.md`
10. Repository tweaks

    1. Open`.github\CODEOWNERS` and change`@Ash258` to desired github username
    2. Actions
       1. Open each file in`.github\workflows` and change`youremail@email.com` with your email
       2. Visit[https://github.com/Ash258/Scoop-GithubActions](https://github.com/Ash258/Scoop-GithubActions) for more information
11. 🎉🎉 Everything set. High Quality bucket is ready for new users 🎉🎉
>>>>>>> remotes/jqk/master
=======
>>>>>>> remotes/tenvdo/master
