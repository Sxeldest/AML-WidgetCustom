; =========================================================
; Game Engine Function: _Z35RpWorldSectorForAllCollisionAtomicsP13RpWorldSectorPFP8RpAtomicS2_PvES3_
; Address            : 0x21E218 - 0x21E278
; =========================================================

21E218:  PUSH            {R4-R7,LR}
21E21A:  ADD             R7, SP, #0xC
21E21C:  PUSH.W          {R8,R9,R11}
21E220:  SUB             SP, SP, #0x18
21E222:  MOV             R8, R0
21E224:  MOVS            R0, #0
21E226:  STR             R0, [SP,#0x30+var_1C]
21E228:  MOV             R4, R8
21E22A:  STR             R0, [SP,#0x30+var_28]
21E22C:  MOV             R6, R1
21E22E:  LDR.W           R1, [R4,#0x38]!
21E232:  MOV             R9, R2
21E234:  CMP             R1, R4
21E236:  BEQ             loc_21E26E
21E238:  MOV             R5, SP
21E23A:  LDR             R0, [R1]
21E23C:  STRD.W          R0, R1, [SP,#0x30+var_30]
21E240:  LDR             R0, [R1]
21E242:  STR             R5, [R0,#4]
21E244:  LDR             R0, [R1,#8]
21E246:  STR             R5, [R1]
21E248:  CBZ             R0, loc_21E250
21E24A:  MOV             R1, R9
21E24C:  BLX             R6
21E24E:  CBZ             R0, loc_21E262
21E250:  LDRD.W          R1, R0, [SP,#0x30+var_30]
21E254:  STR             R1, [R0]
21E256:  LDRD.W          R0, R2, [SP,#0x30+var_30]
21E25A:  CMP             R1, R4
21E25C:  STR             R2, [R0,#4]
21E25E:  BNE             loc_21E23A
21E260:  B               loc_21E26E
21E262:  LDRD.W          R0, R1, [SP,#0x30+var_30]
21E266:  STR             R0, [R1]
21E268:  LDRD.W          R0, R1, [SP,#0x30+var_30]
21E26C:  STR             R1, [R0,#4]
21E26E:  MOV             R0, R8
21E270:  ADD             SP, SP, #0x18
21E272:  POP.W           {R8,R9,R11}
21E276:  POP             {R4-R7,PC}
