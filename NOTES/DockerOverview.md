# Docker

## Virtual Machines vs. Docker Containers

### Virtual Machines

- Spinning up a virtual machine requires more resources and memory space than using containers
  - If you need multiple virtual machines, then each machine must spin up the OS, etc. (if you have multiple VMs that have the same OS like Linux, then all those machines need to spin up a Linux OS multiple times - redundant duplication and wastes space)
  - Virtual machines may have tools installed by default that you may not necessarily need - waste of resources and space
  - Machines are running on top of your machine
  - Requires configuration of the virtual machines in different environments (i.e. dev and prod)
  - Slower than containers due to larger resource use

### Containers

- Use built in emulated container support provided by OS (you do not spin up more machines inside your machine)
  - Docker engine is run on top of this support (the engine is one small lightweight tool used to spin up containers)
- Containers have a minimal OS layer and tools needed to run (much less than a Virtual Machine would require to be spun up)
- Can describe containers with a shareable config file or an image which can be shared across platforms and machines
  - (does not require additional config as you would need with virtual machines)
- Encapsulate environments, not whole machines like VMs do. (more lightweight)
