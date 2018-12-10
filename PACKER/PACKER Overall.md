# PACKER OVERALL

[Official Docs](https://www.packer.io/intro/index.html)

[Medium](https://medium.com/devopslinks/build-your-own-ec2-machine-images-with-packer-ansible-on-aws-for-immutable-aws-deployments-f7dbe81934a1)



## OVERALL


**Packer** is an open source tool for creating identical machine images for multiple platforms from a single source configuration. 

Packer is lightweight, runs on every major OS, and is highly performant, creating machine images for multiple platforms in parallel. 

Packer does not replace configuration management like Chef or Puppet. In fact, when building images, Packer is able to use tools like Chef or Puppet to install software onto the image.

A **machine image** is a single static unit that contains a pre-configured OS and installed software which is used to quickly create new running machines. Machine image formats change for each platform. Some examples include:
  - AMIs for EC2
  - VMDK/VMX files for VMware
  - OVF exports for VirtualBox
  - etc.



## USE CASES

[Use Cases](https://www.packer.io/intro/use-cases.html)


**Continuous Delivery**

Packer is lightweight, portable, and command-line driven. This makes it the perfect tool to put in the middle of your continuous delivery pipeline. Packer can be used to generate new machine images for multiple platforms on every change to Chef/Puppet.

As part of this pipeline, the newly created images can then be launched and tested, verifying the infrastructure changes work. If the tests pass, you can be confident that the image will work when deployed. This brings a new level of stability and testability to infrastructure changes.


**Dev/Prod Parity**

Packer helps keep development, staging, and production as similar as possible. Packer can be used to generate images for multiple platforms at the same time. So if you use AWS for production and VMware (perhaps with Vagrant) for development, you can generate both an AMI and a VMware machine using Packer at the same time from the same template.

Mix this in with the continuous delivery use case above, and you have a pretty slick system for consistent work environments from development all the way through to production.


**Appliance/Demo Creation**

Since Packer creates consistent images for multiple platforms in parallel, it is perfect for creating appliances and disposable product demos. As your software changes, you can automatically create appliances with the software pre-installed. Potential users can then get started with your software by deploying it to the environment of their choice.


































