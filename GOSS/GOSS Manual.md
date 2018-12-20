# GOSS MANUAL

[Official Docs](https://github.com/aelsabbahy/goss/blob/master/docs/manual.md)





## commands

Commands are the actions goss can run.

    - **add**: add a single test for a resource
    - **autoadd**: automatically add multiple tests for a resource
    - **render**: renders and outputs the gossfile, importing all included gossfiles
    - **serve**: serves the gossfile validation as an HTTP endpoint on a specified address and port, so you can use your gossfile as a health repor for the host
    - **validate**: runs the goss test suite on your server

## add

[add](https://github.com/aelsabbahy/goss/blob/master/docs/manual.md#add-a---add-system-resource-to-test-suite)

This will add a test for a resource. Non existent resources will add a test to ensure they do not exist on the system. A sub-command resource type has to be provided when running add.

### Examples

```
goss add file file.txt
```

## validate

### Examples

When `goss.yaml` file in current dir
```
goss validate
```
