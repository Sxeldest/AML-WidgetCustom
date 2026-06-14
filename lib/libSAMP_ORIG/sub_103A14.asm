; =========================================================
; Game Engine Function: sub_103A14
; Address            : 0x103A14 - 0x103AEA
; =========================================================

103A14:  PUSH            {R0-R5,R7,LR}
103A16:  ADD             R7, SP, #0x18
103A18:  MOV             R5, R0
103A1A:  LDR             R0, =(__stack_chk_guard_ptr - 0x103A22)
103A1C:  MOV             R4, R1
103A1E:  ADD             R0, PC; __stack_chk_guard_ptr
103A20:  LDR             R0, [R0]; __stack_chk_guard
103A22:  LDR             R0, [R0]
103A24:  STR             R0, [SP,#0x18+var_C]
103A26:  MOV             R0, R1
103A28:  STRD.W          R1, R5, [SP,#0x18+var_14]
103A2C:  MOVS            R1, #0x28 ; '('
103A2E:  BL              sub_FE09A
103A32:  LDRB            R0, [R5,#0x18]
103A34:  CBZ             R0, loc_103A80
103A36:  LDR             R0, [R5,#0xC]
103A38:  CBZ             R0, loc_103A5A
103A3A:  MOV             R1, R4
103A3C:  BL              sub_FE074
103A40:  MOV             R0, R4
103A42:  MOVS            R1, #0x20 ; ' '
103A44:  BL              sub_FE09A
103A48:  LDRD.W          R1, R2, [R5,#0x10]
103A4C:  MOV             R0, R4
103A4E:  BL              sub_FFB40
103A52:  MOV             R0, R4
103A54:  MOVS            R1, #0x20 ; ' '
103A56:  BL              sub_FE09A
103A5A:  LDR             R1, =(asc_4FF78 - 0x103A62); "... " ...
103A5C:  MOV             R0, R4
103A5E:  ADD             R1, PC; "... "
103A60:  ADDS            R2, R1, #4
103A62:  BL              sub_FFB40
103A66:  LDRD.W          R1, R2, [R5,#0x10]
103A6A:  MOV             R0, R4
103A6C:  BL              sub_FFB40
103A70:  MOV             R0, R4
103A72:  MOVS            R1, #0x20 ; ' '
103A74:  BL              sub_FE09A
103A78:  ADD             R0, SP, #0x18+var_14
103A7A:  BL              sub_103B00
103A7E:  B               loc_103ACA
103A80:  ADD             R0, SP, #0x18+var_14
103A82:  BL              sub_103B00
103A86:  MOV             R0, R4
103A88:  MOVS            R1, #0x20 ; ' '
103A8A:  BL              sub_FE09A
103A8E:  LDRD.W          R1, R2, [R5,#0x10]
103A92:  MOV             R0, R4
103A94:  BL              sub_FFB40
103A98:  LDR             R1, =(asc_4E02D - 0x103AA0); " ..." ...
103A9A:  MOV             R0, R4
103A9C:  ADD             R1, PC; " ..."
103A9E:  ADDS            R2, R1, #4
103AA0:  BL              sub_FFB40
103AA4:  LDR             R0, [R5,#0xC]
103AA6:  CBZ             R0, loc_103ACA
103AA8:  MOV             R0, R4
103AAA:  MOVS            R1, #0x20 ; ' '
103AAC:  BL              sub_FE09A
103AB0:  LDRD.W          R1, R2, [R5,#0x10]
103AB4:  MOV             R0, R4
103AB6:  BL              sub_FFB40
103ABA:  MOV             R0, R4
103ABC:  MOVS            R1, #0x20 ; ' '
103ABE:  BL              sub_FE09A
103AC2:  LDR             R0, [R5,#0xC]
103AC4:  MOV             R1, R4
103AC6:  BL              sub_FE074
103ACA:  LDR             R0, [SP,#0x18+var_C]
103ACC:  LDR             R1, =(__stack_chk_guard_ptr - 0x103AD2)
103ACE:  ADD             R1, PC; __stack_chk_guard_ptr
103AD0:  LDR             R1, [R1]; __stack_chk_guard
103AD2:  LDR             R1, [R1]
103AD4:  CMP             R1, R0
103AD6:  IT NE
103AD8:  BLXNE           __stack_chk_fail
103ADC:  MOV             R0, R4
103ADE:  MOVS            R1, #0x29 ; ')'
103AE0:  ADD             SP, SP, #0x10
103AE2:  POP.W           {R4,R5,R7,LR}
103AE6:  B.W             sub_FE09A
