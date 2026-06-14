; =========================================================
; Game Engine Function: sub_17E070
; Address            : 0x17E070 - 0x17E0B0
; =========================================================

17E070:  PUSH            {R4,R5,R7,LR}
17E072:  ADD             R7, SP, #8
17E074:  MOV             R4, R0
17E076:  LDR             R0, [R0]
17E078:  CBZ             R0, locret_17E0AE
17E07A:  CMP             R0, #1
17E07C:  BNE             loc_17E08E
17E07E:  LDR             R0, [R4,#4]; void *
17E080:  CBZ             R0, loc_17E086
17E082:  BLX             j__ZdlPv; operator delete(void *)
17E086:  MOVS            R0, #0
17E088:  STRD.W          R0, R0, [R4,#4]
17E08C:  B               loc_17E0AC
17E08E:  LDRD.W          R1, R0, [R4,#4]; void *
17E092:  LDRD.W          R2, R3, [R0,#4]
17E096:  CMP             R0, R1
17E098:  STR             R3, [R2,#8]
17E09A:  LDR             R5, [R0,#8]
17E09C:  STR             R2, [R5,#4]
17E09E:  IT EQ
17E0A0:  STREQ           R5, [R4,#4]
17E0A2:  BLX             j__ZdlPv; operator delete(void *)
17E0A6:  LDR             R0, [R4]
17E0A8:  STR             R5, [R4,#8]
17E0AA:  SUBS            R0, #1
17E0AC:  STR             R0, [R4]
17E0AE:  POP             {R4,R5,R7,PC}
