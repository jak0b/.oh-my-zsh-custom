alias kc="k ctx"
alias kcc="k ctx -c "
alias kn="k ns"
alias knc="k ns -c"

alias kg="k get"
alias kd="k describe"
alias ke="k edit"
alias kdel="k delete"
alias kt="k top"

alias kas="k autoscale"
alias kasd="kas deployment"
alias kasrs="kas replicaset"
alias kasrc="kas replicationcontroller"

alias kcns="k create namespace"
alias kdelns="k delete namespace"

alias ktp="k top pods"
alias ktpa="k top pods --all-namespaces"
alias ktn="k top nodes"

alias kgn="k get nodes"
alias ken="k edit nodes"
alias kdn="k describe nodes"
alias kdeln="k delete nodes"

alias kgpv="k get persistentvolumes"
alias kepv="k edit persistentvolumes"
alias kdpv="k describe persistentvolume"
alias kdelpv="k delete persistentvolume"

alias kgcer="k get certificates.cert-manager.io"
alias kgcera="k get certificates.cert-manager.io --all-namespaces"
alias kecer="k edit certificates.cert-manager.io"
alias kdcer="k describe certificates.cert-manager.io"
alias kdelcer="k delete certificates.cert-manager.io"

alias kgcerrq="k get certificaterequests.cert-manager.io"
alias kgcerrqa="k get certificaterequests.cert-manager.io --all-namespaces"
alias kecerrq="k edit certificaterequests.cert-manager.io"
alias kdcerrq="k describe certificaterequests.cert-manager.io"
alias kdelcerrq="k delete certificaterequests.cert-manager.io"

alias kgj="k get jobs.batch"
alias kgja="k get jobs.batch --all-namespaces"
alias kej="k edit jobs.batch"
alias kdj="k describe jobs.batch"
alias kdelj="k delete jobs.batch"

# Scale deployment
alias ksd0="ksd --replicas 0"
alias ksd1="ksd --replicas 1"
alias ksd2="ksd --replicas 2"
alias ksd3="ksd --replicas 3"
alias ksd4="ksd --replicas 4"
alias ksd5="ksd --replicas 5"
alias ksd6="ksd --replicas 6"
alias ksd7="ksd --replicas 7"
alias ksd8="ksd --replicas 8"
alias ksd9="ksd --replicas 9"

function ksdn {
  ksd --replicas $1
}

# Scale stateful set
alias ksss0="ksss --replicas 0"
alias ksss1="ksss --replicas 1"
alias ksss2="ksss --replicas 2"
alias ksss3="ksss --replicas 3"
alias ksss4="ksss --replicas 4"
alias ksss5="ksss --replicas 5"
alias ksss6="ksss --replicas 6"
alias ksss7="ksss --replicas 7"
alias ksss8="ksss --replicas 8"
alias ksss9="ksss --replicas 9"

function ksssn {
  ksss --replicas $1
}

export PATH="${PATH}:${HOME}/.krew/bin"
