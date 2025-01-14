-- The opcodes follow the same order as displayed on:
-- https://en.bitcoin.it/wiki/Script

-- Constants:
local OP_NUMBER = require('bitcoin-script-hints.op-codes.OP_NUMBER')

-- Flow control:
local OP_NOP = require('bitcoin-script-hints.op-codes.OP_NOP')
local OP_IF = require('bitcoin-script-hints.op-codes.OP_IF')
local OP_NOTIF = require('bitcoin-script-hints.op-codes.OP_NOTIF')
local OP_ELSE = require('bitcoin-script-hints.op-codes.OP_ELSE')
local OP_ENDIF = require('bitcoin-script-hints.op-codes.OP_ENDIF')
local OP_VERIFY = require('bitcoin-script-hints.op-codes.OP_VERIFY')

-- Stack:
local OP_TOALTSTACK = require('bitcoin-script-hints.op-codes.OP_TOALTSTACK')
local OP_FROMALTSTACK = require('bitcoin-script-hints.op-codes.OP_FROMALTSTACK')
local OP_IFDUP = require('bitcoin-script-hints.op-codes.OP_IFDUP')
local OP_DEPTH = require('bitcoin-script-hints.op-codes.OP_DEPTH')
local OP_DROP = require('bitcoin-script-hints.op-codes.OP_DROP')
local OP_DUP = require('bitcoin-script-hints.op-codes.OP_DUP')
local OP_NIP = require('bitcoin-script-hints.op-codes.OP_NIP')
local OP_OVER = require('bitcoin-script-hints.op-codes.OP_OVER')
local OP_PICK = require('bitcoin-script-hints.op-codes.OP_PICK')
local OP_ROLL = require('bitcoin-script-hints.op-codes.OP_ROLL')
local OP_ROT = require('bitcoin-script-hints.op-codes.OP_ROT')
local OP_SWAP = require('bitcoin-script-hints.op-codes.OP_SWAP')
local OP_TUCK = require('bitcoin-script-hints.op-codes.OP_TUCK')
local OP_2DROP = require('bitcoin-script-hints.op-codes.OP_2DROP')
local OP_2DUP = require('bitcoin-script-hints.op-codes.OP_2DUP')
local OP_3DUP = require('bitcoin-script-hints.op-codes.OP_3DUP')
local OP_2OVER = require('bitcoin-script-hints.op-codes.OP_2OVER')
local OP_2ROT = require('bitcoin-script-hints.op-codes.OP_2ROT')
local OP_2SWAP = require('bitcoin-script-hints.op-codes.OP_2SWAP')

-- Splice:
local OP_CAT = require('bitcoin-script-hints.op-codes.OP_CAT')
local OP_SIZE = require('bitcoin-script-hints.op-codes.OP_SIZE')

-- Bitwise logic:
local OP_EQUAL = require('bitcoin-script-hints.op-codes.OP_EQUAL')
local OP_EQUALVERIFY = require('bitcoin-script-hints.op-codes.OP_EQUALVERIFY')

-- Arithmetic:
local OP_1ADD = require('bitcoin-script-hints.op-codes.OP_1ADD')
local OP_1SUB = require('bitcoin-script-hints.op-codes.OP_1SUB')
local OP_NEGATE = require('bitcoin-script-hints.op-codes.OP_NEGATE')
local OP_ABS = require('bitcoin-script-hints.op-codes.OP_ABS')
local OP_NOT = require('bitcoin-script-hints.op-codes.OP_NOT')
local OP_0NOTEQUAL = require('bitcoin-script-hints.op-codes.OP_0NOTEQUAL')
local OP_ADD = require('bitcoin-script-hints.op-codes.OP_ADD')
local OP_SUB = require('bitcoin-script-hints.op-codes.OP_SUB')
local OP_BOOLAND = require('bitcoin-script-hints.op-codes.OP_BOOLAND')
local OP_BOOLOR = require('bitcoin-script-hints.op-codes.OP_BOOLOR')
local OP_NUMEQUAL = require('bitcoin-script-hints.op-codes.OP_NUMEQUAL')
local OP_NUMEQUALVERIFY = require('bitcoin-script-hints.op-codes.OP_NUMEQUALVERIFY')
local OP_NUMNOTEQUAL = require('bitcoin-script-hints.op-codes.OP_NUMNOTEQUAL')
local OP_LESSTHAN = require('bitcoin-script-hints.op-codes.OP_LESSTHAN')
local OP_GREATERTHAN = require('bitcoin-script-hints.op-codes.OP_GREATERTHAN')
local OP_LESSTHANOREQUAL = require('bitcoin-script-hints.op-codes.OP_LESSTHANOREQUAL')
local OP_GREATERTHANOREQUAL = require('bitcoin-script-hints.op-codes.OP_GREATERTHANOREQUAL')
local OP_MIN = require('bitcoin-script-hints.op-codes.OP_MIN')
local OP_MAX = require('bitcoin-script-hints.op-codes.OP_MAX')
local OP_WITHIN = require('bitcoin-script-hints.op-codes.OP_WITHIN')

-- Crypto:
local OP_HASH = require('bitcoin-script-hints.op-codes.OP_HASH')
local OP_CHECKSIG = require('bitcoin-script-hints.op-codes.OP_CHECKSIG')
local OP_CHECKSIGVERIFY = require('bitcoin-script-hints.op-codes.OP_CHECKSIGVERIFY')
local OP_CHECKMULTISIG = require('bitcoin-script-hints.op-codes.OP_CHECKMULTISIG')
local OP_CHECKMULTISIGVERIFY = require('bitcoin-script-hints.op-codes.OP_CHECKMULTISIGVERIFY')
local OP_CHECKSIGADD = require('bitcoin-script-hints.op-codes.OP_CHECKSIGADD')

return {
  -- Constants:
  OP_0 = OP_NUMBER(0),
  OP_FALSE = OP_NUMBER(0),
  OP_1 = OP_NUMBER(1),
  OP_PUSHDATA1 = OP_NOP,
  OP_PUSHDATA2 = OP_NOP,
  OP_PUSHDATA4 = OP_NOP,
  OP_1NEGATE = OP_NUMBER(-1),
  OP_TRUE = OP_NUMBER(1),
  OP_2 = OP_NUMBER(2),
  OP_3 = OP_NUMBER(3),
  OP_4 = OP_NUMBER(4),
  OP_5 = OP_NUMBER(5),
  OP_6 = OP_NUMBER(6),
  OP_7 = OP_NUMBER(7),
  OP_8 = OP_NUMBER(8),
  OP_9 = OP_NUMBER(9),
  OP_10 = OP_NUMBER(10),
  OP_11 = OP_NUMBER(11),
  OP_12 = OP_NUMBER(12),
  OP_13 = OP_NUMBER(13),
  OP_14 = OP_NUMBER(14),
  OP_15 = OP_NUMBER(15),
  OP_16 = OP_NUMBER(16),

  -- Flow control:
  OP_NOP = OP_NOP,
  OP_IF = OP_IF,
  OP_NOTIF = OP_NOTIF,
  OP_ELSE = OP_ELSE,
  OP_ENDIF = OP_ENDIF,
  OP_VERIFY = OP_VERIFY,
  OP_RETURN = OP_NOP,

  -- Stack:
  OP_TOALTSTACK = OP_TOALTSTACK,
  OP_FROMALTSTACK = OP_FROMALTSTACK,
  OP_IFDUP = OP_IFDUP,
  OP_DEPTH = OP_DEPTH,
  OP_DROP = OP_DROP,
  OP_DUP = OP_DUP,
  OP_NIP = OP_NIP,
  OP_OVER = OP_OVER,
  OP_PICK = OP_PICK,
  OP_ROLL = OP_ROLL,
  OP_ROT = OP_ROT,
  OP_SWAP = OP_SWAP,
  OP_TUCK = OP_TUCK,
  OP_2DROP = OP_2DROP,
  OP_2DUP = OP_2DUP,
  OP_3DUP = OP_3DUP,
  OP_2OVER = OP_2OVER,
  OP_2ROT = OP_2ROT,
  OP_2SWAP = OP_2SWAP,

  -- Splice:
  OP_CAT = OP_CAT,
  OP_SIZE = OP_SIZE,

  -- Bitwise logic:
  OP_EQUAL = OP_EQUAL,
  OP_EQUALVERIFY = OP_EQUALVERIFY,

  -- Arithmetic:
  OP_1ADD = OP_1ADD,
  OP_1SUB = OP_1SUB,
  OP_NEGATE = OP_NEGATE,
  OP_ABS = OP_ABS,
  OP_NOT = OP_NOT,
  OP_0NOTEQUAL = OP_0NOTEQUAL,
  OP_ADD = OP_ADD,
  OP_SUB = OP_SUB,
  OP_BOOLAND = OP_BOOLAND,
  OP_BOOLOR = OP_BOOLOR,
  OP_NUMEQUAL = OP_NUMEQUAL,
  OP_NUMEQUALVERIFY = OP_NUMEQUALVERIFY,
  OP_NUMNOTEQUAL = OP_NUMNOTEQUAL,
  OP_LESSTHAN = OP_LESSTHAN,
  OP_GREATERTHAN = OP_GREATERTHAN,
  OP_LESSTHANOREQUAL = OP_LESSTHANOREQUAL,
  OP_GREATERTHANOREQUAL = OP_GREATERTHANOREQUAL,
  OP_MIN = OP_MIN,
  OP_MAX = OP_MAX,
  OP_WITHIN = OP_WITHIN,

  -- Crypto:
  OP_RIPEMD160 = OP_HASH,
  OP_SHA1 = OP_HASH,
  OP_SHA256 = OP_HASH,
  OP_HASH160 = OP_HASH,
  OP_HASH256 = OP_HASH,
  OP_CODESEPARATOR = OP_NOP,
  OP_CHECKSIG = OP_CHECKSIG,
  OP_CHECKSIGVERIFY = OP_CHECKSIGVERIFY,
  OP_CHECKMULTISIG = OP_CHECKMULTISIG,
  OP_CHECKMULTISIGVERIFY = OP_CHECKMULTISIGVERIFY,
  OP_CHECKSIGADD = OP_CHECKSIGADD,

  -- Locktime:
  OP_CHECKLOCKTIMEVERIFY = OP_NOP,
  OP_CHECKSEQUENCEVERIFY = OP_NOP,
}
