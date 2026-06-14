; =========================================================
; Game Engine Function: _ZN22CScriptResourceManager25RemoveFromResourceManagerEijP14CRunningScript
; Address            : 0x3351AA - 0x335212
; =========================================================

3351AA:  PUSH            {R4-R7,LR}
3351AC:  ADD             R7, SP, #0xC
3351AE:  PUSH.W          {R11}
3351B2:  ADDS            R4, R0, #4
3351B4:  MOV.W           LR, #0xFFFFFFFF
3351B8:  MOV.W           R12, #0
3351BC:  MOVS            R5, #0
3351BE:  LDR.W           R6, [R4,#-4]
3351C2:  CMP             R6, R1
3351C4:  ITT EQ
3351C6:  LDRHEQ          R6, [R4,#4]
3351C8:  CMPEQ           R6, R2
3351CA:  BNE             loc_3351DE
3351CC:  LDR             R6, [R4]
3351CE:  CMP             R6, R3
3351D0:  MOV.W           R6, #0
3351D4:  IT EQ
3351D6:  MOVEQ           LR, R5
3351D8:  IT NE
3351DA:  MOVNE           R6, #1
3351DC:  ADD             R12, R6
3351DE:  ADDS            R5, #1
3351E0:  ADDS            R4, #0xC
3351E2:  CMP             R5, #0x4B ; 'K'
3351E4:  BNE             loc_3351BE
3351E6:  ADDS.W          R1, LR, #1
3351EA:  BEQ             loc_335202
3351EC:  ADD.W           R1, LR, LR,LSL#1
3351F0:  MOV.W           R2, #0xFFFFFFFF
3351F4:  STR.W           R2, [R0,R1,LSL#2]
3351F8:  ADD.W           R0, R0, R1,LSL#2
3351FC:  MOVS            R1, #0
3351FE:  STRH            R1, [R0,#8]
335200:  STR             R1, [R0,#4]
335202:  MOVS            R0, #0
335204:  CMP.W           R12, #0
335208:  IT EQ
33520A:  MOVEQ           R0, #1
33520C:  POP.W           {R11}
335210:  POP             {R4-R7,PC}
