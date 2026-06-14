; =========================================================
; Game Engine Function: ReleaseALSources
; Address            : 0x1CE180 - 0x1CE2E8
; =========================================================

1CE180:  PUSH            {R4-R9,R11,LR}
1CE184:  ADD             R11, SP, #0x18
1CE188:  MOV             R4, R0
1CE18C:  LDR             R0, [R4,#0x80]
1CE190:  CMP             R0, #1
1CE194:  BLT             locret_1CE2E4
1CE198:  MOV             R6, #0
1CE19C:  MOVW            R8, #0x1FA4
1CE1A0:  MOVW            R9, #0x40D0
1CE1A4:  MOV             R7, #0
1CE1A8:  LDR             R0, [R4,#0x7C]
1CE1AC:  ADD             R0, R0, R7,LSL#3
1CE1B0:  LDR             R5, [R0,#4]
1CE1B4:  STR             R6, [R0,#4]
1CE1B8:  B               loc_1CE1C0
1CE1BC:  BL              free
1CE1C0:  LDR             R0, [R5,#0x6C]; ptr
1CE1C4:  CMP             R0, #0
1CE1C8:  BEQ             loc_1CE204
1CE1CC:  LDR             R1, [R0,#4]
1CE1D0:  STR             R1, [R5,#0x6C]
1CE1D4:  LDR             R1, [R0]
1CE1D8:  CMP             R1, #0
1CE1DC:  BEQ             loc_1CE1BC
1CE1E0:  ADD             R1, R1, #0x2C ; ','
1CE1E4:  DMB             ISH
1CE1E8:  LDREX           R2, [R1]
1CE1EC:  SUB             R2, R2, #1
1CE1F0:  STREX           R3, R2, [R1]
1CE1F4:  CMP             R3, #0
1CE1F8:  BNE             loc_1CE1E8
1CE1FC:  DMB             ISH
1CE200:  B               loc_1CE1BC
1CE204:  LDR             R0, [R5,#0x80]
1CE208:  CMP             R0, #0
1CE20C:  BEQ             loc_1CE230
1CE210:  ADD             R0, R0, R9
1CE214:  DMB             ISH
1CE218:  LDREX           R1, [R0]
1CE21C:  SUB             R1, R1, #1
1CE220:  STREX           R2, R1, [R0]
1CE224:  CMP             R2, #0
1CE228:  BNE             loc_1CE218
1CE22C:  DMB             ISH
1CE230:  LDR             R0, [R5,#0x8C]
1CE234:  STR             R6, [R5,#0x80]
1CE238:  CMP             R0, #0
1CE23C:  BEQ             loc_1CE260
1CE240:  ADD             R0, R0, R9
1CE244:  DMB             ISH
1CE248:  LDREX           R1, [R0]
1CE24C:  SUB             R1, R1, #1
1CE250:  STREX           R2, R1, [R0]
1CE254:  CMP             R2, #0
1CE258:  BNE             loc_1CE248
1CE25C:  DMB             ISH
1CE260:  LDR             R0, [R5,#0x98]
1CE264:  STR             R6, [R5,#0x8C]
1CE268:  CMP             R0, #0
1CE26C:  BEQ             loc_1CE290
1CE270:  ADD             R0, R0, R9
1CE274:  DMB             ISH
1CE278:  LDREX           R1, [R0]
1CE27C:  SUB             R1, R1, #1
1CE280:  STREX           R2, R1, [R0]
1CE284:  CMP             R2, #0
1CE288:  BNE             loc_1CE278
1CE28C:  DMB             ISH
1CE290:  LDR             R0, [R5,#0xA4]
1CE294:  STR             R6, [R5,#0x98]
1CE298:  CMP             R0, #0
1CE29C:  BEQ             loc_1CE2C0
1CE2A0:  ADD             R0, R0, R9
1CE2A4:  DMB             ISH
1CE2A8:  LDREX           R1, [R0]
1CE2AC:  SUB             R1, R1, #1
1CE2B0:  STREX           R2, R1, [R0]
1CE2B4:  CMP             R2, #0
1CE2B8:  BNE             loc_1CE2A8
1CE2BC:  DMB             ISH
1CE2C0:  LDR             R0, [R5,R8]
1CE2C4:  STR             R6, [R5,#0xA4]
1CE2C8:  BL              j_FreeThunkEntry
1CE2CC:  MOV             R0, R5; ptr
1CE2D0:  BL              free
1CE2D4:  LDR             R0, [R4,#0x80]
1CE2D8:  ADD             R7, R7, #1
1CE2DC:  CMP             R7, R0
1CE2E0:  BLT             loc_1CE1A8
1CE2E4:  POP             {R4-R9,R11,PC}
