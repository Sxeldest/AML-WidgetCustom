; =========================================================
; Game Engine Function: alGetListener3i
; Address            : 0x1E1F94 - 0x1E207C
; =========================================================

1E1F94:  PUSH            {R4-R8,R10,R11,LR}
1E1F98:  ADD             R11, SP, #0x18
1E1F9C:  MOV             R8, R3
1E1FA0:  MOV             R6, R2
1E1FA4:  MOV             R7, R1
1E1FA8:  MOV             R5, R0
1E1FAC:  BL              j_GetContextRef
1E1FB0:  MOV             R4, R0
1E1FB4:  CMP             R4, #0
1E1FB8:  BEQ             locret_1E2014
1E1FBC:  CMP             R7, #0
1E1FC0:  BEQ             loc_1E2018
1E1FC4:  CMP             R6, #0
1E1FC8:  CMPNE           R8, #0
1E1FCC:  BEQ             loc_1E2018
1E1FD0:  MOVW            R0, #0x1006
1E1FD4:  CMP             R5, R0
1E1FD8:  BEQ             loc_1E2024
1E1FDC:  MOVW            R0, #0x1004
1E1FE0:  CMP             R5, R0
1E1FE4:  BNE             loc_1E2064
1E1FE8:  LDR             R0, [R4,#0xFC]
1E1FEC:  ADD             R0, R0, #8; mutex
1E1FF0:  BL              j_EnterCriticalSection
1E1FF4:  VLDR            S0, [R4,#4]
1E1FF8:  VCVT.S32.F32    S0, S0
1E1FFC:  VSTR            S0, [R7]
1E2000:  VLDR            S0, [R4,#8]
1E2004:  VCVT.S32.F32    S0, S0
1E2008:  VSTR            S0, [R6]
1E200C:  VLDR            S0, [R4,#0xC]
1E2010:  B               loc_1E204C
1E2014:  POP             {R4-R8,R10,R11,PC}
1E2018:  MOV             R0, R4
1E201C:  MOVW            R1, #0xA003
1E2020:  B               loc_1E206C
1E2024:  LDR             R0, [R4,#0xFC]
1E2028:  ADD             R0, R0, #8; mutex
1E202C:  BL              j_EnterCriticalSection
1E2030:  VLDR            S0, [R4,#0x10]
1E2034:  VCVT.S32.F32    S0, S0
1E2038:  VSTR            S0, [R7]
1E203C:  VLDR            S0, [R4,#0x14]
1E2040:  VCVT.S32.F32    S0, S0
1E2044:  VSTR            S0, [R6]
1E2048:  VLDR            S0, [R4,#0x18]
1E204C:  VCVT.S32.F32    S0, S0
1E2050:  VSTR            S0, [R8]
1E2054:  LDR             R0, [R4,#0xFC]
1E2058:  ADD             R0, R0, #8; mutex
1E205C:  BL              j_LeaveCriticalSection
1E2060:  B               loc_1E2070
1E2064:  MOV             R0, R4
1E2068:  MOVW            R1, #0xA002
1E206C:  BL              j_alSetError
1E2070:  MOV             R0, R4
1E2074:  POP             {R4-R8,R10,R11,LR}
1E2078:  B               j_ALCcontext_DecRef
