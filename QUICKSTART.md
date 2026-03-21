# 🚀 INÍCIO RÁPIDO - Function Plus no GitHub Pages

## 📁 Estrutura do Projeto

```
function-plus-site/
├── 📄 index.html          # Landing page principal
├── 📄 README.md           # Documentação do projeto
├── 📄 LICENSE             # Licença MIT
├── 📄 DEPLOY.md           # Guia completo de deploy
├── 📄 CNAME               # Configuração de domínio personalizado
├── 📄 .gitignore          # Arquivos ignorados pelo Git
├── 📄 .nojekyll           # Desabilita processamento Jekyll
├── 📄 robots.txt          # Configuração para motores de busca
├── 📄 sitemap.xml         # Mapa do site para SEO
├── 🔧 deploy.sh           # Script de deploy Linux/Mac
└── 🔧 deploy.ps1          # Script de deploy Windows
```

## ⚡ 3 Maneiras de Fazer Deploy

### 🎯 MÉTODO 1: Script Automático (Recomendado)

#### No Windows (PowerShell):
```powershell
cd caminho\para\function-plus-site
.\deploy.ps1
```

#### No Linux/Mac (Terminal):
```bash
cd caminho/para/function-plus-site
chmod +x deploy.sh
./deploy.sh
```

O script vai:
✅ Configurar o Git automaticamente
✅ Criar o commit inicial
✅ Conectar ao GitHub
✅ Fazer o push

---

### 📤 MÉTODO 2: Upload Manual (Mais Fácil)

1. **Criar Repositório**
   - Acesse: https://github.com/new
   - Nome: `function-plus`
   - Marque: Public
   - Clique: "Create repository"

2. **Upload dos Arquivos**
   - Clique em "uploading an existing file"
   - Arraste TODOS os arquivos da pasta
   - Commit: "Initial commit"
   - Clique: "Commit changes"

3. **Ativar GitHub Pages**
   - Settings > Pages
   - Source: Branch "main", Folder "/ (root)"
   - Save

4. **Acessar**
   - URL: `https://seu-usuario.github.io/function-plus/`

---

### 💻 MÉTODO 3: Git Manual (Terminal)

```bash
# 1. Navegar até a pasta
cd caminho/para/function-plus-site

# 2. Inicializar Git
git init

# 3. Adicionar arquivos
git add .

# 4. Fazer commit
git commit -m "Initial commit - Function Plus"

# 5. Conectar ao GitHub (SUBSTITUA seu-usuario)
git remote add origin https://github.com/seu-usuario/function-plus.git

# 6. Enviar
git branch -M main
git push -u origin main
```

Depois ative o GitHub Pages em Settings > Pages

---

## 🌐 Domínio Personalizado

Se você tem um domínio (ex: `functionplus.com.br`):

### 1. No seu provedor de domínio:
Adicione registro **A** com os IPs:
```
185.199.108.153
185.199.109.153
185.199.110.153
185.199.111.153
```

### 2. Edite o arquivo CNAME:
```
functionplus.com.br
```

### 3. No GitHub:
Settings > Pages > Custom domain > Digite seu domínio > Save

---

## ✅ Checklist Pós-Deploy

- [ ] Repositório criado no GitHub
- [ ] Arquivos enviados com sucesso
- [ ] GitHub Pages ativado (Settings > Pages)
- [ ] Site acessível na URL
- [ ] Todas as seções funcionando
- [ ] Formulário de contato aparecendo
- [ ] Design responsivo no mobile
- [ ] Animações carregando

---

## 📱 URLs Importantes

Após o deploy, você terá:

- **Site**: `https://seu-usuario.github.io/function-plus/`
- **Repositório**: `https://github.com/seu-usuario/function-plus`
- **Editar**: `https://github.com/seu-usuario/function-plus/edit/main/index.html`

---

## 🎨 Personalizar Depois

### Alterar cores:
Edite as variáveis CSS em `index.html` (linhas 12-20)

### Mudar conteúdo:
Edite o HTML nas seções correspondentes

### Conectar formulário:
Substitua o JavaScript do formulário por um serviço como Formspree

### Adicionar Google Analytics:
Adicione o script do GA no `<head>` do index.html

---

## 🆘 Problemas Comuns

### Site não carrega (404)
✅ Arquivo deve se chamar `index.html`
✅ Aguarde 5 minutos após ativar Pages
✅ Verifique Settings > Pages está ativo

### Mudanças não aparecem
✅ Limpe cache (Ctrl + F5)
✅ Aguarde 1-2 minutos
✅ Verifique se commit foi feito

### Erro ao fazer push
✅ Repositório foi criado?
✅ Credenciais do Git configuradas?
✅ Tente push manual

---

## 📞 Suporte

- **Documentação**: DEPLOY.md (guia completo)
- **GitHub Docs**: https://docs.github.com/pages
- **Issues**: Crie uma issue no repositório

---

## 🎉 Pronto!

Seu site está online! 

Compartilhe: `https://seu-usuario.github.io/function-plus/`

---

**Feito com 💚 pela Function Plus**
