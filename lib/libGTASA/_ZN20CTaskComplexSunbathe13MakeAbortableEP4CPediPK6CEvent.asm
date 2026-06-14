; =========================================================
; Game Engine Function: _ZN20CTaskComplexSunbathe13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4ED218 - 0x4ED266
; =========================================================

4ED218:  PUSH            {R4-R7,LR}
4ED21A:  ADD             R7, SP, #0xC
4ED21C:  PUSH.W          {R8,R9,R11}
4ED220:  MOV             R5, R3
4ED222:  MOV             R8, R2
4ED224:  MOV             R9, R1
4ED226:  MOV             R4, R0
4ED228:  CBZ             R5, loc_4ED242
4ED22A:  LDR             R0, [R5]
4ED22C:  LDR             R1, [R0,#8]
4ED22E:  MOV             R0, R5
4ED230:  BLX             R1
4ED232:  CMP             R0, #2
4ED234:  BEQ             loc_4ED25E
4ED236:  LDR             R0, [R5]
4ED238:  LDR             R1, [R0,#8]
4ED23A:  MOV             R0, R5
4ED23C:  BLX             R1
4ED23E:  CMP             R0, #3
4ED240:  BEQ             loc_4ED25E
4ED242:  LDR             R0, [R4,#8]
4ED244:  MOV             R2, R8
4ED246:  MOV             R3, R5
4ED248:  LDR             R1, [R0]
4ED24A:  LDR             R6, [R1,#0x1C]
4ED24C:  MOV             R1, R9
4ED24E:  BLX             R6
4ED250:  CMP             R0, #1
4ED252:  BNE             loc_4ED25E
4ED254:  MOVS            R0, #1
4ED256:  STRB            R0, [R4,#0x10]
4ED258:  POP.W           {R8,R9,R11}
4ED25C:  POP             {R4-R7,PC}
4ED25E:  MOVS            R0, #0
4ED260:  POP.W           {R8,R9,R11}
4ED264:  POP             {R4-R7,PC}
