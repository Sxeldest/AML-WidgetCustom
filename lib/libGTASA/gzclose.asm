; =========================================================
; Game Engine Function: gzclose
; Address            : 0x20D090 - 0x20D174
; =========================================================

20D090:  PUSH            {R4-R7,LR}
20D092:  ADD             R7, SP, #0xC
20D094:  PUSH.W          {R8,R9,R11}
20D098:  MOV             R4, R0
20D09A:  CBZ             R4, loc_20D100
20D09C:  LDRB.W          R0, [R4,#0x5C]
20D0A0:  CMP             R0, #0x77 ; 'w'
20D0A2:  BNE             loc_20D168
20D0A4:  LDR             R1, [R4,#0x10]
20D0A6:  MOVS            R6, #0
20D0A8:  MOV             R9, #0xFFFFFFFB
20D0AC:  MOV.W           R8, #0x4000
20D0B0:  STR             R6, [R4,#4]
20D0B2:  RSBS.W          R5, R1, #0x4000
20D0B6:  BEQ             loc_20D0CE
20D0B8:  LDR             R3, [R4,#0x40]; s
20D0BA:  MOVS            R1, #1; size
20D0BC:  LDR             R0, [R4,#0x48]; ptr
20D0BE:  MOV             R2, R5; n
20D0C0:  BLX             fwrite
20D0C4:  CMP             R0, R5
20D0C6:  BNE             loc_20D162
20D0C8:  LDR             R0, [R4,#0x48]
20D0CA:  STRD.W          R0, R8, [R4,#0xC]
20D0CE:  CBNZ            R6, loc_20D10A
20D0D0:  MOV             R0, R4
20D0D2:  MOVS            R1, #4
20D0D4:  BLX             j_deflate
20D0D8:  EOR.W           R2, R0, R9
20D0DC:  LDR             R1, [R4,#0x10]
20D0DE:  ORRS            R2, R5
20D0E0:  IT NE
20D0E2:  MOVNE           R2, R0
20D0E4:  CMP             R2, #1
20D0E6:  MOV             R0, R2
20D0E8:  STR             R2, [R4,#0x38]
20D0EA:  IT NE
20D0EC:  MOVNE           R0, #0
20D0EE:  CMP             R1, #0
20D0F0:  MOV             R3, R1
20D0F2:  IT NE
20D0F4:  MOVNE           R3, #1
20D0F6:  CMP             R2, #2
20D0F8:  ORR.W           R6, R3, R0
20D0FC:  BCC             loc_20D0B2
20D0FE:  B               loc_20D168
20D100:  MOV             R0, #0xFFFFFFFE
20D104:  POP.W           {R8,R9,R11}
20D108:  POP             {R4-R7,PC}
20D10A:  LDR             R0, [R4,#0x38]
20D10C:  CMP             R0, #1
20D10E:  BHI             loc_20D168
20D110:  LDR             R5, [R4,#0x40]
20D112:  LDR             R6, [R4,#0x4C]
20D114:  MOV             R1, R5; stream
20D116:  UXTB            R0, R6; c
20D118:  BLX             fputc
20D11C:  UBFX.W          R0, R6, #8, #8; c
20D120:  MOV             R1, R5; stream
20D122:  BLX             fputc
20D126:  UBFX.W          R0, R6, #0x10, #8; c
20D12A:  MOV             R1, R5; stream
20D12C:  BLX             fputc
20D130:  LSRS            R0, R6, #0x18; c
20D132:  MOV             R1, R5; stream
20D134:  BLX             fputc
20D138:  LDR             R6, [R4,#8]
20D13A:  LDR             R5, [R4,#0x40]
20D13C:  UXTB            R0, R6; c
20D13E:  MOV             R1, R5; stream
20D140:  BLX             fputc
20D144:  UBFX.W          R0, R6, #8, #8; c
20D148:  MOV             R1, R5; stream
20D14A:  BLX             fputc
20D14E:  UBFX.W          R0, R6, #0x10, #8; c
20D152:  MOV             R1, R5; stream
20D154:  BLX             fputc
20D158:  LSRS            R0, R6, #0x18; c
20D15A:  MOV             R1, R5; stream
20D15C:  BLX             fputc
20D160:  B               loc_20D168
20D162:  MOV.W           R0, #0xFFFFFFFF
20D166:  STR             R0, [R4,#0x38]
20D168:  MOV             R0, R4
20D16A:  POP.W           {R8,R9,R11}
20D16E:  POP.W           {R4-R7,LR}
20D172:  B               sub_20D174
