; =========================================================
; Game Engine Function: sub_138AB2
; Address            : 0x138AB2 - 0x138B72
; =========================================================

138AB2:  PUSH            {R4-R7,LR}
138AB4:  ADD             R7, SP, #0xC
138AB6:  PUSH.W          {R8,R9,R11}
138ABA:  MOV             R4, R0
138ABC:  MOVW            R6, #0xC0C1
138AC0:  LDR             R3, [R4,#0x10]
138AC2:  MOVT            R6, #0xC0C0
138AC6:  LDR             R0, [R0,#4]
138AC8:  LDR             R1, [R4,#8]
138ACA:  UMULL.W         R5, R2, R3, R6
138ACE:  CMP             R1, R0
138AD0:  BEQ             loc_138B36
138AD2:  MOV             R8, R4
138AD4:  LSRS            R2, R2, #7
138AD6:  LDR.W           R5, [R8,#0x14]!
138ADA:  MOV.W           LR, #0xAA
138ADE:  ADD             R5, R3
138AE0:  MLS.W           R3, R2, LR, R3
138AE4:  UMULL.W         R6, R12, R5, R6
138AE8:  ADD.W           R3, R3, R3,LSL#1
138AEC:  MOV.W           R6, R12,LSR#7
138AF0:  MLS.W           R12, R6, LR, R5
138AF4:  LDR.W           R5, [R0,R2,LSL#2]
138AF8:  LDR.W           R6, [R0,R6,LSL#2]
138AFC:  ADD.W           R5, R5, R3,LSL#3
138B00:  ADD.W           R3, R12, R12,LSL#1
138B04:  ADD.W           R9, R6, R3,LSL#3
138B08:  CMP             R5, R9
138B0A:  BEQ             loc_138B3A
138B0C:  ADD.W           R6, R0, R2,LSL#2
138B10:  LDRB            R0, [R5,#4]
138B12:  LSLS            R0, R0, #0x1F
138B14:  ITT NE
138B16:  LDRNE           R0, [R5,#0xC]; void *
138B18:  BLXNE           j__ZdlPv; operator delete(void *)
138B1C:  LDR             R0, [R6]
138B1E:  ADDS            R5, #0x18
138B20:  SUBS            R0, R5, R0
138B22:  CMP.W           R0, #0xFF0
138B26:  IT EQ
138B28:  LDREQ.W         R5, [R6,#4]!
138B2C:  CMP             R5, R9
138B2E:  BNE             loc_138B10
138B30:  LDRD.W          R0, R1, [R4,#4]
138B34:  B               loc_138B3A
138B36:  ADD.W           R8, R4, #0x14
138B3A:  SUBS            R1, R1, R0
138B3C:  MOVS            R2, #0
138B3E:  CMP             R1, #9
138B40:  STR.W           R2, [R8]
138B44:  BCC             loc_138B5A
138B46:  LDR             R0, [R0]; void *
138B48:  BLX             j__ZdlPv; operator delete(void *)
138B4C:  LDRD.W          R0, R1, [R4,#4]
138B50:  ADDS            R0, #4
138B52:  STR             R0, [R4,#4]
138B54:  SUBS            R1, R1, R0
138B56:  CMP             R1, #8
138B58:  BHI             loc_138B46
138B5A:  LSRS            R0, R1, #2
138B5C:  CMP             R0, #1
138B5E:  BEQ             loc_138B68
138B60:  CMP             R0, #2
138B62:  BNE             loc_138B6C
138B64:  MOVS            R0, #0xAA
138B66:  B               loc_138B6A
138B68:  MOVS            R0, #0x55 ; 'U'
138B6A:  STR             R0, [R4,#0x10]
138B6C:  POP.W           {R8,R9,R11}
138B70:  POP             {R4-R7,PC}
