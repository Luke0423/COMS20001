# A Vagrant-based VM for [COMS20001](https://www.bris.ac.uk/unit-programme-catalogue/UnitDetails.jsa?unitCode=COMS20001)

<!--- -------------------------------------------------------------------- --->

- Install various pre-requisites, i.e.,

  - [VirtualBox](https://www.virtualbox.org)
    (including any extension packs necessary, e.g., for USB device support)
    and
  - [Vagrant](https://www.vagrantup.com).

- Launch the VM using *either* of the following approaches:

  1. Self-provisioned:

     - execute

       ```sh
       git clone https://www.github.com/danpage/COMS20001.git ./COMS20001
       cd ./COMS20001/vagrant
       ```

       to 
       download
       a `Vagrantfile` 
       that references a
       bare [Ubuntu](https://app.vagrantup.com/ubuntu/boxes/bionic64)
       base box,

     - [edit](https://www.vagrantup.com/docs/vagrantfile) 
       the resulting `Vagrantfile` to suit any specific requirements,

     - execute 

       ```sh
       vagrant up
       ```

       after which the VM boots, and the provisioning step executes:
       this may take some time.

  2. Pre-provisioned:

     - execute

       ```sh
       mkdir --parents ./COMS20001/vagrant
       cd ./COMS20001/vagrant
       vagrant init danpage/COMS20001
       ```

       to 
       generate
       a `Vagrantfile`
       that references a
       [pre-provisioned](https://app.vagrantup.com/danpage/boxes/COMS20001)
       base box,

     - [edit](https://www.vagrantup.com/docs/vagrantfile) 
       the resulting `Vagrantfile` to suit any specific requirements,
       e.g., enable X11 forwarding by adding the lines

       ```
       config.ssh.forward_agent = true
       config.ssh.forward_x11   = true
       ```

     - execute

       ```sh
       vagrant up
       ```

       after which the VM boots:
       this may take some time.

- Access the VM 
  by executing

  ```sh
  vagrant ssh
  ```

  Note that relevant teaching material will have been *pre-downloaded* 
  into
  `/home/vagrant/COMS20001`
  during the provisioning step.

<!--- -------------------------------------------------------------------- --->
