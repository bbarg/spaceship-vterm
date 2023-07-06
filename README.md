<h1 align="center">
  😍 + 🚀
  <br>spaceship vterm<br>
</h1>

<h4 align="center">
  A <a href="https://template.com" target="_blank">vterm</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/spaceship-prompt/spaceship-section/releases">
    <img src="https://img.shields.io/github/v/release/spaceship-prompt/spaceship-section.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/spaceship-prompt/spaceship-section/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/spaceship-prompt/spaceship-gradle/ci.yaml?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>

  <a href="https://twitter.com/SpaceshipPrompt">
    <img src="https://img.shields.io/badge/twitter-%40SpaceshipPrompt-00ACEE.svg?style=flat-square"
      alt="Spaceship Twitter" />
  </a>

  <a href="https://discord.gg/NTQWz8Dyt9">
    <img
      src="https://img.shields.io/discord/859409950999707668?label=discord&logoColor=white&style=flat-square"
      alt="Chat on Discord"
    />
  </a>
</p>

Current vterm version, through vterm (`😍`).

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/bbarg/spaceship-vterm.git $ZSH_CUSTOM/plugins/spaceship-vterm
```

Include `spaceship-vterm` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-vterm)
```

### [zplug]

```zsh
zplug "bbarg/spaceship-vterm"
```

### [antigen]

```zsh
antigen bundle "bbarg/spaceship-vterm"
```

### [antibody]

```zsh
antibody bundle "bbarg/spaceship-vterm"
```

### [zinit]

```zsh
zinit light "bbarg/spaceship-vterm"
```

### [zgen]

```zsh
zgen load "bbarg/spaceship-vterm"
```

### [sheldon]

```toml
[plugins.spaceship-vterm]
github = "bbarg/spaceship-vterm"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-vterm`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/bbarg/spaceship-vterm.git "$HOME/.zsh/spaceship-vterm"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-vterm/spaceship-vterm.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include vterm in the prompt:

```zsh
spaceship add vterm
```

## Options

This vterm is shown only in directories within a vterm context.

| Variable                   |              Default               | Meaning                              |
| :------------------------- | :--------------------------------: | ------------------------------------ |
| `SPACESHIP_VTERM_SHOW`     |               `true`               | Show current vterm                 |
| `SPACESHIP_VTERM_PREFIX`   | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Prefix before vterm                |
| `SPACESHIP_VTERM_SUFFIX`   | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after vterm                 |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional
commits](https://www.conventionalcommits.org/), since this project adheres to
[semver](https://semver.org/) and is automatically released via
[semantic-release](https://github.com/semantic-release/semantic-release).

## License

MIT © [Ben Barg](https://ben.community)

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
