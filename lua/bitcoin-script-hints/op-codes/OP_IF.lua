local utils = require('bitcoin-script-hints.utils')
local make_error = utils.make_error
local to_number = utils.to_number

return function(state)
  if #state.main < 1 then
    return make_error("Need one item for IF", state)
  end
  local new_state = vim.deepcopy(state)
  local condition = table.remove(new_state.main)

  local num_condition = to_number(condition)

  -- Store the condition result in the state for ENDIF to use
  new_state.if_result = num_condition ~= 0
  return new_state
end
