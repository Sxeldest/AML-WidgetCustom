; =========================================================
; Game Engine Function: sub_18A29A
; Address            : 0x18A29A - 0x18A2DA
; =========================================================

18A29A:  PUSH            {R4,R5,R7,LR}
18A29C:  ADD             R7, SP, #8
18A29E:  MOV             R4, R0
18A2A0:  LDR             R0, [R0]
18A2A2:  CBZ             R0, locret_18A2D8
18A2A4:  CMP             R0, #1
18A2A6:  BNE             loc_18A2B8
18A2A8:  LDR             R0, [R4,#4]; void *
18A2AA:  CBZ             R0, loc_18A2B0
18A2AC:  BLX             j__ZdlPv; operator delete(void *)
18A2B0:  MOVS            R0, #0
18A2B2:  STRD.W          R0, R0, [R4,#4]
18A2B6:  B               loc_18A2D6
18A2B8:  LDRD.W          R1, R0, [R4,#4]; void *
18A2BC:  LDRD.W          R2, R3, [R0,#4]
18A2C0:  CMP             R0, R1
18A2C2:  STR             R3, [R2,#8]
18A2C4:  LDR             R5, [R0,#8]
18A2C6:  STR             R2, [R5,#4]
18A2C8:  IT EQ
18A2CA:  STREQ           R5, [R4,#4]
18A2CC:  BLX             j__ZdlPv; operator delete(void *)
18A2D0:  LDR             R0, [R4]
18A2D2:  STR             R5, [R4,#8]
18A2D4:  SUBS            R0, #1
18A2D6:  STR             R0, [R4]
18A2D8:  POP             {R4,R5,R7,PC}
