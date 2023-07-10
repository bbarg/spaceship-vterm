<h1 align="center">
  😍 + 🚀
  <br>spaceship vterm<br>
</h1>

<h4 align="center">
  A <a href="https://github.com/akermu/emacs-libvterm" target="_blank">vterm</a> section for Spaceship prompt
</h4>

<!-- <p align="center"> -->
<!--   <a href="https://github.com/spaceship-prompt/spaceship-section/releases"> -->
<!--     <img src="https://img.shields.io/github/v/release/spaceship-prompt/spaceship-section.svg?style=flat-square" -->
<!--       alt="GitHub Release" /> -->
<!--   </a> -->

<!--   <a href="https://github.com/spaceship-prompt/spaceship-section/actions"> -->
<!--     <img src="https://img.shields.io/github/actions/workflow/status/spaceship-prompt/spaceship-gradle/ci.yaml?style=flat-square" -->
<!--       alt="GitHub Workflow Status" /> -->
<!--   </a> -->
<!-- </p> -->

The [emacs-libvterm](https://github.com/akermu/emacs-libvterm) uses escape sequences to
communicate information from the emulated shell back to emacs, and does so by modifing the
shell's prompt. [spaceship](https://github.com/spaceship-prompt/spaceship-prompt)
overrides the prompt with `$(spaceship::prompt)`, so a custom section is required to
integrate `emacs-libvterm`.

This plugin uses the
[spaceship-section](https://github.com/spaceship-prompt/spaceship-section) template.

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

| Variable                   |  Default | Meaning                                          |
| :------------------------- | :------: | ------------------------------------------------ |
| `SPACESHIP_VTERM_ENABLE`   | `true`   | Enable the section                               |
| `SPACESHIP_VTERM_SHOW`     | `false`  | Whether to show the string `vterm` in the prompt |
| `SPACESHIP_VTERM_ASYNC`    | `true`   | Evaluate asynchronously                          |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional
commits](https://www.conventionalcommits.org/), since this project adheres to
[semver](https://semver.org/) and is automatically released via
[semantic-release](https://github.com/semantic-release/semantic-release).

## Future Work

- Support [message passing](https://github.com/akermu/emacs-libvterm#message-passing)
- Functional tests

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
