# 🚀 Guia de Deploy no GitHub Pages

Este guia vai te ajudar a colocar a landing page da Function Plus online em poucos minutos!

## 📋 Pré-requisitos

- Conta no GitHub (gratuita) - [Criar conta](https://github.com/signup)
- Git instalado no computador - [Baixar Git](https://git-scm.com/downloads)

## 🎯 Passo a Passo

### 1️⃣ Criar Repositório no GitHub

1. Acesse [GitHub.com](https://github.com)
2. Clique no botão **"+"** no canto superior direito
3. Selecione **"New repository"**
4. Preencha:
   - **Repository name**: `function-plus` (ou outro nome de sua escolha)
   - **Description**: "Landing page da Function Plus - Ecossistema Digital Integrado"
   - Marque **"Public"** (necessário para GitHub Pages gratuito)
   - ✅ Marque **"Add a README file"** (pode desmarcar, pois já temos um)
5. Clique em **"Create repository"**

### 2️⃣ Fazer Upload dos Arquivos

#### Opção A: Via Interface Web (Mais Fácil)

1. No repositório criado, clique em **"uploading an existing file"** ou **"Add file" > "Upload files"**
2. Arraste todos os arquivos desta pasta para a área de upload:
   - `index.html`
   - `README.md`
   - `LICENSE`
   - `.gitignore`
   - `CNAME` (opcional - apenas se tiver domínio próprio)
3. Adicione uma mensagem de commit: "Initial commit - Landing page Function Plus"
4. Clique em **"Commit changes"**

#### Opção B: Via Git (Terminal/CMD)

```bash
# 1. Navegue até a pasta do projeto
cd caminho/para/function-plus-site

# 2. Inicialize o repositório Git
git init

# 3. Adicione todos os arquivos
git add .

# 4. Faça o primeiro commit
git commit -m "Initial commit - Landing page Function Plus"

# 5. Adicione o repositório remoto (substitua SEU-USUARIO)
git remote add origin https://github.com/SEU-USUARIO/function-plus.git

# 6. Envie para o GitHub
git branch -M main
git push -u origin main
```

### 3️⃣ Ativar GitHub Pages

1. No repositório, vá em **Settings** (Configurações)
2. No menu lateral esquerdo, clique em **Pages**
3. Em **"Source"**, selecione:
   - **Branch**: `main`
   - **Folder**: `/ (root)`
4. Clique em **"Save"**
5. Aguarde alguns segundos e atualize a página
6. Você verá uma mensagem: **"Your site is published at https://seu-usuario.github.io/function-plus/"**

### 4️⃣ Acessar o Site

Seu site estará disponível em:
```
https://seu-usuario.github.io/function-plus/
```

⏱️ **Tempo de publicação**: 1-5 minutos após ativar GitHub Pages

## 🌐 Usar Domínio Personalizado (Opcional)

Se você tem um domínio próprio (ex: `functionplus.com.br`):

### No seu provedor de domínio (Registro.br, GoDaddy, etc):

1. Adicione um registro **A** apontando para os IPs do GitHub:
   ```
   185.199.108.153
   185.199.109.153
   185.199.110.153
   185.199.111.153
   ```

2. OU adicione um registro **CNAME** apontando para:
   ```
   seu-usuario.github.io
   ```

### No GitHub Pages:

1. Vá em **Settings** > **Pages**
2. Em **"Custom domain"**, digite seu domínio: `functionplus.com.br`
3. Clique em **"Save"**
4. ✅ Marque **"Enforce HTTPS"** (aguarde alguns minutos)

O arquivo `CNAME` será criado automaticamente.

## ✅ Verificar se Funcionou

Acesse seu site e verifique:
- ✅ Página carrega corretamente
- ✅ Animações funcionam
- ✅ Formulário de contato aparece
- ✅ Links de navegação funcionam
- ✅ Design responsivo (teste no celular)

## 🔄 Atualizar o Site

Sempre que quiser fazer mudanças:

### Via Interface Web:
1. Acesse o arquivo no GitHub
2. Clique no ícone de lápis (Edit)
3. Faça as alterações
4. Clique em **"Commit changes"**
5. Aguarde 1-2 minutos para atualizar

### Via Git:
```bash
# 1. Faça as alterações nos arquivos
# 2. Adicione as mudanças
git add .

# 3. Commit
git commit -m "Descrição das mudanças"

# 4. Envie para o GitHub
git push
```

## 🐛 Problemas Comuns

### Site não carrega (404)
- Verifique se o arquivo se chama `index.html` (não `function-plus-landing.html`)
- Confirme que GitHub Pages está ativado em Settings > Pages
- Aguarde 5 minutos após ativar

### Mudanças não aparecem
- Limpe o cache do navegador (Ctrl + F5)
- Aguarde 1-2 minutos após fazer commit
- Verifique se o commit foi enviado com sucesso

### Domínio personalizado não funciona
- Verifique as configurações DNS (pode levar até 48h)
- Confirme que o arquivo CNAME existe
- Aguarde propagação DNS

## 📞 Precisa de Ajuda?

- [Documentação Oficial GitHub Pages](https://docs.github.com/pages)
- [Comunidade GitHub](https://github.community)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/github-pages)

## 🎉 Pronto!

Seu site está no ar! Compartilhe o link:
```
https://seu-usuario.github.io/function-plus/
```

---

**Dica**: Adicione este link no seu GitHub profile README para destacar seu projeto!
