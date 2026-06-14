; =========================================================
; Game Engine Function: sub_E8A8C
; Address            : 0xE8A8C - 0xE8B20
; =========================================================

E8A8C:  PUSH            {R4-R7,LR}
E8A8E:  ADD             R7, SP, #0xC
E8A90:  PUSH.W          {R11}
E8A94:  SUB             SP, SP, #0x20
E8A96:  LDR             R3, [R0,#4]
E8A98:  LDRD.W          LR, R4, [R1]
E8A9C:  LDRD.W          R12, R5, [R2]
E8AA0:  SUBS            R4, R3, R4
E8AA2:  ADD             R4, R5
E8AA4:  SUB.W           R6, R12, LR
E8AA8:  ADD.W           R4, R4, R6,LSL#3
E8AAC:  STR             R4, [R0,#4]
E8AAE:  CBZ             R3, loc_E8ABE
E8AB0:  SUBS            R5, R3, #1
E8AB2:  SUBS            R6, R4, #1
E8AB4:  EORS            R5, R6
E8AB6:  CMP             R5, #0x1F
E8AB8:  BHI             loc_E8ABE
E8ABA:  LDR             R0, [R0]
E8ABC:  B               loc_E8AD4
E8ABE:  LDR             R0, [R0]
E8AC0:  CMP             R4, #0x20 ; ' '
E8AC2:  BHI             loc_E8ACA
E8AC4:  MOVS            R4, #0
E8AC6:  STR             R4, [R0]
E8AC8:  B               loc_E8AD4
E8ACA:  SUBS            R4, #1
E8ACC:  MOVS            R5, #0
E8ACE:  LSRS            R4, R4, #5
E8AD0:  STR.W           R5, [R0,R4,LSL#2]
E8AD4:  LSRS            R4, R3, #5
E8AD6:  LDR             R2, [R2,#4]
E8AD8:  LDR             R1, [R1,#4]
E8ADA:  AND.W           R3, R3, #0x1F
E8ADE:  ADD.W           R0, R0, R4,LSL#2
E8AE2:  CMP             R1, R3
E8AE4:  BNE             loc_E8B00
E8AE6:  STRD.W          R2, LR, [SP,#0x30+var_1C]
E8AEA:  ADD             R2, SP, #0x30+var_28
E8AEC:  STM.W           R2, {R0,R1,R12}
E8AF0:  ADD             R2, SP, #0x30+var_20
E8AF2:  ADD             R3, SP, #0x30+var_28
E8AF4:  STR             R1, [SP,#0x30+var_14]
E8AF6:  ADD             R1, SP, #0x30+var_18
E8AF8:  MOV             R0, SP
E8AFA:  BL              sub_E8B20
E8AFE:  B               loc_E8B18
E8B00:  STR             R1, [SP,#0x30+var_14]
E8B02:  ADD             R1, SP, #0x30+var_28
E8B04:  STM.W           R1, {R0,R3,R12}
E8B08:  ADD             R1, SP, #0x30+var_18
E8B0A:  ADD             R3, SP, #0x30+var_28
E8B0C:  STRD.W          R2, LR, [SP,#0x30+var_1C]
E8B10:  ADD             R2, SP, #0x30+var_20
E8B12:  MOV             R0, SP
E8B14:  BL              sub_E8BF4
E8B18:  ADD             SP, SP, #0x20 ; ' '
E8B1A:  POP.W           {R11}
E8B1E:  POP             {R4-R7,PC}
