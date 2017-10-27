# gogrep

Small tool to make your live with VS Code and go easier.
It is written for go but not in go.

## install

```bash
$ git clone https://github.com/DaKine23/gogrep.git
$ cd gogrep
$ sudo chmod 555 gogrep.sh
$ sudo ln -s $(pwd)/gogrep.sh /usr/bin/gogrepq
```

## usage

*search through go files :*
```bash
$ gogrep "foo"
```
*search through json files :*
```bash
$ gogrep "bar" "*.json"
```

Doing so in the VS Code terminal, will allow you to open a file with cursor at the position of the finding.

*example output :*

```bash
$ ./utils/structs/soap/soap.go:1:1
$ ./utils/structs/soap/soap.go:187:63
```