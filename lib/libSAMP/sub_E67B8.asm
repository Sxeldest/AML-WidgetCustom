; =========================================================
; Game Engine Function: sub_E67B8
; Address            : 0xE67B8 - 0xE67E4
; =========================================================

E67B8:  PUSH            {R4,R6,R7,LR}
E67BA:  ADD             R7, SP, #8
E67BC:  MOV             R4, R0
E67BE:  LDR             R0, [R1,#0x10]
E67C0:  CBZ             R0, loc_E67CE
E67C2:  CMP             R1, R0
E67C4:  BEQ             loc_E67D4
E67C6:  LDR             R1, [R0]
E67C8:  LDR             R1, [R1,#8]
E67CA:  BLX             R1
E67CC:  B               loc_E67D0
E67CE:  MOVS            R0, #0
E67D0:  STR             R0, [R4,#0x10]
E67D2:  B               loc_E67E0
E67D4:  STR             R4, [R4,#0x10]
E67D6:  LDR             R0, [R1,#0x10]
E67D8:  LDR             R1, [R0]
E67DA:  LDR             R2, [R1,#0xC]
E67DC:  MOV             R1, R4
E67DE:  BLX             R2
E67E0:  MOV             R0, R4
E67E2:  POP             {R4,R6,R7,PC}
