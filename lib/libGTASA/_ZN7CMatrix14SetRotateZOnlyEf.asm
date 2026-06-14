; =========================================================
; Game Engine Function: _ZN7CMatrix14SetRotateZOnlyEf
; Address            : 0x44F068 - 0x44F0A8
; =========================================================

44F068:  PUSH            {R4,R5,R7,LR}
44F06A:  ADD             R7, SP, #8
44F06C:  VPUSH           {D8}
44F070:  MOV             R4, R1
44F072:  MOV             R5, R0
44F074:  MOV             R0, R4; x
44F076:  BLX             sinf
44F07A:  MOVS            R1, #0
44F07C:  VMOV            S0, R0
44F080:  MOV.W           R2, #0x3F800000
44F084:  STR             R1, [R5,#0x18]
44F086:  STRD.W          R1, R1, [R5,#0x20]
44F08A:  VNEG.F32        S16, S0
44F08E:  STR             R2, [R5,#0x28]
44F090:  STRD.W          R0, R1, [R5,#4]
44F094:  MOV             R0, R4; x
44F096:  BLX             cosf
44F09A:  STR             R0, [R5]
44F09C:  STR             R0, [R5,#0x14]
44F09E:  VSTR            S16, [R5,#0x10]
44F0A2:  VPOP            {D8}
44F0A6:  POP             {R4,R5,R7,PC}
