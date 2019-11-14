# docker-scancode-toolkit
Docker image for Scancode-Toolkit 3.0.2

# How to use
## Installation
`docker pull shaigrorb/docker-scancode-toolkit`

## Help
Display help for image: `docker run -it --rm shaigrorb/docker-scancode-toolkit --help`  
Display help for scancode: `docker run -it --rm shaigrorb/docker-scancode-toolkit scancode --help`  
Display help for extractcode: `docker run -it --rm shaigrorb/docker-scancode-toolkit extractode --help`  

## Extract an archive
``docker -it --rm -v `pwd`:/scan --workdir=/scan shaigrorb/docker-scancode-toolkit extractcode --verbose <file>``  
It will extract the content of the `<file>` archive into a folder called `<file>-extract`.

## Scan a folder (or a file)
Basic scan: ``docker -it --rm -v `pwd`:/scan --workdir=/scan shaigrorb/docker-scancode-toolkit scancode <folder> --json licenses.json``  
Search licenses with 4 processes while ignoring ".git" files, write the output as json, html and csv, all of that with a bit of verbose:  
```
docker -it --rm -v `pwd`:/scan --workdir=/scan shaigrorb/docker-scancode-toolkit -l -n 4 --ignore ".git/\*" --verbose scancode \
  --json licenses.json --html licenses.html --csv licenses.csv
```

# Documentation
See [nexB/scancode-toolkit](https://github.com/nexB/scancode-toolkit) for more information.
