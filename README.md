# Setting up ZSH and OH MY ZSH

## Instalando ZSH

Para instalar o ZSH no seu sistema operacional você pode rodar o comando a seguir, que usará o utilitário `apt-get` para realizar o processo de instalação.

```bash
sudo apt-get install -y zsh
```

Após realizar a instalação é possível definir o zsh como seu terminal padrão com o seguinte comando:

```bash
chsh -s $(which zsh)
```

### Uma breve explicação sobre o comando acima:

- O comando `chsh` é usado para mudar o terminal padrão que será utilizado pelo usuário.
- A flag `-s` é usada para especificar o novo terminal padrão.
- O comando `$(which zsh)` procura o caminho completo do arquivo executável do zsh e o passa como um argumento para a flag anterior.

## Instalado OH MY ZSH

Após a instalação do terminal é recomendado usar algum framework zsh. Neste caso iremos utilizar o OH MY ZSH. Para realizar a sua instalação vamos rodar o seguinte comando:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Instalando o tema Spaceship

### Instalação da fonte

Para instalar esse tema nós vamos precisar da fonte Fira Code. Para conseguir ela vá para o site de releases oficiais no [Github](https://github.com/tonsky/FiraCode/releases) e realize o download da última versão. Após isso descompacte seu o arquivo baixado e adicione a fonte ao seu sistema operacional.

Para realizar a instalação de uma fonte existem alguns caminhos dependendo se você deseja que esta fonte esteja disponível para todos os usuário ou não. Neste caso vamos instalar ela para todos os usuários, para isso nós vamos mover a pasta TFF para o diretório `/usr/share/fonts/.`

Após instalar a fonte no seu sistema operacional chegou a hora de instalar o tema do Spaceship, para isso entre no seu diretório temas do OH MY ZSH com o seguinte comando:

```bash
cd ~/.oh-my-zsh/themes
```

Após entrar do diretório vamos copiar o repositório do Spaceship nessa pasta, para isso rode o comando:

```bash
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
```

Posteriormente vamos criar um link simbólico do arquivo de tema do Spaceship na pasta de temas do OH MY ZSH.

```bash
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Agora dentro do arquivo `~/.zshrc` vamos alterar a variável ZSH_THEME.

Abra o arquivo com:

```bash
code ~/.zshrc
```

Altere o tema para:

```bash
ZSH_THEME="spaceship"
```

### Instalado o tema Dracula
