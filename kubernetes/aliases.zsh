# KUBERNETES
alias kc='kubectl'
alias path-prod='kubectl exec -it  $(kubectl get po -o custom-columns=:metadata.name | grep "path\-[0-9a-zA-Z]" | head -n 1) -- bash'
alias path-stag='kubectl exec -it  $(kubectl get po -o custom-columns=:metadata.name | grep "path-staging\-[0-9a-zA-Z]" | head -n 1) -- bash'
alias kexec='function _kuexec(){ kubectl exec -it "$1" -- bash; };_kuexec'
alias kpods='kubectl get pods'
alias kcon="kubectl config get-contexts"
alias kucon="kubectl config use-context"
alias kgpg="kubectl get pods | grep"
alias ks='function _kuexec(){ kubectl scale --replicas=$1 deployment/$2; };_kuexec'
alias kap="kubectl get po --all-namespaces -o wide"
alias kapn="kubectl get pods -o=custom-columns=NAME:.metadata.name,STATUS:.status.phase,NODE:.spec.nodeName --all-namespaces"
