; =========================================================
; Game Engine Function: _ZN7CMatrix10SetRotateYEf
; Address            : 0x44F0F8 - 0x44F148
; =========================================================

44F0F8:  PUSH            {R4-R7,LR}
44F0FA:  ADD             R7, SP, #0xC
44F0FC:  PUSH.W          {R8}
44F100:  VPUSH           {D8}
44F104:  MOV             R5, R0
44F106:  MOVS            R4, #0
44F108:  MOV             R8, R1
44F10A:  MOV.W           R0, #0x3F800000
44F10E:  STR             R4, [R5,#4]
44F110:  STRD.W          R4, R0, [R5,#0x10]
44F114:  MOV             R0, R8; x
44F116:  BLX             sinf
44F11A:  MOV             R6, R0
44F11C:  MOV             R0, R8; x
44F11E:  VMOV            S0, R6
44F122:  STR             R4, [R5,#0x18]
44F124:  STR             R4, [R5,#0x24]
44F126:  STRD.W          R4, R4, [R5,#0x30]
44F12A:  VNEG.F32        S16, S0
44F12E:  STR             R4, [R5,#0x38]
44F130:  BLX             cosf
44F134:  STR             R0, [R5]
44F136:  STR             R6, [R5,#0x20]
44F138:  STR             R0, [R5,#0x28]
44F13A:  VSTR            S16, [R5,#8]
44F13E:  VPOP            {D8}
44F142:  POP.W           {R8}
44F146:  POP             {R4-R7,PC}
