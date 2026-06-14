; =========================================================
; Game Engine Function: alGetSource3i
; Address            : 0x1CD14C - 0x1CD2A0
; =========================================================

1CD14C:  PUSH            {R4-R11,LR}
1CD150:  ADD             R11, SP, #0x1C
1CD154:  SUB             SP, SP, #4
1CD158:  MOV             R9, R3
1CD15C:  MOV             R6, R2
1CD160:  MOV             R7, R1
1CD164:  MOV             R5, R0
1CD168:  LDR             R10, [R11,#arg_0]
1CD16C:  BL              j_GetContextRef
1CD170:  MOV             R4, R0
1CD174:  CMP             R4, #0
1CD178:  BEQ             loc_1CD1F8
1CD17C:  CMP             R6, #0
1CD180:  BEQ             loc_1CD200
1CD184:  CMP             R9, #0
1CD188:  CMPNE           R10, #0
1CD18C:  BEQ             loc_1CD200
1CD190:  ADD             R0, R4, #0x7C ; '|'
1CD194:  MOV             R1, R5
1CD198:  BL              j_LookupUIntMapKey
1CD19C:  MOV             R8, R0
1CD1A0:  CMP             R8, #0
1CD1A4:  BEQ             loc_1CD20C
1CD1A8:  MOVW            R0, #0x1006
1CD1AC:  CMP             R7, R0
1CD1B0:  BEQ             loc_1CD218
1CD1B4:  MOVW            R0, #0x1005
1CD1B8:  CMP             R7, R0
1CD1BC:  BEQ             loc_1CD244
1CD1C0:  MOVW            R0, #0x1004
1CD1C4:  CMP             R7, R0
1CD1C8:  BNE             loc_1CD284
1CD1CC:  LDR             R0, [R4,#0xFC]
1CD1D0:  ADD             R0, R0, #8; mutex
1CD1D4:  BL              j_EnterCriticalSection
1CD1D8:  VLDR            S0, [R8,#0x28]
1CD1DC:  VCVT.S32.F32    S0, S0
1CD1E0:  VSTR            S0, [R6]
1CD1E4:  VLDR            S0, [R8,#0x2C]
1CD1E8:  VCVT.S32.F32    S0, S0
1CD1EC:  VSTR            S0, [R9]
1CD1F0:  VLDR            S0, [R8,#0x30]
1CD1F4:  B               loc_1CD26C
1CD1F8:  SUB             SP, R11, #0x1C
1CD1FC:  POP             {R4-R11,PC}
1CD200:  MOV             R0, R4
1CD204:  MOVW            R1, #0xA003
1CD208:  B               loc_1CD28C
1CD20C:  MOV             R0, R4
1CD210:  MOVW            R1, #0xA001
1CD214:  B               loc_1CD28C
1CD218:  LDR             R0, [R4,#0xFC]
1CD21C:  ADD             R0, R0, #8; mutex
1CD220:  BL              j_EnterCriticalSection
1CD224:  VLDR            S0, [R8,#0x34]
1CD228:  VCVT.S32.F32    S0, S0
1CD22C:  VSTR            S0, [R6]
1CD230:  VLDR            S0, [R8,#0x38]
1CD234:  VCVT.S32.F32    S0, S0
1CD238:  VSTR            S0, [R9]
1CD23C:  VLDR            S0, [R8,#0x3C]
1CD240:  B               loc_1CD26C
1CD244:  LDR             R0, [R4,#0xFC]
1CD248:  ADD             R0, R0, #8; mutex
1CD24C:  BL              j_EnterCriticalSection
1CD250:  VLDR            S0, [R8,#0x40]
1CD254:  VCVT.S32.F32    S0, S0
1CD258:  VSTR            S0, [R6]
1CD25C:  VLDR            S0, [R8,#0x44]
1CD260:  VCVT.S32.F32    S0, S0
1CD264:  VSTR            S0, [R9]
1CD268:  VLDR            S0, [R8,#0x48]
1CD26C:  VCVT.S32.F32    S0, S0
1CD270:  VSTR            S0, [R10]
1CD274:  LDR             R0, [R4,#0xFC]
1CD278:  ADD             R0, R0, #8; mutex
1CD27C:  BL              j_LeaveCriticalSection
1CD280:  B               loc_1CD290
1CD284:  MOV             R0, R4
1CD288:  MOVW            R1, #0xA002
1CD28C:  BL              j_alSetError
1CD290:  MOV             R0, R4
1CD294:  SUB             SP, R11, #0x1C
1CD298:  POP             {R4-R11,LR}
1CD29C:  B               j_ALCcontext_DecRef
