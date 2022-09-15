alias k='kubectl config use-context'
alias kca='kubectl get --all-namespaces'
alias kbl='kubectl'
alias kblctx='kubectl config current-context'

function cronjobjob() {
	local job=$1
	local ns=${2:-default}
	kubectl -n $ns create job --from=cronjob/$job
}
