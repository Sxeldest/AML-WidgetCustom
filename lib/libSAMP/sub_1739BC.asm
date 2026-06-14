; =========================================================
; Game Engine Function: sub_1739BC
; Address            : 0x1739BC - 0x173B2C
; =========================================================

1739BC:  PUSH            {R4-R7,LR}
1739BE:  ADD             R7, SP, #0xC
1739C0:  PUSH.W          {R8-R11}
1739C4:  SUB             SP, SP, #4
1739C6:  VPUSH           {D8}
1739CA:  SUB             SP, SP, #8
1739CC:  VMOV            S16, R2
1739D0:  MOV             R8, R1
1739D2:  LDR             R1, [R0,#0x58]
1739D4:  MOV             R4, R0
1739D6:  VCMP.F32        S16, #0.0
1739DA:  VMRS            APSR_nzcv, FPSCR
1739DE:  BEQ             loc_173AC4
1739E0:  LDR.W           R9, [R7,#arg_0]
1739E4:  MOV             R6, R3
1739E6:  CMP             R9, R3
1739E8:  BLT             loc_173AC4
1739EA:  SUB.W           R2, R9, R6
1739EE:  LDR             R0, [R4,#0x5C]
1739F0:  ADD             R1, R2
1739F2:  ADDS            R5, R1, #1
1739F4:  CMP             R0, R5
1739F6:  BGE             loc_173A1A
1739F8:  LSLS            R0, R5, #3
1739FA:  BL              sub_1654B0
1739FE:  LDR             R1, [R4,#0x60]; src
173A00:  MOV             R10, R0
173A02:  CBZ             R1, loc_173A14
173A04:  LDR             R0, [R4,#0x58]
173A06:  LSLS            R2, R0, #3; n
173A08:  MOV             R0, R10; dest
173A0A:  BLX             j_memcpy
173A0E:  LDR             R0, [R4,#0x60]
173A10:  BL              sub_165578
173A14:  MOV             R0, R5
173A16:  STRD.W          R5, R10, [R4,#0x5C]
173A1A:  LDR             R1, [R4,#0x58]
173A1C:  MOV             R10, #0x2AAAAAAB
173A24:  SMMUL.W         R2, R6, R10
173A28:  LDR             R3, [R4,#0x28]
173A2A:  VLDR            S4, [R8]
173A2E:  VLDR            S6, [R8,#4]
173A32:  CMP             R1, R0
173A34:  MOV.W           R5, R2,LSR#1
173A38:  ADD.W           R2, R5, R2,LSR#31
173A3C:  ADD.W           R2, R2, R2,LSL#1
173A40:  SUB.W           R2, R6, R2,LSL#2
173A44:  ADD.W           R2, R3, R2,LSL#3
173A48:  VLDR            S0, [R2,#0x28]
173A4C:  VLDR            S2, [R2,#0x2C]
173A50:  VMLA.F32        S4, S0, S16
173A54:  VMLA.F32        S6, S2, S16
173A58:  VSTR            S4, [SP,#0x30+var_30]
173A5C:  VSTR            S6, [SP,#0x30+var_2C]
173A60:  BNE             loc_173AA2
173A62:  CMP             R0, #0
173A64:  ADD.W           R5, R0, #1
173A68:  ITTE NE
173A6A:  ADDNE.W         R1, R0, R0,LSR#31
173A6E:  ADDNE.W         R1, R0, R1,ASR#1
173A72:  MOVEQ           R1, #8
173A74:  CMP             R1, R5
173A76:  IT GT
173A78:  MOVGT           R5, R1
173A7A:  CMP             R0, R5
173A7C:  MOV             R1, R0
173A7E:  BGE             loc_173AA2
173A80:  LSLS            R0, R5, #3
173A82:  BL              sub_1654B0
173A86:  LDR             R1, [R4,#0x60]; src
173A88:  MOV             R11, R0
173A8A:  CBZ             R1, loc_173A9C
173A8C:  LDR             R0, [R4,#0x58]
173A8E:  LSLS            R2, R0, #3; n
173A90:  MOV             R0, R11; dest
173A92:  BLX             j_memcpy
173A96:  LDR             R0, [R4,#0x60]
173A98:  BL              sub_165578
173A9C:  LDR             R1, [R4,#0x58]
173A9E:  STRD.W          R5, R11, [R4,#0x5C]
173AA2:  LDR             R0, [R4,#0x60]
173AA4:  CMP             R9, R6
173AA6:  LDRD.W          R2, R3, [SP,#0x30+var_30]
173AAA:  STR.W           R2, [R0,R1,LSL#3]
173AAE:  ADD.W           R0, R0, R1,LSL#3
173AB2:  STR             R3, [R0,#4]
173AB4:  LDR             R0, [R4,#0x58]
173AB6:  ADD.W           R1, R0, #1
173ABA:  STR             R1, [R4,#0x58]
173ABC:  BEQ             loc_173B1E
173ABE:  LDR             R0, [R4,#0x5C]
173AC0:  ADDS            R6, #1
173AC2:  B               loc_173A24
173AC4:  LDR             R0, [R4,#0x5C]
173AC6:  CMP             R1, R0
173AC8:  BNE             loc_173B08
173ACA:  CMP             R1, #0
173ACC:  ADD.W           R6, R1, #1
173AD0:  ITTE NE
173AD2:  ADDNE.W         R0, R1, R1,LSR#31
173AD6:  ADDNE.W         R0, R1, R0,ASR#1
173ADA:  MOVEQ           R0, #8
173ADC:  CMP             R0, R6
173ADE:  IT GT
173AE0:  MOVGT           R6, R0
173AE2:  CMP             R1, R6
173AE4:  BGE             loc_173B08
173AE6:  LSLS            R0, R6, #3
173AE8:  BL              sub_1654B0
173AEC:  LDR             R1, [R4,#0x60]; src
173AEE:  MOV             R5, R0
173AF0:  CBZ             R1, loc_173B02
173AF2:  LDR             R0, [R4,#0x58]
173AF4:  LSLS            R2, R0, #3; n
173AF6:  MOV             R0, R5; dest
173AF8:  BLX             j_memcpy
173AFC:  LDR             R0, [R4,#0x60]
173AFE:  BL              sub_165578
173B02:  LDR             R1, [R4,#0x58]
173B04:  STRD.W          R6, R5, [R4,#0x5C]
173B08:  LDR             R0, [R4,#0x60]
173B0A:  LDRD.W          R2, R3, [R8]
173B0E:  STR.W           R2, [R0,R1,LSL#3]
173B12:  ADD.W           R0, R0, R1,LSL#3
173B16:  STR             R3, [R0,#4]
173B18:  LDR             R0, [R4,#0x58]
173B1A:  ADDS            R0, #1
173B1C:  STR             R0, [R4,#0x58]
173B1E:  ADD             SP, SP, #8
173B20:  VPOP            {D8}
173B24:  ADD             SP, SP, #4
173B26:  POP.W           {R8-R11}
173B2A:  POP             {R4-R7,PC}
