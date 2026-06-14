; =========================================================
; Game Engine Function: sub_1D69D0
; Address            : 0x1D69D0 - 0x1D6CC8
; =========================================================

1D69D0:  PUSH            {R4-R11,LR}
1D69D4:  ADD             R11, SP, #0x1C
1D69D8:  SUB             SP, SP, #0x2C
1D69DC:  LDR             R5, [R11,#arg_0]
1D69E0:  MOV             R4, R3
1D69E4:  MOV             R6, R0
1D69E8:  STR             R2, [R11,#var_20]
1D69EC:  CMP             R5, #0
1D69F0:  BLE             loc_1D6B44
1D69F4:  MOV             R0, R5,LSL#2
1D69F8:  MOV             R9, R2
1D69FC:  STR             R0, [SP,#0x48+var_44]
1D6A00:  MOV             R7, R4
1D6A04:  LDR             R0, =(unk_C4AF0 - 0x1D6A1C)
1D6A08:  MOV             R2, R1
1D6A0C:  MOV             R8, R6
1D6A10:  STR             R1, [SP,#0x48+var_40]
1D6A14:  ADD             R0, PC, R0; unk_C4AF0
1D6A18:  STR             R0, [SP,#0x48+var_34]
1D6A1C:  LDR             R0, =(unk_C4AB0 - 0x1D6A28)
1D6A20:  ADD             R0, PC, R0; unk_C4AB0
1D6A24:  STR             R0, [SP,#0x48+var_38]
1D6A28:  LDR             R0, =(unk_C4C54 - 0x1D6A34)
1D6A2C:  ADD             R0, PC, R0; unk_C4C54
1D6A30:  STR             R0, [SP,#0x48+var_3C]
1D6A34:  MOV             R0, R5
1D6A38:  STR             R0, [SP,#0x48+var_28]
1D6A3C:  LDR             R0, [R7]
1D6A40:  LDR             R1, [SP,#0x48+var_34]
1D6A44:  LDR             R3, [R9]
1D6A48:  LDR             R10, [R1,R0,LSL#2]
1D6A4C:  LDRSH           R0, [R2],#2
1D6A50:  STR             R2, [SP,#0x48+var_2C]
1D6A54:  SUBS            R5, R0, R3
1D6A58:  MOV             R0, R10,LSL#1
1D6A5C:  STR             R3, [SP,#0x48+var_30]
1D6A60:  MOV             R1, R5
1D6A64:  RSBMI           R1, R5, #0
1D6A68:  CMP             R0, R1
1D6A6C:  MOVGT           R0, R1
1D6A70:  MOV             R1, R10
1D6A74:  MOV             R0, R0,LSL#3
1D6A78:  BL              sub_220A40
1D6A7C:  SUB             R0, R0, #1
1D6A80:  MOV             R1, #8
1D6A84:  AND             R1, R1, R5,LSR#28
1D6A88:  LDR             R2, [SP,#0x48+var_3C]
1D6A8C:  ADD             R0, R0, R0,LSR#31
1D6A90:  ORR             R0, R1, R0,LSR#1
1D6A94:  LDR             R1, [SP,#0x48+var_38]
1D6A98:  LDR             R1, [R1,R0,LSL#2]
1D6A9C:  LDR             R0, [R2,R0,LSL#2]
1D6AA0:  MUL             R1, R1, R10
1D6AA4:  MOV             R2, R1,ASR#31
1D6AA8:  ADD             R1, R1, R2,LSR#29
1D6AAC:  LDR             R2, [SP,#0x48+var_30]
1D6AB0:  ADD             R1, R2, R1,ASR#3
1D6AB4:  MOV             R2, #0xFFFF8000
1D6ABC:  CMP             R1, R2
1D6AC0:  MOVLE           R1, R2
1D6AC4:  MOVW            R2, #0x7FFF
1D6AC8:  CMP             R1, R2
1D6ACC:  MOVGE           R1, R2
1D6AD0:  STR             R1, [R9]
1D6AD4:  LDR             R1, [R7]
1D6AD8:  ADD             R0, R1, R0
1D6ADC:  CMP             R0, #0
1D6AE0:  MOVLE           R0, #0
1D6AE4:  CMP             R0, #0x58 ; 'X'
1D6AE8:  MOVGE           R0, #0x58 ; 'X'
1D6AEC:  STR             R0, [R7]
1D6AF0:  LDR             R0, [R9]
1D6AF4:  STRB            R0, [R8]
1D6AF8:  LDR             R0, [R9],#4
1D6AFC:  MOV             R0, R0,LSR#8
1D6B00:  STRB            R0, [R8,#1]
1D6B04:  LDR             R0, [R7]
1D6B08:  STRB            R0, [R8,#2]
1D6B0C:  LDR             R0, [R7],#4
1D6B10:  MOV             R0, R0,LSR#8
1D6B14:  STRB            R0, [R8,#3]
1D6B18:  ADD             R8, R8, #4
1D6B1C:  LDR             R0, [SP,#0x48+var_28]
1D6B20:  LDR             R2, [SP,#0x48+var_2C]
1D6B24:  SUBS            R0, R0, #1
1D6B28:  BNE             loc_1D6A38
1D6B2C:  LDR             R1, [R11,#arg_0]
1D6B30:  LDR             R0, [SP,#0x48+var_44]
1D6B34:  LDR             R2, [R11,#var_20]
1D6B38:  MOV             R5, R1
1D6B3C:  ADD             R6, R6, R0
1D6B40:  LDR             R1, [SP,#0x48+var_40]
1D6B44:  MOV             R0, R5,LSL#1
1D6B48:  ADD             R9, R1, R5,LSL#1
1D6B4C:  STR             R0, [SP,#0x48+var_28]
1D6B50:  MOV             R0, R5,LSL#4
1D6B54:  STR             R0, [SP,#0x48+var_44]
1D6B58:  MOV             R7, #1
1D6B5C:  LDR             R0, =(unk_C4AF0 - 0x1D6B6C)
1D6B60:  STR             R4, [SP,#0x48+var_24]
1D6B64:  ADD             R0, PC, R0; unk_C4AF0
1D6B68:  STR             R0, [SP,#0x48+var_2C]
1D6B6C:  LDR             R0, =(unk_C4AB0 - 0x1D6B78)
1D6B70:  ADD             R0, PC, R0; unk_C4AB0
1D6B74:  STR             R0, [SP,#0x48+var_30]
1D6B78:  LDR             R0, =(unk_C4C54 - 0x1D6B84)
1D6B7C:  ADD             R0, PC, R0; unk_C4C54
1D6B80:  STR             R0, [SP,#0x48+var_34]
1D6B84:  CMP             R5, #1
1D6B88:  STR             R9, [SP,#0x48+var_3C]
1D6B8C:  STR             R7, [SP,#0x48+var_40]
1D6B90:  BLT             loc_1D6CA0
1D6B94:  MOV             R10, #0
1D6B98:  MOV             R8, R6
1D6B9C:  MOV             R7, #0
1D6BA0:  STR             R9, [SP,#0x48+var_38]
1D6BA4:  LDR             R0, [R4,R10,LSL#2]
1D6BA8:  LDR             R1, [SP,#0x48+var_2C]
1D6BAC:  LDR             R5, [R2,R10,LSL#2]
1D6BB0:  LDR             R6, [R1,R0,LSL#2]
1D6BB4:  LDRSH           R0, [R9]
1D6BB8:  SUBS            R4, R0, R5
1D6BBC:  MOV             R0, R6,LSL#1
1D6BC0:  MOV             R1, R4
1D6BC4:  RSBMI           R1, R4, #0
1D6BC8:  CMP             R0, R1
1D6BCC:  MOVGT           R0, R1
1D6BD0:  MOV             R1, R6
1D6BD4:  MOV             R0, R0,LSL#3
1D6BD8:  BL              sub_220A40
1D6BDC:  SUB             R0, R0, #1
1D6BE0:  MOV             R1, #8
1D6BE4:  AND             R1, R1, R4,LSR#28
1D6BE8:  LDR             R2, [SP,#0x48+var_34]
1D6BEC:  ADD             R0, R0, R0,LSR#31
1D6BF0:  ORR             R0, R1, R0,ASR#1
1D6BF4:  LDR             R1, [SP,#0x48+var_30]
1D6BF8:  LDR             R1, [R1,R0,LSL#2]
1D6BFC:  MUL             R1, R1, R6
1D6C00:  LDR             R6, [R2,R0,LSL#2]
1D6C04:  MOV             R2, #0xFFFF8000
1D6C0C:  MOV             R3, R1,ASR#31
1D6C10:  ADD             R1, R1, R3,LSR#29
1D6C14:  ADD             R1, R5, R1,ASR#3
1D6C18:  CMP             R1, R2
1D6C1C:  MOVLE           R1, R2
1D6C20:  MOVW            R2, #0x7FFF
1D6C24:  CMP             R1, R2
1D6C28:  MOVGE           R1, R2
1D6C2C:  LDR             R2, [R11,#var_20]
1D6C30:  STR             R1, [R2,R10,LSL#2]
1D6C34:  LDR             R4, [SP,#0x48+var_24]
1D6C38:  LDR             R1, [R4,R10,LSL#2]
1D6C3C:  ADD             R1, R1, R6
1D6C40:  MOV             R6, R8
1D6C44:  CMP             R1, #0
1D6C48:  MOVLE           R1, #0
1D6C4C:  CMP             R1, #0x58 ; 'X'
1D6C50:  MOVGE           R1, #0x58 ; 'X'
1D6C54:  TST             R7, #1
1D6C58:  STR             R1, [R4,R10,LSL#2]
1D6C5C:  ADD             R7, R7, #1
1D6C60:  LDRBNE          R1, [R6],#1
1D6C64:  ORRNE           R0, R1, R0,LSL#4
1D6C68:  STRB            R0, [R8]
1D6C6C:  LDR             R0, [SP,#0x48+var_28]
1D6C70:  CMP             R7, #8
1D6C74:  MOV             R8, R6
1D6C78:  ADD             R9, R9, R0
1D6C7C:  BNE             loc_1D6BA4
1D6C80:  LDR             R9, [SP,#0x48+var_38]
1D6C84:  ADD             R10, R10, #1
1D6C88:  LDR             R1, [R11,#arg_0]
1D6C8C:  MOV             R8, R6
1D6C90:  ADD             R9, R9, #2
1D6C94:  MOV             R5, R1
1D6C98:  CMP             R10, R5
1D6C9C:  BNE             loc_1D6B9C
1D6CA0:  LDR             R7, [SP,#0x48+var_40]
1D6CA4:  LDR             R9, [SP,#0x48+var_3C]
1D6CA8:  LDR             R0, [SP,#0x48+var_44]
1D6CAC:  CMP             R7, #0x39 ; '9'
1D6CB0:  ADD             R9, R9, R0
1D6CB4:  ADD             R0, R7, #8
1D6CB8:  MOV             R7, R0
1D6CBC:  BLT             loc_1D6B84
1D6CC0:  SUB             SP, R11, #0x1C
1D6CC4:  POP             {R4-R11,PC}
