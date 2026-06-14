; =========================================================
; Game Engine Function: sub_E9AD4
; Address            : 0xE9AD4 - 0xE9BAA
; =========================================================

E9AD4:  PUSH            {R4-R7,LR}
E9AD6:  ADD             R7, SP, #0xC
E9AD8:  PUSH.W          {R5-R11}
E9ADC:  STR             R1, [SP,#0x28+var_24]
E9ADE:  MOV             R10, R0
E9AE0:  LDR             R0, =(__stack_chk_guard_ptr - 0xE9AEA)
E9AE2:  MOV             R6, R3
E9AE4:  MOV             R8, R2
E9AE6:  ADD             R0, PC; __stack_chk_guard_ptr
E9AE8:  LDR             R0, [R0]; __stack_chk_guard
E9AEA:  LDR             R0, [R0]
E9AEC:  STR             R0, [SP,#0x28+var_20]
E9AEE:  ADD             R1, SP, #0x28+var_24
E9AF0:  MOV             R0, R10
E9AF2:  BL              sub_E2FB4
E9AF6:  CBZ             R0, loc_E9AFE
E9AF8:  MOVS            R4, #0
E9AFA:  MOVS            R0, #6
E9AFC:  B               loc_E9B76
E9AFE:  MOV             R0, R10
E9B00:  BL              sub_E5EF8
E9B04:  MOV             R4, R0
E9B06:  LDR             R0, [R6]
E9B08:  MOVS            R1, #0x40 ; '@'
E9B0A:  MOV             R2, R4
E9B0C:  LDR             R3, [R0,#0xC]
E9B0E:  MOV             R0, R6
E9B10:  BLX             R3
E9B12:  CBZ             R0, loc_E9B72
E9B14:  LDR             R0, [R6]
E9B16:  MOV             R1, R4
E9B18:  MOVS            R2, #0
E9B1A:  LDR.W           R11, [R7,#arg_0]
E9B1E:  LDR             R3, [R0,#0x34]
E9B20:  MOV             R0, R6
E9B22:  BLX             R3
E9B24:  ADD.W           R9, SP, #0x28+var_24
E9B28:  MOV             R4, R0
E9B2A:  MOV             R0, R10
E9B2C:  BL              sub_E5F04
E9B30:  MOV             R0, R10
E9B32:  MOV             R1, R9
E9B34:  BL              sub_DEDB4
E9B38:  SUBS            R4, #0x30 ; '0'
E9B3A:  CBZ             R0, loc_E9B9A
E9B3C:  CMP.W           R11, #2
E9B40:  BLT             loc_E9B9A
E9B42:  MOV             R0, R10
E9B44:  BL              sub_E5EF8
E9B48:  MOV             R5, R0
E9B4A:  LDR             R0, [R6]
E9B4C:  MOVS            R1, #0x40 ; '@'
E9B4E:  MOV             R2, R5
E9B50:  LDR             R3, [R0,#0xC]
E9B52:  MOV             R0, R6
E9B54:  BLX             R3
E9B56:  CBZ             R0, loc_E9B80
E9B58:  LDR             R0, [R6]
E9B5A:  MOV             R1, R5
E9B5C:  MOVS            R2, #0
E9B5E:  LDR             R3, [R0,#0x34]
E9B60:  MOV             R0, R6
E9B62:  BLX             R3
E9B64:  ADD.W           R1, R4, R4,LSL#2
E9B68:  SUB.W           R11, R11, #1
E9B6C:  ADD.W           R4, R0, R1,LSL#1
E9B70:  B               loc_E9B2A
E9B72:  MOVS            R4, #0
E9B74:  MOVS            R0, #4
E9B76:  LDR.W           R1, [R8]
E9B7A:  ORRS            R0, R1
E9B7C:  STR.W           R0, [R8]
E9B80:  LDR             R0, [SP,#0x28+var_20]
E9B82:  LDR             R1, =(__stack_chk_guard_ptr - 0xE9B88)
E9B84:  ADD             R1, PC; __stack_chk_guard_ptr
E9B86:  LDR             R1, [R1]; __stack_chk_guard
E9B88:  LDR             R1, [R1]
E9B8A:  CMP             R1, R0
E9B8C:  ITTT EQ
E9B8E:  MOVEQ           R0, R4
E9B90:  POPEQ.W         {R1-R3,R8-R11}
E9B94:  POPEQ           {R4-R7,PC}
E9B96:  BLX             __stack_chk_fail
E9B9A:  ADD             R1, SP, #0x28+var_24
E9B9C:  MOV             R0, R10
E9B9E:  BL              sub_E2FB4
E9BA2:  CMP             R0, #0
E9BA4:  BEQ             loc_E9B80
E9BA6:  MOVS            R0, #2
E9BA8:  B               loc_E9B76
