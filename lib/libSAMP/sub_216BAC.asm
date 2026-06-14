; =========================================================
; Game Engine Function: sub_216BAC
; Address            : 0x216BAC - 0x216CD2
; =========================================================

216BAC:  PUSH            {R4-R7,LR}
216BAE:  ADD             R7, SP, #0xC
216BB0:  PUSH.W          {R8}
216BB4:  SUB             SP, SP, #0x10
216BB6:  MOV             R4, R0
216BB8:  LDR             R0, =(__stack_chk_guard_ptr - 0x216BBE)
216BBA:  ADD             R0, PC; __stack_chk_guard_ptr
216BBC:  LDR             R0, [R0]; __stack_chk_guard
216BBE:  LDR             R0, [R0]
216BC0:  STR             R0, [SP,#0x20+var_14]
216BC2:  LDRD.W          R0, R1, [R4]
216BC6:  SUBS            R2, R1, R0
216BC8:  BEQ             loc_216BE4
216BCA:  LDRB            R3, [R0]
216BCC:  CMP             R3, #0x4A ; 'J'
216BCE:  BEQ             loc_216C06
216BD0:  CMP             R3, #0x4C ; 'L'
216BD2:  BEQ             loc_216C3C
216BD4:  CMP             R3, #0x58 ; 'X'
216BD6:  BNE             loc_216BE4
216BD8:  ADDS            R0, #1
216BDA:  STR             R0, [R4]
216BDC:  MOV             R0, R4
216BDE:  BL              sub_217B38
216BE2:  B               loc_216C50
216BE4:  LDR             R0, [SP,#0x20+var_14]
216BE6:  LDR             R1, =(__stack_chk_guard_ptr - 0x216BEC)
216BE8:  ADD             R1, PC; __stack_chk_guard_ptr
216BEA:  LDR             R1, [R1]; __stack_chk_guard
216BEC:  LDR             R1, [R1]
216BEE:  CMP             R1, R0
216BF0:  ITTTT EQ
216BF2:  MOVEQ           R0, R4
216BF4:  ADDEQ           SP, SP, #0x10
216BF6:  POPEQ.W         {R8}
216BFA:  POPEQ.W         {R4-R7,LR}
216BFE:  IT EQ
216C00:  BEQ.W           sub_215C48
216C04:  B               loc_216C7E
216C06:  MOV             R6, R4
216C08:  LDR             R3, [R4,#0xC]
216C0A:  LDR.W           R2, [R6,#8]!
216C0E:  ADDS            R0, #1
216C10:  STR             R0, [R4]
216C12:  ADD             R5, SP, #0x20+var_1C
216C14:  SUBS            R2, R3, R2
216C16:  MOV.W           R8, R2,ASR#2
216C1A:  CMP             R0, R1
216C1C:  BEQ             loc_216C24
216C1E:  LDRB            R1, [R0]
216C20:  CMP             R1, #0x45 ; 'E'
216C22:  BEQ             loc_216CA4
216C24:  MOV             R0, R4
216C26:  BL              sub_216BAC
216C2A:  STR             R0, [SP,#0x20+var_1C]
216C2C:  CBZ             R0, loc_216C66
216C2E:  MOV             R0, R6
216C30:  MOV             R1, R5
216C32:  BL              sub_216CEC
216C36:  LDRD.W          R0, R1, [R4]
216C3A:  B               loc_216C1A
216C3C:  CMP             R2, #2
216C3E:  BCC             loc_216C82
216C40:  LDRB            R1, [R0,#1]
216C42:  CMP             R1, #0x5A ; 'Z'
216C44:  BNE             loc_216C82
216C46:  ADDS            R0, #2
216C48:  STR             R0, [R4]
216C4A:  MOV             R0, R4
216C4C:  BL              sub_215654
216C50:  CBZ             R0, loc_216C66
216C52:  LDRD.W          R1, R2, [R4]
216C56:  CMP             R1, R2
216C58:  BEQ             loc_216C66
216C5A:  LDRB            R2, [R1]
216C5C:  CMP             R2, #0x45 ; 'E'
216C5E:  BNE             loc_216C66
216C60:  ADDS            R1, #1
216C62:  STR             R1, [R4]
216C64:  B               loc_216C68
216C66:  MOVS            R0, #0
216C68:  LDR             R1, [SP,#0x20+var_14]
216C6A:  LDR             R2, =(__stack_chk_guard_ptr - 0x216C70)
216C6C:  ADD             R2, PC; __stack_chk_guard_ptr
216C6E:  LDR             R2, [R2]; __stack_chk_guard
216C70:  LDR             R2, [R2]
216C72:  CMP             R2, R1
216C74:  ITTT EQ
216C76:  ADDEQ           SP, SP, #0x10
216C78:  POPEQ.W         {R8}
216C7C:  POPEQ           {R4-R7,PC}
216C7E:  BLX             __stack_chk_fail
216C82:  LDR             R0, [SP,#0x20+var_14]
216C84:  LDR             R1, =(__stack_chk_guard_ptr - 0x216C8A)
216C86:  ADD             R1, PC; __stack_chk_guard_ptr
216C88:  LDR             R1, [R1]; __stack_chk_guard
216C8A:  LDR             R1, [R1]
216C8C:  CMP             R1, R0
216C8E:  ITTTT EQ
216C90:  MOVEQ           R0, R4
216C92:  ADDEQ           SP, SP, #0x10
216C94:  POPEQ.W         {R8}
216C98:  POPEQ.W         {R4-R7,LR}
216C9C:  IT EQ
216C9E:  BEQ.W           sub_2193A0
216CA2:  B               loc_216C7E
216CA4:  ADDS            R0, #1
216CA6:  STR             R0, [R4]
216CA8:  ADD             R0, SP, #0x20+var_1C
216CAA:  MOV             R1, R4
216CAC:  MOV             R2, R8
216CAE:  BL              sub_216D60
216CB2:  ADD.W           R0, R4, #0x198
216CB6:  MOVS            R1, #0x10
216CB8:  BL              sub_216EF0
216CBC:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle20TemplateArgumentPackE - 0x216CC4); `vtable for'`anonymous namespace'::itanium_demangle::TemplateArgumentPack ...
216CBE:  LDR             R1, =0x1010121
216CC0:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::TemplateArgumentPack
216CC2:  LDRD.W          R3, R4, [SP,#0x20+var_1C]
216CC6:  ADDS            R2, #8
216CC8:  STRD.W          R3, R4, [R0,#8]
216CCC:  STRD.W          R2, R1, [R0]
216CD0:  B               loc_216C68
