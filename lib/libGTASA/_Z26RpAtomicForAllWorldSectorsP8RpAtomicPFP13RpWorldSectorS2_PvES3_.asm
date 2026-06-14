; =========================================================
; Game Engine Function: _Z26RpAtomicForAllWorldSectorsP8RpAtomicPFP13RpWorldSectorS2_PvES3_
; Address            : 0x21E14C - 0x21E17A
; =========================================================

21E14C:  PUSH            {R4-R7,LR}
21E14E:  ADD             R7, SP, #0xC
21E150:  PUSH.W          {R8,R9,R11}
21E154:  MOV             R8, R0
21E156:  MOV             R9, R2
21E158:  MOV             R5, R8
21E15A:  MOV             R6, R1
21E15C:  LDR.W           R0, [R5,#0x64]!
21E160:  CMP             R0, R5
21E162:  BEQ             loc_21E172
21E164:  LDR             R4, [R0]
21E166:  MOV             R1, R9
21E168:  LDR             R0, [R0,#8]
21E16A:  BLX             R6
21E16C:  CMP             R0, #0
21E16E:  MOV             R0, R4
21E170:  BNE             loc_21E160
21E172:  MOV             R0, R8
21E174:  POP.W           {R8,R9,R11}
21E178:  POP             {R4-R7,PC}
