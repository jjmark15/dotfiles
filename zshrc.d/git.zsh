export GIT_DUET_GLOBAL=true
export GIT_DUET_CO_AUTHORED_BY=1

alias gitpruneremote='git remote prune origin'

shouldirebase() {
  CHANGED=$(git status --porcelain)
  if [ -n "${CHANGED}" ]; then
    echo 'repo has changes - aborting.';
  else
    basebranch=${1:-master}
    git checkout $basebranch > /dev/null 2>&1 && git pull > /dev/null 2>&1 && git checkout - > /dev/null 2>&1
    brnch=$(git branch | grep \* | cut -d ' ' -f2)
    hash1=$(git show-ref --heads -s ${basebranch})
    hash2=$(git merge-base ${basebranch} ${brnch})
    [ "${hash1}" = "${hash2}" ] && echo "Rebase required: false" || echo "Rebase required: true"
  fi
}

gitsquashsincemaster() {
  commits_since_master=$(git rev-list --count HEAD ^master)
  git reset --soft HEAD~${commits_since_master} && git commit --edit -m "$(git log --format=%B --reverse HEAD..HEAD@{1})";
}
