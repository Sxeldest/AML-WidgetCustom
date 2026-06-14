; =========================================================
; Game Engine Function: sub_F4BBC
; Address            : 0xF4BBC - 0xF4C86
; =========================================================

F4BBC:  PUSH            {R4-R7,LR}
F4BBE:  ADD             R7, SP, #0xC
F4BC0:  PUSH.W          {R8}
F4BC4:  SUB             SP, SP, #0x18
F4BC6:  MOV             R4, R0
F4BC8:  LDRD.W          R5, R0, [R0]
F4BCC:  MOVW            R12, #0xAAAB
F4BD0:  MOV             R8, R1
F4BD2:  SUBS            R0, R0, R5
F4BD4:  MOVT            R12, #0xAAAA
F4BD8:  MOVW            R1, #0x5555
F4BDC:  ASRS            R0, R0, #2
F4BDE:  MOVT            R1, #0x1555
F4BE2:  MUL.W           R2, R0, R12
F4BE6:  ADDS            R0, R2, #1
F4BE8:  CMP             R0, R1
F4BEA:  BHI             loc_F4C80
F4BEC:  MOV             R3, R4
F4BEE:  LDR.W           R6, [R3,#8]!
F4BF2:  SUBS            R6, R6, R5
F4BF4:  MOV             R5, #0xAAAAAAA
F4BFC:  ASRS            R6, R6, #2
F4BFE:  MUL.W           R6, R6, R12
F4C02:  CMP.W           R0, R6,LSL#1
F4C06:  IT LS
F4C08:  LSLLS           R0, R6, #1
F4C0A:  CMP             R6, R5
F4C0C:  IT CC
F4C0E:  MOVCC           R1, R0
F4C10:  ADD             R0, SP, #0x28+var_24
F4C12:  BL              sub_F4C90
F4C16:  LDR             R0, [SP,#0x28+var_1C]; int
F4C18:  MOV             R1, R8; s
F4C1A:  BL              sub_DC6DC
F4C1E:  LDRD.W          R1, R3, [SP,#0x28+var_20]
F4C22:  LDRD.W          R0, R2, [R4]
F4C26:  ADDS            R3, #0xC
F4C28:  STR             R3, [SP,#0x28+var_1C]
F4C2A:  CMP             R2, R0
F4C2C:  BEQ             loc_F4C5E
F4C2E:  MOVS            R3, #0
F4C30:  VLDR            D16, [R2,#-0xC]
F4C34:  LDR.W           R6, [R2,#-4]
F4C38:  STR.W           R6, [R1,#-4]
F4C3C:  VSTR            D16, [R1,#-0xC]
F4C40:  STRD.W          R3, R3, [R2,#-0xC]
F4C44:  STR.W           R3, [R2,#-4]
F4C48:  SUBS            R2, #0xC
F4C4A:  LDR             R1, [SP,#0x28+var_20]
F4C4C:  CMP             R2, R0
F4C4E:  SUB.W           R1, R1, #0xC
F4C52:  STR             R1, [SP,#0x28+var_20]
F4C54:  BNE             loc_F4C30
F4C56:  LDR             R3, [SP,#0x28+var_1C]
F4C58:  LDRD.W          R2, R0, [R4]
F4C5C:  B               loc_F4C60
F4C5E:  MOV             R2, R0
F4C60:  STR             R1, [R4]
F4C62:  LDR             R1, [R4,#8]
F4C64:  LDR             R6, [SP,#0x28+var_18]
F4C66:  STRD.W          R2, R2, [SP,#0x28+var_24]
F4C6A:  STRD.W          R0, R1, [SP,#0x28+var_1C]
F4C6E:  ADD             R0, SP, #0x28+var_24
F4C70:  STRD.W          R3, R6, [R4,#4]
F4C74:  BL              sub_F4CE8
F4C78:  ADD             SP, SP, #0x18
F4C7A:  POP.W           {R8}
F4C7E:  POP             {R4-R7,PC}
F4C80:  MOV             R0, R4
F4C82:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
