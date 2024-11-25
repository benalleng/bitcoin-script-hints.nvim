<h1 align="center">
bitcoin-script-hints.nvim
</h1>

<p align="center">
A magical neovim plugin for Bitcoin Script 🪄
</p>

<p align="center">
<img src="https://github.com/user-attachments/assets/d97f21dd-2e50-4dba-b854-952969a3ad4d" width="600" alt="description">
</p>

## How does it work?
This plugin is intended to be used in Rust projects that use the `script!` macro (from [rust-bitcoin-script](https://github.com/Bitcoin-Wildlife-Sanctuary/rust-bitcoin-script)).

The first line after the `script!` invocation must be in one of these formats:
- `[X, Y]` (just the main stack)
- `[X, Y], [Z]` (the main stack and the alt-stack)

You can try it out with some examples from the [Bitcoin Wildlife Sanctuary](https://github.com/Bitcoin-Wildlife-Sanctuary).

## Example usage

```rust
use bitcoin_script::{define_pushable, script};

define_pushable!();

fn retrieve_hashed_leaf_item() -> ScriptBuf {
    script! {
        // [1, 2], [3] <-- Add this comment
        OP_DUP   // (you should now see [1, 2, 2], [3] here)
        OP_2     // (and [1, 2, 2, 2], [3] here)
        OP_ADD   // (etc...)
        OP_DEPTH
        OP_GREATERTHAN
        OP_IF
            OP_FROMALTSTACK
            OP_SWAP
        OP_ENDIF
    }
}
```

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
{
  "t4t5/bitcoin-script-hints.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("bitcoin-script-hints").setup()
  end
}
```

Using [vim-plug](https://github.com/junegunn/vim-plug)
```lua
Plug 't4t5/bitcoin-script-hints.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

" After plugin installation, add to your init.vim/init.lua:
lua require('bitcoin-script-hints').setup()
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):
```lua
use {
  't4t5/bitcoin-script-hints.nvim',
  requires = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('bitcoin-script-hints').setup()
  end
}
```

## Requirements
- Neovim >= 0.8.0
- nvim-treesitter

## Acknowledgments

This plugin was inspired by the [Script Wiz IDE](https://ide.scriptwiz.app), which does an excellent job at showing stack changes with real data.
