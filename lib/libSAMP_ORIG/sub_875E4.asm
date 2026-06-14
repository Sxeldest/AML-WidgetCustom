; =========================================================
; Game Engine Function: sub_875E4
; Address            : 0x875E4 - 0x87618
; =========================================================

875E4:  PUSH            {R4,R5,R7,LR}
875E6:  ADD             R7, SP, #8
875E8:  MOV             R4, R0
875EA:  LDR             R0, [R0]
875EC:  CBZ             R0, loc_87614
875EE:  CMP             R0, #1
875F0:  BNE             loc_875FC
875F2:  LDR             R0, [R4,#4]; void *
875F4:  CBZ             R0, loc_8760C
875F6:  BLX             j__ZdlPv; operator delete(void *)
875FA:  B               loc_8760C
875FC:  LDR             R0, [R4,#4]; void *
875FE:  LDR             R5, [R0,#8]
87600:  BLX             j__ZdlPv; operator delete(void *)
87604:  LDR             R0, [R4,#4]
87606:  CMP             R5, R0
87608:  MOV             R0, R5
8760A:  BNE             loc_875FE
8760C:  MOVS            R0, #0
8760E:  STRD.W          R0, R0, [R4]
87612:  STR             R0, [R4,#8]
87614:  MOV             R0, R4
87616:  POP             {R4,R5,R7,PC}
