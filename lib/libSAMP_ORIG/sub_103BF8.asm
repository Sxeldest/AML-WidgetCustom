; =========================================================
; Game Engine Function: sub_103BF8
; Address            : 0x103BF8 - 0x103CD2
; =========================================================

103BF8:  PUSH            {R4-R7,LR}
103BFA:  ADD             R7, SP, #0xC
103BFC:  PUSH.W          {R5-R11}
103C00:  MOV             R10, R0
103C02:  LDR             R0, =(__stack_chk_guard_ptr - 0x103C0E)
103C04:  ADD.W           R8, R10, #0xC
103C08:  MOV             R4, R1
103C0A:  ADD             R0, PC; __stack_chk_guard_ptr
103C0C:  MOV             R1, SP
103C0E:  LDR             R0, [R0]; __stack_chk_guard
103C10:  LDR             R0, [R0]
103C12:  STR             R0, [SP,#0x28+var_20]
103C14:  LDR             R0, =(asc_4DB85 - 0x103C1A); ">" ...
103C16:  ADD             R0, PC; ">"
103C18:  STR             R0, [SP,#0x28+var_28]
103C1A:  ADD.W           R9, R0, #1
103C1E:  STR.W           R9, [SP,#0x28+var_24]
103C22:  MOV             R11, R0
103C24:  MOV             R0, R8
103C26:  BL              sub_103CFC
103C2A:  LDR             R5, =(asc_4F675 - 0x103C30); "(" ...
103C2C:  ADD             R5, PC; "("
103C2E:  CBZ             R0, loc_103C3A
103C30:  ADDS            R2, R5, #1
103C32:  MOV             R0, R4
103C34:  MOV             R1, R5
103C36:  BL              sub_FFB40
103C3A:  LDR             R6, =(sub_FFB40+1 - 0x103C46)
103C3C:  ADDS            R2, R5, #1
103C3E:  MOV             R0, R4
103C40:  MOV             R1, R5
103C42:  ADD             R6, PC; sub_FFB40
103C44:  BLX             R6; sub_FFB40
103C46:  LDR.W           R0, [R10,#8]
103C4A:  MOV             R1, R4
103C4C:  BL              sub_FE074
103C50:  LDR             R1, =(asc_50869 - 0x103C58); ") " ...
103C52:  MOV             R0, R4
103C54:  ADD             R1, PC; ") "
103C56:  ADDS            R2, R1, #2
103C58:  BLX             R6; sub_FFB40
103C5A:  LDRD.W          R1, R2, [R10,#0xC]
103C5E:  MOV             R0, R4
103C60:  BLX             R6; sub_FFB40
103C62:  LDR             R1, =(asc_4D9FF - 0x103C6A); " (" ...
103C64:  MOV             R0, R4
103C66:  ADD             R1, PC; " ("
103C68:  ADDS            R2, R1, #2
103C6A:  BLX             R6; sub_FFB40
103C6C:  LDR.W           R0, [R10,#0x14]
103C70:  MOV             R1, R4
103C72:  BL              sub_FE074
103C76:  LDR             R5, =(asc_50037 - 0x103C7E); ")" ...
103C78:  MOV             R0, R4
103C7A:  ADD             R5, PC; ")"
103C7C:  ADD.W           R10, R5, #1
103C80:  MOV             R1, R5
103C82:  MOV             R2, R10
103C84:  BLX             R6; sub_FFB40
103C86:  MOV             R1, SP
103C88:  MOV             R0, R8
103C8A:  STRD.W          R11, R9, [SP,#0x28+var_28]
103C8E:  BL              sub_103CFC
103C92:  CBZ             R0, loc_103CBA
103C94:  LDR             R0, [SP,#0x28+var_20]
103C96:  LDR             R1, =(__stack_chk_guard_ptr - 0x103C9C)
103C98:  ADD             R1, PC; __stack_chk_guard_ptr
103C9A:  LDR             R1, [R1]; __stack_chk_guard
103C9C:  LDR             R1, [R1]
103C9E:  CMP             R1, R0
103CA0:  ITTTT EQ
103CA2:  MOVEQ           R0, R4
103CA4:  MOVEQ           R1, R5
103CA6:  MOVEQ           R2, R10
103CA8:  ADDEQ           SP, SP, #0xC
103CAA:  ITTT EQ
103CAC:  POPEQ.W         {R8-R11}
103CB0:  POPEQ.W         {R4-R7,LR}
103CB4:  BEQ.W           sub_FFB40
103CB8:  B               loc_103CCE
103CBA:  LDR             R0, [SP,#0x28+var_20]
103CBC:  LDR             R1, =(__stack_chk_guard_ptr - 0x103CC2)
103CBE:  ADD             R1, PC; __stack_chk_guard_ptr
103CC0:  LDR             R1, [R1]; __stack_chk_guard
103CC2:  LDR             R1, [R1]
103CC4:  CMP             R1, R0
103CC6:  ITT EQ
103CC8:  POPEQ.W         {R1-R3,R8-R11}
103CCC:  POPEQ           {R4-R7,PC}
103CCE:  BLX             __stack_chk_fail
