; =========================================================
; Game Engine Function: sub_9BD30
; Address            : 0x9BD30 - 0x9BE24
; =========================================================

9BD30:  PUSH            {R4-R7,LR}
9BD32:  ADD             R7, SP, #0xC
9BD34:  PUSH.W          {R8}
9BD38:  SUB             SP, SP, #0x30
9BD3A:  MOV             R4, R0
9BD3C:  LDR             R0, =(__stack_chk_guard_ptr - 0x9BD48)
9BD3E:  VMOV.I32        Q8, #0
9BD42:  MOV             R6, SP
9BD44:  ADD             R0, PC; __stack_chk_guard_ptr
9BD46:  MOV             R1, R6
9BD48:  MOVS            R2, #0
9BD4A:  LDR             R0, [R0]; __stack_chk_guard
9BD4C:  LDR             R0, [R0]
9BD4E:  STR             R0, [SP,#0x40+var_14]
9BD50:  VST1.64         {D16-D17}, [R1]!
9BD54:  LDR             R0, [R4,#0x40]
9BD56:  VST1.64         {D16-D17}, [R1]!
9BD5A:  STR             R2, [R1]
9BD5C:  STR             R2, [SP,#0x40+var_1C]
9BD5E:  CBZ             R0, loc_9BD6A
9BD60:  LDR             R1, [R4,#0x48]
9BD62:  ADD.W           R0, R1, R0,LSL#4
9BD66:  SUBS            R0, #0x10
9BD68:  B               loc_9BD6E
9BD6A:  LDR             R0, [R4,#0x28]
9BD6C:  ADDS            R0, #0x14
9BD6E:  VLD1.32         {D16-D17}, [R0]
9BD72:  ADDS            R1, R6, #4
9BD74:  LDR             R0, [R4,#0x4C]
9BD76:  VST1.32         {D16-D17}, [R1]
9BD7A:  CBZ             R0, loc_9BD88
9BD7C:  LDR             R1, [R4,#0x54]
9BD7E:  ADD.W           R0, R1, R0,LSL#2
9BD82:  LDR.W           R1, [R0,#-4]
9BD86:  B               loc_9BD8A
9BD88:  MOVS            R1, #0
9BD8A:  LDRD.W          R0, R2, [R4]
9BD8E:  LDR             R5, [R4,#0x30]
9BD90:  LDR             R3, [R4,#0xC]
9BD92:  CMP             R0, R2
9BD94:  STR             R3, [SP,#0x40+var_24]
9BD96:  STRD.W          R1, R5, [SP,#0x40+var_2C]
9BD9A:  BNE             loc_9BDE2
9BD9C:  CMP             R0, #0
9BD9E:  ADD.W           R5, R0, #1
9BDA2:  ITTE NE
9BDA4:  ADDNE.W         R1, R0, R0,LSR#31
9BDA8:  ADDNE.W         R1, R0, R1,ASR#1
9BDAC:  MOVEQ           R1, #8
9BDAE:  CMP             R1, R5
9BDB0:  IT GT
9BDB2:  MOVGT           R5, R1
9BDB4:  CMP             R0, R5
9BDB6:  BGE             loc_9BDE2
9BDB8:  ADD.W           R0, R5, R5,LSL#2
9BDBC:  LSLS            R0, R0, #3
9BDBE:  BL              sub_885E4
9BDC2:  LDR             R1, [R4,#8]; src
9BDC4:  MOV             R8, R0
9BDC6:  CBZ             R1, loc_9BDDC
9BDC8:  LDR             R0, [R4]
9BDCA:  ADD.W           R0, R0, R0,LSL#2
9BDCE:  LSLS            R2, R0, #3; n
9BDD0:  MOV             R0, R8; dest
9BDD2:  BLX             j_memcpy
9BDD6:  LDR             R0, [R4,#8]
9BDD8:  BL              sub_88614
9BDDC:  LDR             R0, [R4]
9BDDE:  STRD.W          R5, R8, [R4,#4]
9BDE2:  LDR             R1, [R4,#8]
9BDE4:  ADD.W           R0, R0, R0,LSL#2
9BDE8:  VLD1.8          {D16-D17}, [R6]!
9BDEC:  ADD.W           R0, R1, R0,LSL#3
9BDF0:  VLD1.8          {D18-D19}, [R6]!
9BDF4:  VST1.8          {D16-D17}, [R0]!
9BDF8:  VLDR            D20, [R6]
9BDFC:  VST1.8          {D18-D19}, [R0]!
9BE00:  VST1.8          {D20}, [R0]
9BE04:  LDR             R0, [R4]
9BE06:  ADDS            R0, #1
9BE08:  STR             R0, [R4]
9BE0A:  LDR             R0, [SP,#0x40+var_14]
9BE0C:  LDR             R1, =(__stack_chk_guard_ptr - 0x9BE12)
9BE0E:  ADD             R1, PC; __stack_chk_guard_ptr
9BE10:  LDR             R1, [R1]; __stack_chk_guard
9BE12:  LDR             R1, [R1]
9BE14:  CMP             R1, R0
9BE16:  ITTT EQ
9BE18:  ADDEQ           SP, SP, #0x30 ; '0'
9BE1A:  POPEQ.W         {R8}
9BE1E:  POPEQ           {R4-R7,PC}
9BE20:  BLX             __stack_chk_fail
