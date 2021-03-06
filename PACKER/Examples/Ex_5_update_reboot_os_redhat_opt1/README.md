[Example 1](https://opensource.com/article/18/3/ansible-patch-systems)

## WHAT

Run simplest AMI creation:
- there's a source AMI  
- create a new AMI with:
    - latest OS updates (Red Hat) installed via `Ansible` (reboot the server if needed)
    - latest versions of `traceroute` and `httpd` installed via `Ansible`

## RUN

Validate Packer template
```
packer validate xbs_template.json
```

Create AMI image
```
packer build xbs_template.json
```

## VALIDATE

Has to be created:
- AMI: `xbs-autogenerated-ansible-ami-1600`
- Snapshot: `xbs-auto-v1.0`