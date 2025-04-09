#!/bin/bash

# Verifica se o projeto foi criado corretamente
check_react_native_structure() {
  local project_dir=$1
  local essential_files=(
    "package.json"
    "android/"
    "ios/"
    "node_modules/"
    "App.tsx"
  )

  for file in "${essential_files[@]}"; do
    if [ ! -e "$project_dir/$file" ]; then
      echo "Erro: Arquivo/diretório essencial faltando: $file"
      return 1
    fi
  done
  echo "Estrutura do projeto verificada com sucesso"
  return 0
}

# Verifica as dependências instaladas
check_dependencies() {
  local project_dir=$1
  cd "$project_dir" || return 1
  
  local required_deps=(
    "react"
    "react-native"
    "@types/react"
    "@types/react-native"
  )

  for dep in "${required_deps[@]}"; do
    if ! grep -q "\"$dep\"" package.json; then
      echo "Erro: Dependência faltando: $dep"
      return 1
    fi
  done
  echo "Dependências básicas verificadas"
  return 0
}

# Executa as verificações
main() {
  local project_dir="PurpleDelivery"
  check_react_native_structure "$project_dir" && \
  check_dependencies "$project_dir"
}

main "$@"
