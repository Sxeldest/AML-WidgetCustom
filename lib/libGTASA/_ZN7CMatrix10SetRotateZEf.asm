; =========================================================
; Game Engine Function: _ZN7CMatrix10SetRotateZEf
; Address            : 0x44F148 - 0x44F196
; =========================================================

44F148:  PUSH            {R4-R7,LR}
44F14A:  ADD             R7, SP, #0xC
44F14C:  PUSH.W          {R11}
44F150:  VPUSH           {D8}
44F154:  MOV             R4, R1
44F156:  MOV             R5, R0
44F158:  MOVS            R6, #0
44F15A:  MOV             R0, R4; x
44F15C:  STR             R6, [R5,#8]
44F15E:  STR             R6, [R5,#0x18]
44F160:  STRD.W          R6, R6, [R5,#0x20]
44F164:  BLX             sinf
44F168:  VMOV            S0, R0
44F16C:  MOV.W           R1, #0x3F800000
44F170:  STR             R1, [R5,#0x28]
44F172:  STRD.W          R6, R6, [R5,#0x30]
44F176:  VNEG.F32        S16, S0
44F17A:  STR             R6, [R5,#0x38]
44F17C:  STR             R0, [R5,#4]
44F17E:  MOV             R0, R4; x
44F180:  BLX             cosf
44F184:  STR             R0, [R5]
44F186:  STR             R0, [R5,#0x14]
44F188:  VSTR            S16, [R5,#0x10]
44F18C:  VPOP            {D8}
44F190:  POP.W           {R11}
44F194:  POP             {R4-R7,PC}
