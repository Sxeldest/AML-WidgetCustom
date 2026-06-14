; =========================================================
; Game Engine Function: sub_15F2BA
; Address            : 0x15F2BA - 0x15F2EE
; =========================================================

15F2BA:  PUSH            {R4,R5,R7,LR}
15F2BC:  ADD             R7, SP, #8
15F2BE:  MOV             R4, R0
15F2C0:  LDR             R0, [R0,#0xC]
15F2C2:  CBZ             R0, locret_15F2EC
15F2C4:  LDR             R0, [R4,#8]; void *
15F2C6:  CBZ             R0, loc_15F2D4
15F2C8:  LDR             R5, [R0]
15F2CA:  BLX             j__ZdlPv; operator delete(void *)
15F2CE:  CMP             R5, #0
15F2D0:  MOV             R0, R5
15F2D2:  BNE             loc_15F2C8
15F2D4:  LDR             R1, [R4,#4]
15F2D6:  MOVS            R0, #0
15F2D8:  STR             R0, [R4,#8]
15F2DA:  CBZ             R1, loc_15F2EA
15F2DC:  MOVS            R2, #0
15F2DE:  LDR             R3, [R4]
15F2E0:  STR.W           R0, [R3,R2,LSL#2]
15F2E4:  ADDS            R2, #1
15F2E6:  CMP             R1, R2
15F2E8:  BNE             loc_15F2DE
15F2EA:  STR             R0, [R4,#0xC]
15F2EC:  POP             {R4,R5,R7,PC}
