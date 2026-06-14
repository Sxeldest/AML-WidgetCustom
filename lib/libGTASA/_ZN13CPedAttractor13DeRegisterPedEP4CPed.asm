; =========================================================
; Game Engine Function: _ZN13CPedAttractor13DeRegisterPedEP4CPed
; Address            : 0x4A90BA - 0x4A9140
; =========================================================

4A90BA:  PUSH            {R4-R7,LR}
4A90BC:  ADD             R7, SP, #0xC
4A90BE:  PUSH.W          {R11}
4A90C2:  MOV             R6, R0
4A90C4:  MOV             R5, R1
4A90C6:  LDR             R1, [R6,#0x28]
4A90C8:  CBZ             R1, loc_4A90FA
4A90CA:  ADD.W           R3, R1, R1,LSL#2
4A90CE:  MOV             R2, #0xFFFFFFEC
4A90D2:  LDR             R0, [R6,#0x2C]; dest
4A90D4:  ADD.W           R2, R2, R3,LSL#2; n
4A90D8:  MOVS            R3, #0
4A90DA:  LDR             R4, [R0]
4A90DC:  CMP             R4, R5
4A90DE:  BEQ             loc_4A90EC
4A90E0:  ADDS            R3, #1
4A90E2:  ADDS            R0, #0x14
4A90E4:  SUBS            R2, #0x14
4A90E6:  CMP             R3, R1
4A90E8:  BCC             loc_4A90DA
4A90EA:  B               loc_4A90FA
4A90EC:  ADD.W           R1, R0, #0x14; src
4A90F0:  BLX             memmove_1
4A90F4:  LDR             R0, [R6,#0x28]
4A90F6:  SUBS            R0, #1
4A90F8:  STR             R0, [R6,#0x28]
4A90FA:  LDR             R1, [R6,#0x10]
4A90FC:  CBZ             R1, loc_4A911A
4A90FE:  MOV             R0, #0xFFFFFFFC
4A9102:  ADD.W           R2, R0, R1,LSL#2; n
4A9106:  LDR             R0, [R6,#0x14]; dest
4A9108:  MOVS            R3, #0
4A910A:  LDR             R4, [R0]
4A910C:  CMP             R4, R5
4A910E:  BEQ             loc_4A912C
4A9110:  ADDS            R3, #1
4A9112:  ADDS            R0, #4
4A9114:  SUBS            R2, #4
4A9116:  CMP             R3, R1
4A9118:  BCC             loc_4A910A
4A911A:  LDR             R0, [R6]
4A911C:  MOV             R1, R5
4A911E:  LDR             R2, [R0,#0x18]
4A9120:  MOV             R0, R6
4A9122:  POP.W           {R11}
4A9126:  POP.W           {R4-R7,LR}
4A912A:  BX              R2
4A912C:  ADDS            R1, R0, #4; src
4A912E:  BLX             memmove_1
4A9132:  LDR             R0, [R6,#0x10]
4A9134:  SUBS            R0, #1
4A9136:  STR             R0, [R6,#0x10]
4A9138:  MOVS            R0, #1
4A913A:  POP.W           {R11}
4A913E:  POP             {R4-R7,PC}
