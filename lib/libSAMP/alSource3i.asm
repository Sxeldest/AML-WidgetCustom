; =========================================================
; Game Engine Function: alSource3i
; Address            : 0x1CC124 - 0x1CC344
; =========================================================

1CC124:  PUSH            {R4-R11,LR}
1CC128:  ADD             R11, SP, #0x1C
1CC12C:  SUB             SP, SP, #4; float
1CC130:  MOV             R6, R0
1CC134:  LDR             R7, [R11,#arg_0]
1CC138:  MOVW            R0, #0x1004
1CC13C:  MOV             R4, R1
1CC140:  SUB             R0, R4, R0
1CC144:  MOV             R8, R3
1CC148:  MOV             R5, R2
1CC14C:  CMP             R0, #2
1CC150:  BHI             loc_1CC18C
1CC154:  VMOV            S0, R5
1CC158:  MOV             R0, R6; int
1CC15C:  VMOV            S2, R8
1CC160:  MOV             R1, R4; int
1CC164:  VCVT.F32.S32    S0, S0
1CC168:  VCVT.F32.S32    S2, S2
1CC16C:  VMOV            R2, S0; int
1CC170:  VMOV            R3, S2; int
1CC174:  VMOV            S0, R7
1CC178:  VCVT.F32.S32    S0, S0
1CC17C:  VSTR            S0, [SP,#0x20+var_20]
1CC180:  BL              j_alSource3f
1CC184:  SUB             SP, R11, #0x1C
1CC188:  POP             {R4-R11,PC}
1CC18C:  BL              j_GetContextRef
1CC190:  MOV             R10, R0
1CC194:  CMP             R10, #0
1CC198:  BEQ             loc_1CC214
1CC19C:  ADD             R0, R10, #0x7C ; '|'
1CC1A0:  MOV             R1, R6
1CC1A4:  BL              j_LookupUIntMapKey
1CC1A8:  MOV             R9, R0
1CC1AC:  CMP             R9, #0
1CC1B0:  BEQ             loc_1CC21C
1CC1B4:  MOV             R0, #0x20006
1CC1BC:  CMP             R4, R0
1CC1C0:  BNE             loc_1CC228
1CC1C4:  LDR             R6, [R10,#0xFC]
1CC1C8:  ADD             R0, R6, #8; mutex
1CC1CC:  BL              j_EnterCriticalSection
1CC1D0:  LDR             R0, [R6,#0x38]
1CC1D4:  CMP             R0, R8
1CC1D8:  BLS             loc_1CC2FC
1CC1DC:  MOV             R4, #0
1CC1E0:  CMP             R5, #0
1CC1E4:  BEQ             loc_1CC238
1CC1E8:  ADD             R0, R10, #0xA0
1CC1EC:  MOV             R1, R5
1CC1F0:  BL              j_LookupUIntMapKey
1CC1F4:  MOV             R5, R0
1CC1F8:  MOV             R4, #0
1CC1FC:  CMP             R5, #0
1CC200:  BEQ             loc_1CC2FC
1CC204:  MOV             R1, R5
1CC208:  CMP             R7, #0
1CC20C:  BNE             loc_1CC248
1CC210:  B               loc_1CC268
1CC214:  SUB             SP, R11, #0x1C
1CC218:  POP             {R4-R11,PC}
1CC21C:  MOV             R0, R10
1CC220:  MOVW            R1, #0xA001
1CC224:  B               loc_1CC230
1CC228:  MOV             R0, R10
1CC22C:  MOVW            R1, #0xA002
1CC230:  BL              j_alSetError
1CC234:  B               loc_1CC334
1CC238:  MOV             R5, #0
1CC23C:  MOV             R1, #0
1CC240:  CMP             R7, #0
1CC244:  BEQ             loc_1CC268
1CC248:  ADD             R0, R6, #0x84
1CC24C:  MOV             R4, R1
1CC250:  MOV             R1, R7
1CC254:  BL              j_LookupUIntMapKey
1CC258:  MOV             R1, R4
1CC25C:  MOV             R4, R0
1CC260:  CMP             R4, #0
1CC264:  BEQ             loc_1CC2FC
1CC268:  CMP             R1, #0
1CC26C:  BEQ             loc_1CC294
1CC270:  MOVW            R0, #0x40D0
1CC274:  DMB             ISH
1CC278:  ADD             R0, R1, R0
1CC27C:  LDREX           R1, [R0]
1CC280:  ADD             R1, R1, #1
1CC284:  STREX           R2, R1, [R0]
1CC288:  CMP             R2, #0
1CC28C:  BNE             loc_1CC27C
1CC290:  DMB             ISH
1CC294:  ADD             R0, R8, R8,LSL#1
1CC298:  ADD             R1, R9, #0x80
1CC29C:  DMB             ISH
1CC2A0:  ADD             R0, R1, R0,LSL#2
1CC2A4:  LDREX           R1, [R0]
1CC2A8:  STREX           R2, R5, [R0]
1CC2AC:  CMP             R2, #0
1CC2B0:  BNE             loc_1CC2A4
1CC2B4:  CMP             R1, #0
1CC2B8:  DMB             ISH
1CC2BC:  BEQ             loc_1CC2E4
1CC2C0:  MOVW            R2, #0x40D0
1CC2C4:  ADD             R1, R1, R2
1CC2C8:  DMB             ISH
1CC2CC:  LDREX           R2, [R1]
1CC2D0:  SUB             R2, R2, #1
1CC2D4:  STREX           R3, R2, [R1]
1CC2D8:  CMP             R3, #0
1CC2DC:  BNE             loc_1CC2CC
1CC2E0:  DMB             ISH
1CC2E4:  CMP             R4, #0
1CC2E8:  BEQ             loc_1CC30C
1CC2EC:  LDR             R1, [R4,#4]
1CC2F0:  STR             R1, [R0,#4]
1CC2F4:  VLDR            S0, [R4,#8]
1CC2F8:  B               loc_1CC318
1CC2FC:  MOV             R0, R10
1CC300:  MOVW            R1, #0xA003
1CC304:  BL              j_alSetError
1CC308:  B               loc_1CC328
1CC30C:  MOV             R1, #0x3F800000
1CC310:  VMOV.F32        S0, #1.0
1CC314:  STR             R1, [R0,#4]
1CC318:  VSTR            S0, [R0,#8]
1CC31C:  MOVW            R0, #0x1F9C
1CC320:  MOV             R1, #1
1CC324:  STR             R1, [R9,R0]
1CC328:  LDR             R0, [R10,#0xFC]
1CC32C:  ADD             R0, R0, #8; mutex
1CC330:  BL              j_LeaveCriticalSection
1CC334:  MOV             R0, R10
1CC338:  SUB             SP, R11, #0x1C
1CC33C:  POP             {R4-R11,LR}
1CC340:  B               j_ALCcontext_DecRef
