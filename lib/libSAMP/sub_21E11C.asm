; =========================================================
; Game Engine Function: sub_21E11C
; Address            : 0x21E11C - 0x21E13E
; =========================================================

21E11C:  PUSH            {R4,R6,R7,LR}
21E11E:  ADD             R7, SP, #8
21E120:  MOV             R4, R0
21E122:  LDR             R0, =(unk_383F08 - 0x21E128)
21E124:  ADD             R0, PC; unk_383F08 ; mutex
21E126:  BLX             LeaveCriticalSection_0
21E12A:  CBNZ            R0, loc_21E130
21E12C:  MOV             R0, R4
21E12E:  POP             {R4,R6,R7,PC}
21E130:  LDR             R1, [R4]
21E132:  LDR             R0, =(aSFailedToRelea - 0x21E138); "%s failed to release mutex" ...
21E134:  ADD             R0, PC; "%s failed to release mutex"
21E136:  BL              loc_21E164
21E13A:  BL              sub_DC924
