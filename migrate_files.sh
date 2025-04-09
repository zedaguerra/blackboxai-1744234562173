#!/bin/bash

# Verifica se o projeto foi criado
if [ ! -d "PurpleDelivery" ]; then
  echo "Erro: Diretório do projeto não encontrado"
  exit 1
fi

# Lista de arquivos para migrar
declare -A files_to_migrate=(
  ["src/config/firebaseConfig.ts"]="PurpleDelivery/src/config/"
  ["src/theme/colors.ts"]="PurpleDelivery/src/theme/"
  ["src/components/Loading.tsx"]="PurpleDelivery/src/components/"
  ["src/@types/global.d.ts"]="PurpleDelivery/src/@types/"
  ["src/theme/styles.ts"]="PurpleDelivery/src/theme/"
  ["src/config/pixelsConfig.ts"]="PurpleDelivery/src/config/"
  ["src/navigation/MainNavigator.tsx"]="PurpleDelivery/src/navigation/"
  ["src/screens/HomeScreen.tsx"]="PurpleDelivery/src/screens/"
)

# Cria diretórios necessários
for dest in "${!files_to_migrate[@]}"; do
  mkdir -p "$dest"
done

# Copia arquivos
for src in "${!files_to_migrate[@]}"; do
  if [ -f "$src" ]; then
    cp "$src" "${files_to_migrate[$src]}"
    echo "Migrado: $src -> ${files_to_migrate[$src]}"
  else
    echo "Aviso: Arquivo não encontrado: $src"
  fi
done

echo "Migração concluída"
