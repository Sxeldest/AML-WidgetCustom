; =========================================================
; Game Engine Function: sub_127078
; Address            : 0x127078 - 0x1270A6
; =========================================================

127078:  PUSH            {R4,R6,R7,LR}
12707A:  ADD             R7, SP, #8
12707C:  MOV             R4, R0
12707E:  LDR             R0, [R0,#4]
127080:  CBZ             R0, loc_127084
127082:  POP             {R4,R6,R7,PC}
127084:  MOVS            R0, #0x34 ; '4'; unsigned int
127086:  BLX             j__Znwj; operator new(uint)
12708A:  MOVS            R1, #0
12708C:  MOV.W           R2, #0xFFFFFFFF
127090:  STRD.W          R1, R2, [R0,#0x2C]
127094:  MOV             R2, R0
127096:  STR.W           R1, [R2,#8]!
12709A:  STRB            R1, [R0]
12709C:  STRD.W          R1, R1, [R0,#0xC]
1270A0:  STR             R2, [R0,#4]
1270A2:  STR             R0, [R4,#4]
1270A4:  POP             {R4,R6,R7,PC}
