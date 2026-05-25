+ [ ] Replace `vim-pandoc` and `vim-pandoc-syntax`
    + [ ] Add [`render-latex.nvim`][rln]
    + [ ] Add [`render-markdown.nvim`][rmn]
+ [ ] Make change `nvim-cmp` sources depending on filetype.
    - This could probably be done using `nvim-cmp`'s options.
    - A hackier—though likely more reliable way—to do this would be to define
      different configs for `nvim-cmp` in `lazy`.
+ [ ] Consider replacing `lazy.nvim` with [`vim.pack`][vimpack]
    - Wait until `vim.pack` isn't considered experimental. I'd like for the
      config to be reasonably stable.
    - This might not be the way to go, since I already have a pretty good
      thing going with `lazy`. This feels like reinventing the wheel.
    - I have a feeling that `lazy.nvim` will stop being developed in a few
      years, similar to what happened with `packer`.



[rmn]: https://github.com/MeanderingProgrammer/render-markdown.nvim

[rln]: https://github.com/techwizrd/render-latex.nvim

[vimpack]: https://neovim.io/doc/user/pack/#_plugin-manager
