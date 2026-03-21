#!/bin/bash

# Script de Deploy Automático para GitHub Pages
# Function Plus Landing Page

echo "🚀 Iniciando deploy da Function Plus..."
echo ""

# Cores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Verificar se git está instalado
if ! command -v git &> /dev/null
then
    echo -e "${YELLOW}❌ Git não encontrado. Por favor, instale o Git primeiro.${NC}"
    echo "Download: https://git-scm.com/downloads"
    exit 1
fi

echo -e "${BLUE}📝 Configurando repositório...${NC}"

# Solicitar nome de usuário do GitHub
read -p "Digite seu nome de usuário do GitHub: " github_user

if [ -z "$github_user" ]; then
    echo -e "${YELLOW}❌ Nome de usuário não pode estar vazio!${NC}"
    exit 1
fi

# Solicitar nome do repositório
read -p "Digite o nome do repositório (padrão: function-plus): " repo_name
repo_name=${repo_name:-function-plus}

echo ""
echo -e "${BLUE}🔧 Inicializando Git...${NC}"

# Inicializar repositório se ainda não foi
if [ ! -d .git ]; then
    git init
    echo -e "${GREEN}✅ Repositório Git inicializado${NC}"
else
    echo -e "${GREEN}✅ Repositório Git já existe${NC}"
fi

# Adicionar todos os arquivos
git add .
echo -e "${GREEN}✅ Arquivos adicionados${NC}"

# Fazer commit
git commit -m "Initial commit - Function Plus Landing Page"
echo -e "${GREEN}✅ Commit realizado${NC}"

# Renomear branch para main
git branch -M main
echo -e "${GREEN}✅ Branch renomeada para main${NC}"

# Adicionar remote
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/${github_user}/${repo_name}.git"
echo -e "${GREEN}✅ Remote configurado${NC}"

echo ""
echo -e "${YELLOW}⚠️  IMPORTANTE:${NC}"
echo "Antes de continuar, você precisa:"
echo "1. Criar o repositório '${repo_name}' no GitHub"
echo "2. Acessar: https://github.com/new"
echo "3. Nome do repositório: ${repo_name}"
echo "4. Marcar como 'Public'"
echo "5. NÃO adicionar README, .gitignore ou LICENSE"
echo ""

read -p "Pressione ENTER quando o repositório estiver criado..."

echo ""
echo -e "${BLUE}📤 Enviando para GitHub...${NC}"

# Push para o GitHub
if git push -u origin main; then
    echo ""
    echo -e "${GREEN}🎉 SUCESSO! Landing page enviada para o GitHub!${NC}"
    echo ""
    echo "📋 Próximos passos:"
    echo "1. Acesse: https://github.com/${github_user}/${repo_name}"
    echo "2. Vá em Settings > Pages"
    echo "3. Em 'Source', selecione: Branch 'main', Folder '/ (root)'"
    echo "4. Clique em 'Save'"
    echo ""
    echo "🌐 Seu site estará disponível em:"
    echo "https://${github_user}.github.io/${repo_name}/"
    echo ""
    echo -e "${GREEN}✨ Deploy concluído com sucesso!${NC}"
else
    echo ""
    echo -e "${YELLOW}❌ Erro ao enviar para o GitHub${NC}"
    echo ""
    echo "Possíveis soluções:"
    echo "1. Verifique se o repositório foi criado no GitHub"
    echo "2. Verifique suas credenciais do Git"
    echo "3. Execute manualmente:"
    echo "   git push -u origin main"
fi
