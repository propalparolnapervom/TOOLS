# README

[Template Structure](https://www.packer.io/docs/templates/index.html)



## AMI BUILDER

Packer is able to create Amazon AMIs. To achieve this, Packer comes with multiple builders depending on the strategy you want to use to build the AMI. Packer supports the following builders at the moment:

  - [amazon-ebs](https://www.packer.io/docs/builders/amazon-ebs.html) - Create EBS-backed AMIs by launching a source AMI and re-packaging it into a new AMI after provisioning. If in doubt, use this builder, which is the easiest to get started with.

  - [amazon-instance](https://www.packer.io/docs/builders/amazon-instance.html) - Create instance-store AMIs by launching and provisioning a source instance, then rebundling it and uploading it to S3.

  - [amazon-chroot](https://www.packer.io/docs/builders/amazon-chroot.html) - Create EBS-backed AMIs from an existing EC2 instance by mounting the root device and using a Chroot environment to provision that device. This is an advanced builder and should not be used by newcomers. However, it is also the fastest way to build an EBS-backed AMI since no new EC2 instance needs to be launched.

  - [amazon-ebssurrogate](https://www.packer.io/docs/builders/amazon-ebssurrogate.html) - Create EBS -backed AMIs from scratch. Works similarly to the chroot builder but does not require running in AWS. This is an advanced builder and should not be used by newcomers.



## AUTHENTIFICATION

[Authentification Docs](https://www.packer.io/docs/builders/amazon.html#authentication)


## TYPE: "amazon-ebs"

["type": "amazon-ebs"](https://www.packer.io/docs/builders/amazon-ebs.html)

The amazon-ebs Packer builder is able to create Amazon AMIs backed by EBS volumes for use in EC2.


This builder builds an AMI by:
  - launching an EC2 instance from a source AMI
  - provisioning that running machine
  - then creating an AMI from that machine. 
  
This is all done in your own AWS account. 

The builder will create temporary keypairs, security group rules, etc. that provide it temporary access to the instance while the image is being created. This simplifies configuration quite a bit.


> The builder DOES NOT manage AMIs. Once it creates an AMI and stores it in your account, it is up to you to use, delete, etc. the AMI.

> Note: Temporary resources are, by default, all created with the prefix packer. This can be useful if you want to restrict the security groups and key pairs Packer is able to operate on.



### Configuration

[Config](https://www.packer.io/docs/builders/amazon-ebs.html#configuration-reference)

**Required**:

  - **access_key** (string) - The access key used to communicate with AWS. Learn how to set this

  - **ami_name** (string) - The name of the resulting AMI that will appear when managing AMIs in the AWS console or via APIs. This must be unique. To help make this unique, use a function like timestamp (see template engine for more info).

  - **instance_type** (string) - The EC2 instance type to use while building the AMI, such as t2.small.

  - **region** (string) - The name of the region, such as us-east-1, in which to launch the EC2 instance to create the AMI.

  - **secret_key** (string) - The secret key used to communicate with AWS. Learn how to set this

  - **source_ami** (string) - The initial AMI used as a base for the newly created machine. source_ami_filter may be used instead to populate this automatically.


[Optional](https://www.packer.io/docs/builders/amazon-ebs.html#optional-):


  - **iam_instance_profile** (string) - The name of an [IAM instance profile](https://docs.aws.amazon.com/IAM/latest/UserGuide/instance-profiles.html) to launch the EC2 instance with.

  - **region** (string) - The name of the region, such as us-east-1, in which to launch the EC2 instance to create the AMI

  - [source_ami_filter](https://www.packer.io/docs/builders/amazon-ebs.html#source_ami_filter)

  - **ami_regions** (array of strings) - A list of regions to copy the AMI to. Tags and attributes are copied along with the AMI. AMI copying takes time depending on the size of the AMI, but will generally take many minutes.
  
  - **launch_block_device_mappings** (array of block device mappings) - Add one or more block devices before the Packer build starts. If you add instance store volumes or EBS volumes in addition to the root device volume, the created AMI will contain block device mapping information for those volumes. Amazon creates snapshots of the source instance's root volume and any other EBS volumes described here. When you launch an instance from this new AMI, the instance automatically launches with these additional volumes, and will restore them from snapshots taken from the source instance.

  - **run_tags** (object of key/value strings) - Tags to apply to the instance that is launched to create the AMI. These tags are not applied to the resulting AMI unless they're duplicated in tags. This is a [template engine](https://www.packer.io/docs/templates/engine.html), see [Build template data](https://www.packer.io/docs/builders/amazon-ebs.html#build-template-data) for more information.
  
  - **run_volume_tags** (object of key/value strings) - Tags to apply to the volumes that are launched to create the AMI. These tags are not applied to the resulting AMI unless they're duplicated in tags. This is a template engine, see Build template data for more information.

  - **snapshot_tags** (object of key/value strings) - Tags to apply to snapshot. They will override AMI tags if already applied to snapshot. This is a [template engine](https://www.packer.io/docs/templates/engine.html), see [Build template data](https://www.packer.io/docs/builders/amazon-ebs.html#build-template-data) for more information.
  
  - **tags** (object of key/value strings) - Tags applied to the AMI and relevant snapshots. This is a template engine, see Build template data for more information.

  - etc (see link)















