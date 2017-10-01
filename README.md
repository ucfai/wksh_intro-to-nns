# Workshop: Intro to Neural Networks

**v0.1.0** (Last Updated: Sep. 30, 2017)

This workshop should take about two hours to complete, with someone
providing a walkthrough.
We'll cover the basics of creating a Neural Network, with Tensorflow.
It's highly likely we'll create a Neural Network, then do so with
Tensorflow (these details are still being worked out, as of Sep 30, but
getting your dependencies and such installed won't change).

## Install Dependencies
**NOTE:** If you've already got `docker` and `docker-compose` on your
system, then skip to the next section.

Here's what you'll need to install:
1. Install `docker` (Community Edition is sufficient)
    - [**For macOS**](https://docs.docker.com/docker-for-mac/install/)
    - [**For Windows**](https://docs.docker.com/docker-for-windows/install/)
    - **For Linux**:
        - Debian-based: `sudo apt-get install -y docker`
        - Arch Linux: `sudo pacman -S docker`
        - Fedora: `sudo dnf install -y docker`
2. Install `docker-compose`
    - **For macOS**: included in `docker`
    - **For Windows**: included in `docker`
    - **For Linux**:
        - Check the [current release version](https://github.com/docker/compose/releases)
        - ```curl -L https://github.com/docker/compose/releases/download/<current_version>/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose```
        - `chmod +x /usr/local/bin/docker-compose`

## Getting It Up &amp; Running
1.  `cd` into the directory you copied the workshop into. (It's probably `wksh_intro-to-nns`.)
2.  Run `docker-compose build` to build the image. This will download and prepare everything for the workshop.
    - **NOTE:** Please do this before coming to the workshop. Having everyone download this all right before the workshop will throttle the network and take forever.
    - Stop here if you're not at the workshop; this is all you need to do.
3. Run `docker-compose up` to run the container.
4. Open your browser and go to `http://localhost:19972/workshop.ipynb`.
    - **NOTE:** Because we're running `jupyter` inside of a `docker` container, we may disable the necessity for a token. This is ill-advised for anything you could do `jupyter` outside of this workshop.
5. Follow your instructor through the workshop inside of `workshop.ipynb`.
6. Build yourself a Convolutional Neural Network.

## Some Extras
If you want to learn more about `docker` and it's intricacies, take a gander at the [docs](https://docs.docker.com/get-started/). It's an awesome tool, especially when working with multiple systems that allows you to be host-OS agnostic.