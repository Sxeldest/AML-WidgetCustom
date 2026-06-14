; =========================================================
; Game Engine Function: sub_17E03E
; Address            : 0x17E03E - 0x17E070
; =========================================================

17E03E:  PUSH            {R4,R5,R7,LR}
17E040:  ADD             R7, SP, #8
17E042:  MOV             R4, R0
17E044:  LDR             R0, [R0]
17E046:  CBZ             R0, locret_17E06E
17E048:  CMP             R0, #1
17E04A:  BNE             loc_17E056
17E04C:  LDR             R0, [R4,#4]; void *
17E04E:  CBZ             R0, loc_17E066
17E050:  BLX             j__ZdlPv; operator delete(void *)
17E054:  B               loc_17E066
17E056:  LDR             R0, [R4,#4]; void *
17E058:  LDR             R5, [R0,#8]
17E05A:  BLX             j__ZdlPv; operator delete(void *)
17E05E:  LDR             R0, [R4,#4]
17E060:  CMP             R5, R0
17E062:  MOV             R0, R5
17E064:  BNE             loc_17E058
17E066:  MOVS            R0, #0
17E068:  STRD.W          R0, R0, [R4]
17E06C:  STR             R0, [R4,#8]
17E06E:  POP             {R4,R5,R7,PC}
