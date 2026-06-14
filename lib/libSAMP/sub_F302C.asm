; =========================================================
; Game Engine Function: sub_F302C
; Address            : 0xF302C - 0xF30CC
; =========================================================

F302C:  PUSH            {R4-R7,LR}
F302E:  ADD             R7, SP, #0xC
F3030:  PUSH.W          {R11}
F3034:  SUB             SP, SP, #0x10
F3036:  CMP             R1, R0
F3038:  BEQ             loc_F30C4
F303A:  MOV             R5, R0
F303C:  LDR             R0, [R0,#0x10]
F303E:  MOV             R4, R1
F3040:  CMP             R0, R5
F3042:  BEQ             loc_F3050
F3044:  LDR             R1, [R4,#0x10]
F3046:  CMP             R4, R1
F3048:  BEQ             loc_F306C
F304A:  STR             R1, [R5,#0x10]
F304C:  STR             R0, [R4,#0x10]
F304E:  B               loc_F30C4
F3050:  LDR             R1, [R4,#0x10]
F3052:  CMP             R1, R4
F3054:  BEQ             loc_F3086
F3056:  LDR             R1, [R0]
F3058:  LDR             R2, [R1,#0xC]
F305A:  MOV             R1, R4
F305C:  BLX             R2
F305E:  LDR             R0, [R5,#0x10]
F3060:  LDR             R1, [R0]
F3062:  LDR             R1, [R1,#0x10]
F3064:  BLX             R1
F3066:  LDR             R0, [R4,#0x10]
F3068:  STR             R0, [R5,#0x10]
F306A:  B               loc_F30C2
F306C:  LDR             R0, [R1]
F306E:  LDR             R2, [R0,#0xC]
F3070:  MOV             R0, R1
F3072:  MOV             R1, R5
F3074:  BLX             R2
F3076:  LDR             R0, [R4,#0x10]
F3078:  LDR             R1, [R0]
F307A:  LDR             R1, [R1,#0x10]
F307C:  BLX             R1
F307E:  LDR             R0, [R5,#0x10]
F3080:  STR             R0, [R4,#0x10]
F3082:  STR             R5, [R5,#0x10]
F3084:  B               loc_F30C4
F3086:  LDR             R1, [R0]
F3088:  LDR             R2, [R1,#0xC]
F308A:  MOV             R1, SP
F308C:  BLX             R2
F308E:  LDR             R0, [R5,#0x10]
F3090:  LDR             R1, [R0]
F3092:  LDR             R1, [R1,#0x10]
F3094:  BLX             R1
F3096:  MOVS            R6, #0
F3098:  STR             R6, [R5,#0x10]
F309A:  LDR             R0, [R4,#0x10]
F309C:  LDR             R1, [R0]
F309E:  LDR             R2, [R1,#0xC]
F30A0:  MOV             R1, R5
F30A2:  BLX             R2
F30A4:  LDR             R0, [R4,#0x10]
F30A6:  LDR             R1, [R0]
F30A8:  LDR             R1, [R1,#0x10]
F30AA:  BLX             R1
F30AC:  LDR             R0, [SP,#0x20+var_20]
F30AE:  STR             R6, [R4,#0x10]
F30B0:  STR             R5, [R5,#0x10]
F30B2:  LDR             R2, [R0,#0xC]
F30B4:  MOV             R0, SP
F30B6:  MOV             R1, R4
F30B8:  BLX             R2
F30BA:  LDR             R0, [SP,#0x20+var_20]
F30BC:  LDR             R1, [R0,#0x10]
F30BE:  MOV             R0, SP
F30C0:  BLX             R1
F30C2:  STR             R4, [R4,#0x10]
F30C4:  ADD             SP, SP, #0x10
F30C6:  POP.W           {R11}
F30CA:  POP             {R4-R7,PC}
