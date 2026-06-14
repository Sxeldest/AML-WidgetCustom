; =========================================================
; Game Engine Function: sub_7ACB8
; Address            : 0x7ACB8 - 0x7AD94
; =========================================================

7ACB8:  PUSH            {R4-R7,LR}
7ACBA:  ADD             R7, SP, #0xC
7ACBC:  PUSH.W          {R8-R10}
7ACC0:  SUB.W           SP, SP, #0x218
7ACC4:  MOV             R4, R0
7ACC6:  LDR             R0, =(off_114B48 - 0x7ACCC)
7ACC8:  ADD             R0, PC; off_114B48
7ACCA:  LDR.W           R8, [R0]; dword_1A41D8
7ACCE:  LDR             R0, =(__stack_chk_guard_ptr - 0x7ACD4)
7ACD0:  ADD             R0, PC; __stack_chk_guard_ptr
7ACD2:  LDR             R0, [R0]; __stack_chk_guard
7ACD4:  LDR             R0, [R0]
7ACD6:  STR             R0, [SP,#0x230+var_1C]
7ACD8:  LDR.W           R0, [R8]
7ACDC:  LDR             R1, [R4,#8]
7ACDE:  STR             R1, [R4,#0xC]
7ACE0:  BL              sub_698B0
7ACE4:  LDR             R0, =(off_114AB0 - 0x7ACF2)
7ACE6:  MOV             R1, #0x23DEF4
7ACEE:  ADD             R0, PC; off_114AB0
7ACF0:  LDR             R0, [R0]; dword_1A4408
7ACF2:  LDR             R0, [R0]
7ACF4:  LDR             R0, [R0,R1]
7ACF6:  CMP             R0, #0
7ACF8:  BEQ             loc_7AD78
7ACFA:  LDR             R0, =(off_114AD8 - 0x7AD00)
7ACFC:  ADD             R0, PC; off_114AD8
7ACFE:  LDR             R5, [R0]; dword_1A4434
7AD00:  LDR             R0, [R5]
7AD02:  BL              sub_74B78
7AD06:  MOVS            R0, #0
7AD08:  STR             R0, [R4,#4]
7AD0A:  MOV             R0, R4
7AD0C:  BL              sub_7ADA8
7AD10:  LDR             R1, [R5]
7AD12:  ADD             R5, SP, #0x230+var_21C
7AD14:  MOV.W           R2, #0x200
7AD18:  LDRD.W          R9, R6, [R4,#8]
7AD1C:  MOV             R0, R5
7AD1E:  BL              sub_87F98
7AD22:  SUB.W           R1, R6, R9
7AD26:  LDR.W           R0, [R8]
7AD2A:  UBFX.W          R9, R1, #2, #0x10
7AD2E:  MOV             R1, R5
7AD30:  MOV             R2, R9
7AD32:  BL              sub_69554
7AD36:  CMP.W           R9, #0
7AD3A:  BEQ             loc_7AD78
7AD3C:  ADD.W           R10, SP, #0x230+var_224
7AD40:  MOVS            R5, #0
7AD42:  LDR             R0, [R4,#8]
7AD44:  LDR.W           R0, [R0,R5,LSL#2]
7AD48:  LDR             R0, [R0,#0x10]
7AD4A:  UBFX.W          R2, R0, #8, #8
7AD4E:  UBFX.W          R3, R0, #0x10, #8
7AD52:  UXTB            R1, R0
7AD54:  MOV             R0, R10
7AD56:  STRD.W          R2, R1, [SP,#0x230+var_230]
7AD5A:  BL              sub_7B1EC
7AD5E:  LDR             R0, [R4,#8]
7AD60:  LDR.W           R6, [R0,R5,LSL#2]
7AD64:  LDR.W           R0, [R8]
7AD68:  LDM             R6, {R1-R3,R6}
7AD6A:  STRD.W          R6, R10, [SP,#0x230+var_230]
7AD6E:  BL              sub_696C8
7AD72:  ADDS            R5, #1
7AD74:  CMP             R9, R5
7AD76:  BNE             loc_7AD42
7AD78:  LDR             R0, [SP,#0x230+var_1C]
7AD7A:  LDR             R1, =(__stack_chk_guard_ptr - 0x7AD80)
7AD7C:  ADD             R1, PC; __stack_chk_guard_ptr
7AD7E:  LDR             R1, [R1]; __stack_chk_guard
7AD80:  LDR             R1, [R1]
7AD82:  CMP             R1, R0
7AD84:  ITTT EQ
7AD86:  ADDEQ.W         SP, SP, #0x218
7AD8A:  POPEQ.W         {R8-R10}
7AD8E:  POPEQ           {R4-R7,PC}
7AD90:  BLX             __stack_chk_fail
