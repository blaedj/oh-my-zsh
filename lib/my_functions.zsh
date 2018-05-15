
# open explainshell in browser 
function explain {
  # base url with first command already injected
  # $ explain tar
  #   => http://explainshel.com/explain/tar?args=
  url="http://explainshell.com/explain/$1?args="

  # removes $1 (tar) from arguments ($@)
  shift;

  # iterates over remaining args and adds builds the rest of the url
  for i in "$@"; do
    url=$url"$i""+"
  done

  # opens url in browser
  open $url
}

# thanks to github.com/NickTitle for the following
#
# parses out the lcocal IP address as LOCALHOST, then runs docker-compose up
dcu() {
    LOCALHOST=`ipconfig getifaddr en0` docker-compose up
}

# kpod pr-868
kpod() {
    kubectl get pods -l app="cloud-$1" -o name
}

# kexec pr-867 cloud /bin/bash
kexec() {
    kubectl exec -it `kpod $1` -c $2 $3
}

# klog pr-867 cloud
klog() {
    kubectl logs -f `kpod $1` -c $2
}

