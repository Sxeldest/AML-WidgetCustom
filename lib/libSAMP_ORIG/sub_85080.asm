; =========================================================
; Game Engine Function: sub_85080
; Address            : 0x85080 - 0x8509A
; =========================================================

85080:  PUSH            {R4,R6,R7,LR}
85082:  ADD             R7, SP, #8
85084:  MOV             R4, R0
85086:  LDR             R0, [R0]
85088:  MOVS            R1, #0
8508A:  STR             R1, [R4]
8508C:  CBZ             R0, loc_85096
8508E:  BL              sub_7DE3C
85092:  BLX             j__ZdlPv; operator delete(void *)
85096:  MOV             R0, R4
85098:  POP             {R4,R6,R7,PC}
