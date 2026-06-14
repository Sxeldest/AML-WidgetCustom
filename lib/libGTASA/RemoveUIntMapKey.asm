; =========================================================
; Game Engine Function: RemoveUIntMapKey
; Address            : 0x23DFC6 - 0x23E12A
; =========================================================

23DFC6:  PUSH            {R4-R7,LR}
23DFC8:  ADD             R7, SP, #0xC
23DFCA:  PUSH.W          {R8-R10}
23DFCE:  MOV             R8, R0
23DFD0:  ADD.W           R6, R8, #0x14
23DFD4:  MOV             R9, R1
23DFD6:  DMB.W           ISH
23DFDA:  LDREX.W         R0, [R6]
23DFDE:  ADDS            R1, R0, #1
23DFE0:  STREX.W         R2, R1, [R6]
23DFE4:  CMP             R2, #0
23DFE6:  BNE             loc_23DFDA
23DFE8:  CMP             R0, #0
23DFEA:  DMB.W           ISH
23DFEE:  BNE             loc_23E02C
23DFF0:  ADD.W           R4, R8, #0x18
23DFF4:  MOVS            R1, #1
23DFF6:  DMB.W           ISH
23DFFA:  LDREX.W         R0, [R4]
23DFFE:  STREX.W         R2, R1, [R4]
23E002:  CMP             R2, #0
23E004:  BNE             loc_23DFFA
23E006:  CMP             R0, #1
23E008:  DMB.W           ISH
23E00C:  BNE             loc_23E02C
23E00E:  MOVS            R5, #1
23E010:  BLX             sched_yield
23E014:  DMB.W           ISH
23E018:  LDREX.W         R0, [R4]
23E01C:  STREX.W         R1, R5, [R4]
23E020:  CMP             R1, #0
23E022:  BNE             loc_23E018
23E024:  CMP             R0, #1
23E026:  DMB.W           ISH
23E02A:  BEQ             loc_23E010
23E02C:  ADD.W           R4, R8, #0x20 ; ' '
23E030:  MOVS            R1, #1
23E032:  DMB.W           ISH
23E036:  LDREX.W         R0, [R4]
23E03A:  STREX.W         R2, R1, [R4]
23E03E:  CMP             R2, #0
23E040:  BNE             loc_23E036
23E042:  CMP             R0, #1
23E044:  DMB.W           ISH
23E048:  BNE             loc_23E068
23E04A:  MOVS            R5, #1
23E04C:  BLX             sched_yield
23E050:  DMB.W           ISH
23E054:  LDREX.W         R0, [R4]
23E058:  STREX.W         R1, R5, [R4]
23E05C:  CMP             R1, #0
23E05E:  BNE             loc_23E054
23E060:  CMP             R0, #1
23E062:  DMB.W           ISH
23E066:  BEQ             loc_23E04C
23E068:  LDR.W           R12, [R8,#4]
23E06C:  MOV.W           R10, #0
23E070:  CMP.W           R12, #1
23E074:  BLT             loc_23E0D6
23E076:  BNE             loc_23E080
23E078:  LDR.W           R0, [R8]
23E07C:  MOVS            R2, #0
23E07E:  B               loc_23E0A4
23E080:  LDR.W           R0, [R8]
23E084:  SUB.W           R3, R12, #1
23E088:  MOVS            R2, #0
23E08A:  SUBS            R1, R3, R2
23E08C:  ADD.W           R1, R1, R1,LSR#31
23E090:  ADD.W           R1, R2, R1,ASR#1
23E094:  LDR.W           R5, [R0,R1,LSL#3]
23E098:  CMP             R5, R9
23E09A:  ITE CS
23E09C:  MOVCS           R3, R1
23E09E:  ADDCC           R2, R1, #1
23E0A0:  CMP             R3, R2
23E0A2:  BGT             loc_23E08A
23E0A4:  LDR.W           R1, [R0,R2,LSL#3]
23E0A8:  CMP             R1, R9
23E0AA:  BNE             loc_23E0D6
23E0AC:  ADD.W           R0, R0, R2,LSL#3; dest
23E0B0:  SUB.W           R3, R12, #1
23E0B4:  CMP             R3, R2
23E0B6:  LDR.W           R9, [R0,#4]
23E0BA:  BLE             loc_23E0CC
23E0BC:  SUBS            R2, R3, R2
23E0BE:  ADD.W           R1, R0, #8; src
23E0C2:  LSLS            R2, R2, #3; n
23E0C4:  BLX             memmove_1
23E0C8:  LDR.W           R12, [R8,#4]
23E0CC:  SUB.W           R0, R12, #1
23E0D0:  STR.W           R0, [R8,#4]
23E0D4:  B               loc_23E0DA
23E0D6:  MOV.W           R9, #0
23E0DA:  DMB.W           ISH
23E0DE:  LDREX.W         R0, [R4]
23E0E2:  STREX.W         R0, R10, [R4]
23E0E6:  CMP             R0, #0
23E0E8:  BNE             loc_23E0DE
23E0EA:  DMB.W           ISH
23E0EE:  DMB.W           ISH
23E0F2:  LDREX.W         R0, [R6]
23E0F6:  SUBS            R1, R0, #1
23E0F8:  STREX.W         R2, R1, [R6]
23E0FC:  CMP             R2, #0
23E0FE:  BNE             loc_23E0F2
23E100:  CMP             R0, #1
23E102:  DMB.W           ISH
23E106:  BNE             loc_23E122
23E108:  ADD.W           R0, R8, #0x18
23E10C:  MOVS            R1, #0
23E10E:  DMB.W           ISH
23E112:  LDREX.W         R2, [R0]
23E116:  STREX.W         R2, R1, [R0]
23E11A:  CMP             R2, #0
23E11C:  BNE             loc_23E112
23E11E:  DMB.W           ISH
23E122:  MOV             R0, R9
23E124:  POP.W           {R8-R10}
23E128:  POP             {R4-R7,PC}
