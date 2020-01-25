# about
jupyterlab with R. not using conda.

# prepare
run the command bellow to create data container.
```
docker run --name rjupyter_dc -v /usr/local/lib/R dr666m1/rjupyter
```

if you use wsl, you have to add the command below to your .bashrc
```
function mypwd() {
    local PWD=$(pwd)
    echo ${PWD#/mnt}
}
```

# usage
it is useful to setup the alias below.

if you use wsl, replace `$(pwd)` to `$(mypwd)`.

remember that you can't sync directories not in c-drive.

```
alias rjupyter='docker run -it -p 8888:8888 --volumes-from rjupyter_dc -v $(pwd):/sync dr666m1/rjupyter'
```

