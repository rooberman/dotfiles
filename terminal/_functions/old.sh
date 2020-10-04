# Funciones para el prompt del curso de zsh de codely tv
# Originalmente se picaron en el .zshrc con esto por arriba:
#PROMPT='%n @ %d > '
# y esto por abajo:
#PROMPT='%{%F{$(prompt_exit_code)}%}%n%{%f%} @ %d$(git_prompt_info) > '
#RPROMPT='%T'
# seguramente también requieran esto al principio del fichero .zshrc
#setopt PROMPT_SUBST

function prompt_exit_code() {
  local EXIT="$?"

  if [ $EXIT -eq 0 ]; then
    echo -n green
  else
    echo -n red
  fi
}

function git_prompt_info {
  inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

  if [ "$inside_git_repo" ]; then
    current_branch=$(git branch --show-current)
    print -P " on %{%F{yellow}%}$current_branch%{%f%}"
  else
    echo ""
  fi
}

# Lista los contenedores de docker en ejecucion

function docker_list {
  containers=$(docker ps | awk '{if (NR!=1) print $1 ": " $(NF)}')

  echo "Containers: 👇"
  echo $containers
}
