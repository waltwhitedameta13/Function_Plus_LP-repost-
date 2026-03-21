# Script de Deploy Automático para GitHub Pages - Windows
# Function Plus Landing Page

Write-Host "🚀 Iniciando deploy da Function Plus..." -ForegroundColor Cyan
Write-Host ""

# Verificar se git está instalado
try {
    git --version | Out-Null
} catch {
    Write-Host "❌ Git não encontrado. Por favor, instale o Git primeiro." -ForegroundColor Yellow
    Write-Host "Download: https://git-scm.com/downloads" -ForegroundColor Yellow
    exit 1
}

Write-Host "📝 Configurando repositório..." -ForegroundColor Blue
Write-Host ""

# Solicitar nome de usuário do GitHub
$github_user = Read-Host "Digite seu nome de usuário do GitHub"

if ([string]::IsNullOrWhiteSpace($github_user)) {
    Write-Host "❌ Nome de usuário não pode estar vazio!" -ForegroundColor Yellow
    exit 1
}

# Solicitar nome do repositório
$repo_name = Read-Host "Digite o nome do repositório (padrão: function-plus)"
if ([string]::IsNullOrWhiteSpace($repo_name)) {
    $repo_name = "function-plus"
}

Write-Host ""
Write-Host "🔧 Inicializando Git..." -ForegroundColor Blue

# Inicializar repositório se ainda não foi
if (-not (Test-Path .git)) {
    git init
    Write-Host "✅ Repositório Git inicializado" -ForegroundColor Green
} else {
    Write-Host "✅ Repositório Git já existe" -ForegroundColor Green
}

# Adicionar todos os arquivos
git add .
Write-Host "✅ Arquivos adicionados" -ForegroundColor Green

# Fazer commit
git commit -m "Initial commit - Function Plus Landing Page"
Write-Host "✅ Commit realizado" -ForegroundColor Green

# Renomear branch para main
git branch -M main
Write-Host "✅ Branch renomeada para main" -ForegroundColor Green

# Adicionar remote
git remote remove origin 2>$null
git remote add origin "https://github.com/$github_user/$repo_name.git"
Write-Host "✅ Remote configurado" -ForegroundColor Green

Write-Host ""
Write-Host "⚠️  IMPORTANTE:" -ForegroundColor Yellow
Write-Host "Antes de continuar, você precisa:"
Write-Host "1. Criar o repositório '$repo_name' no GitHub"
Write-Host "2. Acessar: https://github.com/new"
Write-Host "3. Nome do repositório: $repo_name"
Write-Host "4. Marcar como 'Public'"
Write-Host "5. NÃO adicionar README, .gitignore ou LICENSE"
Write-Host ""

Read-Host "Pressione ENTER quando o repositório estiver criado"

Write-Host ""
Write-Host "📤 Enviando para GitHub..." -ForegroundColor Blue

# Push para o GitHub
try {
    git push -u origin main
    Write-Host ""
    Write-Host "🎉 SUCESSO! Landing page enviada para o GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📋 Próximos passos:"
    Write-Host "1. Acesse: https://github.com/$github_user/$repo_name"
    Write-Host "2. Vá em Settings > Pages"
    Write-Host "3. Em 'Source', selecione: Branch 'main', Folder '/ (root)'"
    Write-Host "4. Clique em 'Save'"
    Write-Host ""
    Write-Host "🌐 Seu site estará disponível em:"
    Write-Host "https://$github_user.github.io/$repo_name/" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "✨ Deploy concluído com sucesso!" -ForegroundColor Green
} catch {
    Write-Host ""
    Write-Host "❌ Erro ao enviar para o GitHub" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Possíveis soluções:"
    Write-Host "1. Verifique se o repositório foi criado no GitHub"
    Write-Host "2. Verifique suas credenciais do Git"
    Write-Host "3. Execute manualmente: git push -u origin main"
}
