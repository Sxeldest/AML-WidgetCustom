; =========================================================
; Game Engine Function: _ZN7CMatrix14SetRotateYOnlyEf
; Address            : 0x44F016 - 0x44F068
; =========================================================

44F016:  PUSH            {R4-R7,LR}
44F018:  ADD             R7, SP, #0xC
44F01A:  PUSH.W          {R8}
44F01E:  VPUSH           {D8}
44F022:  MOV             R4, R1
44F024:  MOV             R5, R0
44F026:  MOV.W           R8, #0
44F02A:  MOV             R0, R4; x
44F02C:  STR.W           R8, [R5,#4]
44F030:  BLX             sinf
44F034:  MOV             R6, R0
44F036:  MOV.W           R0, #0x3F800000
44F03A:  VMOV            S0, R6
44F03E:  STRD.W          R8, R0, [R5,#0x10]
44F042:  MOV             R0, R4; x
44F044:  STR.W           R8, [R5,#0x18]
44F048:  VNEG.F32        S16, S0
44F04C:  STR.W           R8, [R5,#0x24]
44F050:  BLX             cosf
44F054:  STR             R0, [R5]
44F056:  STR             R6, [R5,#0x20]
44F058:  STR             R0, [R5,#0x28]
44F05A:  VSTR            S16, [R5,#8]
44F05E:  VPOP            {D8}
44F062:  POP.W           {R8}
44F066:  POP             {R4-R7,PC}
