; =========================================================
; Game Engine Function: sub_E2060
; Address            : 0xE2060 - 0xE2112
; =========================================================

E2060:  PUSH            {R4-R7,LR}
E2062:  ADD             R7, SP, #0xC
E2064:  PUSH.W          {R8-R10}
E2068:  SUB             SP, SP, #8
E206A:  MOV             R5, R0
E206C:  LDR             R0, =(unk_91CE0 - 0xE207A)
E206E:  LDRH.W          R2, [R1,#9]
E2072:  ADD.W           R8, R1, #0xB
E2076:  ADD             R0, PC; unk_91CE0
E2078:  LDR             R6, [R1]
E207A:  AND.W           R2, R2, #0xF
E207E:  LDR             R4, [R7,#arg_0]
E2080:  SUBS            R6, R6, R3
E2082:  LDRB            R0, [R0,R2]
E2084:  IT CC
E2086:  MOVCC           R6, #0
E2088:  LSRS.W          R9, R6, R0
E208C:  BEQ             loc_E209A
E208E:  MOV             R0, R5
E2090:  MOV             R1, R9
E2092:  MOV             R2, R8
E2094:  BL              sub_DD992
E2098:  MOV             R5, R0
E209A:  LDR             R0, [R4]
E209C:  LDR             R1, [R0]
E209E:  CBZ             R1, loc_E20C6
E20A0:  LDR             R2, =(unk_91D45 - 0xE20AA)
E20A2:  LDRD.W          R0, R3, [R5,#8]
E20A6:  ADD             R2, PC; unk_91D45
E20A8:  LDRB.W          R10, [R2,R1]
E20AC:  ADDS            R1, R0, #1
E20AE:  CMP             R3, R1
E20B0:  BCS             loc_E20BE
E20B2:  LDR             R0, [R5]
E20B4:  LDR             R2, [R0]
E20B6:  MOV             R0, R5
E20B8:  BLX             R2
E20BA:  LDR             R0, [R5,#8]
E20BC:  ADDS            R1, R0, #1
E20BE:  LDR             R2, [R5,#4]
E20C0:  STR             R1, [R5,#8]
E20C2:  STRB.W          R10, [R2,R0]
E20C6:  ADD.W           R12, R4, #4
E20CA:  SUB.W           R9, R6, R9
E20CE:  LDM.W           R12, {R0-R2,R6,R12}
E20D2:  LDR             R3, [R2]
E20D4:  LDR             R2, [R1]
E20D6:  LDR             R1, [R0]
E20D8:  LDRB            R0, [R6]
E20DA:  STRD.W          R0, R12, [SP,#0x20+var_20]
E20DE:  MOV             R0, R5
E20E0:  BL              sub_E211C
E20E4:  LDR             R1, [R4,#0x18]
E20E6:  LDR             R1, [R1]
E20E8:  CMP             R1, #1
E20EA:  ITT GE
E20EC:  LDRGE           R2, [R4,#0x1C]
E20EE:  BLGE            sub_DE834
E20F2:  CMP.W           R9, #0
E20F6:  BEQ             loc_E210A
E20F8:  MOV             R1, R9
E20FA:  MOV             R2, R8
E20FC:  ADD             SP, SP, #8
E20FE:  POP.W           {R8-R10}
E2102:  POP.W           {R4-R7,LR}
E2106:  B.W             sub_DD992
E210A:  ADD             SP, SP, #8
E210C:  POP.W           {R8-R10}
E2110:  POP             {R4-R7,PC}
