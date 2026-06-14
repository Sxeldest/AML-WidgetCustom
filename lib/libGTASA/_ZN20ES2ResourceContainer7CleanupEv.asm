; =========================================================
; Game Engine Function: _ZN20ES2ResourceContainer7CleanupEv
; Address            : 0x1CFF42 - 0x1CFF76
; =========================================================

1CFF42:  PUSH            {R4-R7,LR}
1CFF44:  ADD             R7, SP, #0xC
1CFF46:  PUSH.W          {R11}
1CFF4A:  MOV             R4, R0
1CFF4C:  MOVS            R5, #0
1CFF4E:  LDR             R0, [R4,#8]
1CFF50:  STR             R5, [R4,#0x14]
1CFF52:  CBZ             R0, loc_1CFF6E
1CFF54:  MOVS            R6, #0
1CFF56:  LDR             R0, [R4]
1CFF58:  LDR             R1, [R4,#0xC]
1CFF5A:  LDR             R2, [R0]
1CFF5C:  ADD.W           R0, R1, R6,LSL#3
1CFF60:  LDR             R1, [R0,#4]
1CFF62:  MOV             R0, R4
1CFF64:  BLX             R2
1CFF66:  LDR             R0, [R4,#8]
1CFF68:  ADDS            R6, #1
1CFF6A:  CMP             R6, R0
1CFF6C:  BCC             loc_1CFF56
1CFF6E:  STR             R5, [R4,#8]
1CFF70:  POP.W           {R11}
1CFF74:  POP             {R4-R7,PC}
