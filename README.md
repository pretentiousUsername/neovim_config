# My neovim config
I've decided to rewrite my neovim configuration from scratch. To be honest,
my [old configuration][old] was not very good—it was a tangled web of outdated
code and plugins. I tried organizing it, and it somehow made less sense. This is
a modernized configuration, using `lazy` instead of `packer`, and with much
neater organization. Because of the way that `lazy` works, I don't really need
to do much in the way of configuring outside of the `lua/packages` directory.

It seems as though I will never be a productive member of society
ever again, as I have fully embraced NixOS and Neovim (well, I haven't started
with `home-manager` or flakes yet, so by some metrics I'm not a *true* NixOS
user).

[old]: https://github.com/pretentiousUsername/neovimConfigs
