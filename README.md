# Workshop: Intro to Neural Networks

**v0.2.0** (Last Updated: Oct. 02, 2017)

This workshop should take about two hours to complete, with someone
providing a walkthrough.

We'll cover the basics of creating a Neural Network from the ground up.
We had initially planned to cover TensorFlow, but now we feel that it's
beyond our own skillset to cover effectively, but also beyond the scope
of what we want you to get out the workshop. If you'd like to learn more
about [TensorFlow](https://tensorflow.org/) talk to one of the
coordinators afterwards.

## Install Dependencies
- **NOTE:** If you've already got `docker` and `docker-compose` on your
system, then skip to the next section.
- **NOTE:** Docker requires that macOS users have Yosemite or newer versions.

- **NOTE:** Docker requires that Windows users have Windows 10 Pro.

If you're ineligible, please download Anaconda.

### I'm Eligible to Install Docker
Here's what you'll need to install:
1. Install `docker` (Community Edition is sufficient)
    - [**For macOS**](https://docs.docker.com/docker-for-mac/install/)
    - [**For Windows**](https://docs.docker.com/docker-for-windows/install/)
    - **For Linux**:
        - Debian-based: `sudo apt update && sudo apt install -y docker`
        - Arch Linux: `sudo pacman -Syyu && sudo pacman -S docker`
        - Fedora: `sudo dnf update && sudo dnf install -y docker`
2. Install `docker-compose`
    - **For macOS**: included in `docker`
    - **For Windows**: included in `docker`
    - **For Linux**:
        - Check the [current release version](https://github.com/docker/compose/releases)
        - ```curl -L https://github.com/docker/compose/releases/download/<current_version>/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose```
        - `chmod +x /usr/local/bin/docker-compose`

### I Have to Install Anaconda Instead
1.  Download `Miniconda3-4.3.21` by visiting
    https://repo.continuum.io/miniconda/ and search `Miniconda3-4.3.21`.
    Download the appropriate version for your computer.
2.  Install Miniconda, making sure to add its location to your `$PATH`.


## Getting It Up &amp; Running
### I Have Docker
1.  `cd` into the directory you copied the workshop into. (It's probably
    `wksh_intro-to-nns`.)
2.  Run `docker-compose build` to build the image. This will download
    and prepare everything for the workshop.
    - **NOTE:** Please do this before coming to the workshop. Having
        everyone download this all right before the workshop will
        throttle the network and take forever.
3.  Run `docker-compose up` to run the container.
4.  Open your browser and go to `http://localhost:19972/workshop.ipynb`.
    - Stop here if you're not at the workshop; this is all you need
        to do.
5.  Follow your instructor through the workshop inside of `workshop.ipynb`.
6.  Build yourself a Neural Network.

### I Have Anaconda
1.  `cd` into the directory you copied the workshop into. (It's probably
    `wksh_intro-to-nns`.)
2.  Run `conda env create -f environment.yml` to download and create the
    Anaconda Environment (this is equivalent to Python VirtualEnvs).
    - **NOTE**: Please do this before coming to the workshop. Having
        everyone download this all right before the workshop will
        throttle the network and take forever.
3.  Run `source activate wksh_intro-to-nns` to start up your Anaconda
    Environment in macOS or Linux. If you're using **Windows**, you
    should do this open your command prompt and type
    `activate wksh_intro-to-nns`.
4.  Inside of the command prompt, run `jupyter notebook --port=19972
    --NotebookApp.token`. This should open up a browser window to
    `http://localhost:19972/tree`. If it doesn't seek help from the
    instructor or coordinators.
    - Stop here if you're not at the workshop; this is all you need
        to do.
5.  Follow your instructor through the workshop inside of `workshop.ipynb`.
6.  Build yourself a Neural Network


## Some Extras
If you want to learn more about `docker` and it's intricacies, take a
gander at the [docs](https://docs.docker.com/get-started/). It's an
awesome tool, especially when working with multiple systems that allows
you to be host-OS agnostic.