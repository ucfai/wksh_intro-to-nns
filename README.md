# Workshop: Intro to Neural Networks

**v0.3.0** (Last Updated: Oct. 02, 2017)

This workshop should take about two hours to complete, with someone
providing a walkthrough.

We'll cover the basics of creating a Neural Network from the ground up.
We had initially planned to cover TensorFlow, but now we feel that it's
beyond our own skillset to cover effectively, but also beyond the scope
of what we want you to get out the workshop. If you'd like to learn more
about [TensorFlow](https://tensorflow.org/) talk to one of the
coordinators afterwards.


- **NOTE:** If you've already got `docker` and `docker-compose` on your
system, then skip to the next section.
- **NOTE:** Docker requires that macOS users have Yosemite or newer versions.
- **NOTE:** Docker requires that Windows users have Windows 10 Pro, Education, 
    or Enterprise.
- **NOTE:** If you're ineligible, please attempt downloading Docker Toolbox.
    - If Docker Toolbox is non-functional, then, as a last resort, use
    `conda envs` (detailed below with "Using Anaconda").

---
## Windows
### Using Docker
#### 1. Install Dependencies
1.  Install [`docker`](https://docs.docker.com/docker-for-windows/install/) 
    (Community Edition is sufficient).
1.  \[Only if installing `docker` doesn't work\]. Install [Docker Toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/).

#### 2. Getting It Up &amp; Running
1.  Open PowerShell.
1.  Run `Set-Location -Path C:\path\to\your\cloned\repo`.
1.  Run `docker-compose build`.
    -   Do this before coming to the workshop. It will save time and
        headache for all participants.
1.  Run `docker-compose up`.
    -   Use this to check that you're able to access the Jupyter
        environment we've setup.
1.  Open your browser and go to `http://localhost:19972/`.
    -   If you can access this, you've got access to Jupyter. **STOP**
        if you're not at the workshop and plan on attending.
1.  Enjoy the workshop through `workshop.ipynb`.

### Using Anaconda
#### 1. Install Dependencies
1.  Download and install `Miniconda3-4.3.21`
    - Using a 64-bit computer: https://repo.continuum.io/miniconda/Miniconda3-4.3.21-Windows-x86_64.exe
    - Using a 32-bit computer: https://repo.continuum.io/miniconda/Miniconda3-4.3.21-Windows-x86.exe
1.  While installing `Miniconda3-4.3.21`, make sure you add it's location to your `$PATH`.

#### 2. Getting It Up &amp; Running
1.  Open Command Prompt.
1.  Run `cd "C:\path\to\your\cloned\repo"`.
1.  Run `conda env create -f environment.yml`
    -   Do this before coming to the workshop. It will save time and
        headache for all participants.
1.  Run `activate wksh_intro-to-nns`
1.  Run `jupyter notebook --port=19972 --NotebookApp.token=`.
    -   Use this to check that you're able to access the Jupyter
        environment we've setup.
1.  Open your browser and go to `http://localhost:19972/`.
    -   If you can access this, you've got access to Jupyter. **STOP**
        if you're not at the workshop and plan on attending.
1.  Enjoy the workshop through `workshop.ipynb`.

## macOS
### Using Docker
#### 1. Install Dependencies
1.  Install [`docker`](https://docs.docker.com/docker-for-mac/install/) (Community Edition is sufficient).
1.  \[Only if installing `docker` doesn't work\]. Install [Docker Toolbox](https://docs.docker.com/toolbox/toolbox_install_mac/).

#### 2. Getting It Up &amp; Running
1.  Open Terminal.
1.  Run `cd /path/to/your/cloned/repo`.
1.  Run `docker-compose build`.
    -   Do this before coming to the workshop. It will save time and
        headache for all participants.
1.  Run `docker-compose up`.
    -   Use this to check that you're able to access the Jupyter
        environment we've setup.
1.  Open your browser and go to `http://localhost:19972/`.
    -   If you can access this, you've got access to Jupyter. **STOP**
        if you're not at the workshop and plan on attending.
1.  Enjoy the workshop through `workshop.ipynb`.

**NOTE:** Using Anaconda shouldn't be necessary on macOS.

## Linux
### Using Docker
#### 1. Install Dependencies
1. Installing `docker`:
    -   For Debian-based (Ubuntu, Mint, Debian): `sudo apt update && sudo apt install -y docker`
    -   For Red Hat-based (Fedora, CentOS, RHEL): `sudo dnf update && sudo dnf install -y docker`
    -   For Arch Linux: `sudo pacman -Syyu && sudo pacman -S docker`
1. Installing `docker-compose`:
    - Check the [current release version](https://github.com/docker/compose/releases)
    - ```curl -L https://github.com/docker/compose/releases/download/<current_version>/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose```
    - `chmod +x /usr/local/bin/docker-compose`

#### 2. Getting It Up &amp; Running
1.  Open Terminal/Konsole/xterm/etc.
1.  Run `cd /path/to/your/cloned/repo`.
1.  Run `docker-compose build`.
    -   Do this before coming to the workshop. It will save time and
        headache for all participants.
1.  Run `docker-compose up`.
    -   Use this to check that you're able to access the Jupyter
        environment we've setup.
1.  Open your browser and go to `http://localhost:19972/`.
    -   If you can access this, you've got access to Jupyter. **STOP**
        if you're not at the workshop and plan on attending.
1.  Enjoy the workshop through `workshop.ipynb`.


## Some Extras
If you want to learn more about `docker` and it's intricacies, take a
gander at the [docs](https://docs.docker.com/get-started/). It's an
awesome tool, especially when working with multiple systems that allows
you to be host-OS agnostic.
