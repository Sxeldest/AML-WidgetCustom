; =========================================================
; Game Engine Function: sub_18A2DA
; Address            : 0x18A2DA - 0x18A30C
; =========================================================

18A2DA:  PUSH            {R4,R5,R7,LR}
18A2DC:  ADD             R7, SP, #8
18A2DE:  MOV             R4, R0
18A2E0:  LDR             R0, [R0]
18A2E2:  CBZ             R0, locret_18A30A
18A2E4:  CMP             R0, #1
18A2E6:  BNE             loc_18A2F2
18A2E8:  LDR             R0, [R4,#4]; void *
18A2EA:  CBZ             R0, loc_18A302
18A2EC:  BLX             j__ZdlPv; operator delete(void *)
18A2F0:  B               loc_18A302
18A2F2:  LDR             R0, [R4,#4]; void *
18A2F4:  LDR             R5, [R0,#8]
18A2F6:  BLX             j__ZdlPv; operator delete(void *)
18A2FA:  LDR             R0, [R4,#4]
18A2FC:  CMP             R5, R0
18A2FE:  MOV             R0, R5
18A300:  BNE             loc_18A2F4
18A302:  MOVS            R0, #0
18A304:  STRD.W          R0, R0, [R4]
18A308:  STR             R0, [R4,#8]
18A30A:  POP             {R4,R5,R7,PC}
