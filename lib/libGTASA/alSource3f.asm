; =========================================================
; Game Engine Function: alSource3f
; Address            : 0x257288 - 0x25735A
; =========================================================

257288:  PUSH            {R4-R7,LR}
25728A:  ADD             R7, SP, #0xC
25728C:  PUSH.W          {R8,R9,R11}
257290:  SUB             SP, SP, #0x10
257292:  MOV             R8, R3
257294:  MOV             R9, R2
257296:  MOV             R5, R1
257298:  MOV             R6, R0
25729A:  BLX             j_GetContextRef
25729E:  MOV             R4, R0
2572A0:  CMP             R4, #0
2572A2:  BEQ             loc_257352
2572A4:  ADD.W           R0, R4, #8
2572A8:  MOV             R1, R6
2572AA:  BLX             j_LookupUIntMapKey
2572AE:  CBZ             R0, loc_2572DE
2572B0:  MOVW            R1, #0x1004
2572B4:  SUBS            R1, R5, R1
2572B6:  CMP             R1, #3
2572B8:  BCS             loc_257312
2572BA:  VMOV            S2, R8
2572BE:  VLDR            S0, [R7,#arg_0]
2572C2:  VMOV            S4, R9
2572C6:  ADD             R3, SP, #0x28+var_24
2572C8:  MOV             R1, R4
2572CA:  MOV             R2, R5
2572CC:  VSTR            S2, [SP,#0x28+var_20]
2572D0:  VSTR            S4, [SP,#0x28+var_24]
2572D4:  VSTR            S0, [SP,#0x28+var_1C]
2572D8:  BL              sub_256840
2572DC:  B               loc_25734C
2572DE:  LDR             R0, =(TrapALError_ptr - 0x2572E4)
2572E0:  ADD             R0, PC; TrapALError_ptr
2572E2:  LDR             R0, [R0]; TrapALError
2572E4:  LDRB            R0, [R0]
2572E6:  CMP             R0, #0
2572E8:  ITT NE
2572EA:  MOVNE           R0, #5; sig
2572EC:  BLXNE           raise
2572F0:  LDREX.W         R0, [R4,#0x50]
2572F4:  CBNZ            R0, loc_257344
2572F6:  ADD.W           R0, R4, #0x50 ; 'P'
2572FA:  MOVW            R1, #0xA001
2572FE:  DMB.W           ISH
257302:  STREX.W         R2, R1, [R0]
257306:  CBZ             R2, loc_257348
257308:  LDREX.W         R2, [R0]
25730C:  CMP             R2, #0
25730E:  BEQ             loc_257302
257310:  B               loc_257344
257312:  LDR             R0, =(TrapALError_ptr - 0x257318)
257314:  ADD             R0, PC; TrapALError_ptr
257316:  LDR             R0, [R0]; TrapALError
257318:  LDRB            R0, [R0]
25731A:  CMP             R0, #0
25731C:  ITT NE
25731E:  MOVNE           R0, #5; sig
257320:  BLXNE           raise
257324:  LDREX.W         R0, [R4,#0x50]
257328:  CBNZ            R0, loc_257344
25732A:  ADD.W           R0, R4, #0x50 ; 'P'
25732E:  MOVW            R1, #0xA002
257332:  DMB.W           ISH
257336:  STREX.W         R2, R1, [R0]
25733A:  CBZ             R2, loc_257348
25733C:  LDREX.W         R2, [R0]
257340:  CMP             R2, #0
257342:  BEQ             loc_257336
257344:  CLREX.W
257348:  DMB.W           ISH
25734C:  MOV             R0, R4
25734E:  BLX             j_ALCcontext_DecRef
257352:  ADD             SP, SP, #0x10
257354:  POP.W           {R8,R9,R11}
257358:  POP             {R4-R7,PC}
