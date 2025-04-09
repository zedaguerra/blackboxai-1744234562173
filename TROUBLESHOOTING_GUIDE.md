# Guia de Troubleshooting

## Se a instalação falhar novamente:

### Alternativa 1: Usar Expo
```bash
npm install -g expo-cli
expo init PurpleDelivery
```

### Alternativa 2: Criar projeto manualmente
1. Criar estrutura básica:
```bash
mkdir PurpleDelivery
cd PurpleDelivery
npm init -y
npm install react react-native
```

### Alternativa 3: Usar Docker
```bash
docker pull reactnativecommunity/react-native
docker run -it --rm -v $PWD:/app reactnativecommunity/react-native init PurpleDelivery
```

### Verificações adicionais:
- Espaço em disco disponível
- Permissões de diretório
- Versão do Node.js (recomendado >=16)
