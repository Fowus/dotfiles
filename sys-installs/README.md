# System Installs

## Felix Owusu Agyemang

This folder contains scripts for automating software installations on Ubuntu systems.

- Software choice was **Ansible**

## Files
* `install-ansible.sh`: Installs the Ansible automation platform. It ensures the user is root, checks for `apt`, prevents name conflicts, and runs a silent installation.

## Test that my script is working
```bash
fagyemang@McCall:~/dotfiles/sys-installs$ sudo ./install-ansible.sh
[sudo] password for fagyemang:
This script will install Ansible and its dependencies via the official PPA.
Do you want to proceed? (y/n): y
Installing ansible... please wait.
------------------------------------------------
Install complete! You can now use Ansible.
Try running: ansible --version
fagyemang@McCall:~/dotfiles/sys-installs$ ansible --version
ansible [core 2.20.4]
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/home/fagyemang/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  ansible collection location = /home/fagyemang/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/bin/ansible
  python version = 3.12.3 (main, Mar  3 2026, 12:15:18) [GCC 13.3.0] (/usr/bin/python3)
  jinja version = 3.1.2
  pyyaml version = 6.0.1 (with libyaml v0.2.5)
fagyemang@McCall:~/dotfiles/sys-installs$
```


## Citations
* [Ansible Ubuntu Installation Guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu): This article provided the official PPA repository address and the specific dependency (`software-properties-common`) needed to manage repositories on Ubuntu.
* Google Gemini 
* Prompt: "Assist me to write a bash script for Ubuntu that installs Ansible. It must check for root EUID, also briefly explain each line of code."
