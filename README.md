Monino
======

Monino is a Raspbian-based piece of software designed to turn a Raspberry Pi device into a reliable platform for displaying real-time monitoring data on a TV. You can use it to display Jenkins Build Monitor (ie. https://wiki.jenkins-ci.org/display/JENKINS/Build+Monitor+Plugin) or any other dashboard which can be displayed in a web browser.

As there were no better alternatives, in all places we've been to we found ourselves forced to set up a desktop or laptop computer for the simple task of displaying one single website. Although it's not difficult to hack a solution using Raspberry Pi, there are many things you have to keep in mind if you want it to be reliable. Getting all Chrome commandline flags is not straightforward and it's easy to get it wrong. There are many websites which tell you how to do it, but none of them was comprehensive enough.

That's why we created Monino.

We just want to configure it once and then never have to touch our box again.


Requirements
------------

In order to try Monino out you'll need:
- a Raspberry Pi Model B board (Model A doesn't have an Ethernet card, you could use Wi-Fi by buying an adapter but it'll require some manual hacking - it's possible we'll add support for it in the future)
- an SD Card (4GB should be enough)
- a micro USB power supply charger
- a TV capable of displaying a 1920x1080 image, an HDMI cable
- (optional) a case for the Raspberry Pi


Installation
------------

1. Download a Raspbian Jessy image. You can get the most recent Raspbian image from http://downloads.raspberrypi.org/raspbian_latest.

2. Write the image to an SD card according to the appropriate guide:
   - for Linux: http://www.raspberrypi.org/documentation/installation/installing-images/linux.md 
   - for Windows: http://www.raspberrypi.org/documentation/installation/installing-images/windows.md
   - for Mac OS X: http://www.raspberrypi.org/documentation/installation/installing-images/mac.md

3. Insert the SD card into the Raspberry Pi, plug Ethernet and power cables and boot it.

4. Find out the IP address that got assigned to it and put it into the `hosts` file.

5. Having Ansible installed on your local box, run `./ansible.sh` and when asked for the SSH password type `raspberry` in.

6. Edit the configuration file `sudo vim /home/monino/config.yml` replacing the default URL with an URL of the page you want to display.

7. Reboot your Raspberry Pi with a `sudo reboot` command. Plug your TV. You should now see the website on your screen.


How does it look like?
----------------------

<img src="http://i.imgur.com/5aSNBBt.jpg" alt="[Raspberry Pi board]" width="350" />
<img src="http://i.imgur.com/iRpARwK.jpg" alt="[Sample display]" width="350" />


Stability
---------

We've been using these scripts for more than a year now, combined with the https://wiki.jenkins-ci.org/display/JENKINS/Build+Monitor+Plugin plugin. No software-related issues so far, the only difficulties we're experiencing is general flakiness of the Raspberry Pi hardware itself. I.e. occasional failures to turn itself on. Can't do much about it though.


Future plans
------------

- Wi-Fi network configuration support.
- Downloadable Monino image to make installation even simpler.
- More resilience added (incl. hardware watchdog).
- Simple web interface to make editing the configuration file easier.
- Cycling multiple websites.
- ...

Check issues on GitHub.

All contributors are welcome. If you want to contribute to Monino, feel free to issue a pull request.
