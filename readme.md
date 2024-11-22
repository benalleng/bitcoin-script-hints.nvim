# bitcoin-script-hints.nvim

Inline hints for the `script!` macro to see how the stack evolves in Bitcoin Script.

## Requirements
- Neovim >= 0.8.0
- nvim-treesitter

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

## Example usage

```rust
fn retrieve_hashed_leaf_item() -> ScriptBuf {
    script! {
        // [1, 2], [3]
        OP_DUP // you should now see [1, 2, 2], [3] here
        OP_2 // you should see [1, 2, 2, 2], [3] here
        OP_ADD // etc...
        OP_DEPTH
        OP_GREATERTHAN
        OP_IF
            OP_FROMALTSTACK
            OP_SWAP
        OP_ENDIF
    }
}
```
