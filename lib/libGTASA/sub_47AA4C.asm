; =========================================================
; Game Engine Function: sub_47AA4C
; Address            : 0x47AA4C - 0x47AA72
; =========================================================

47AA4C:  PUSH            {R4,R5,R7,LR}
47AA4E:  ADD             R7, SP, #8
47AA50:  MOV             R4, R0
47AA52:  CMP             R1, #0
47AA54:  LDR.W           R5, [R4,#0x144]
47AA58:  BEQ             loc_47AA68
47AA5A:  LDR             R0, [R4]
47AA5C:  MOVS            R1, #4
47AA5E:  STR             R1, [R0,#0x14]
47AA60:  LDR             R0, [R4]
47AA62:  LDR             R1, [R0]
47AA64:  MOV             R0, R4
47AA66:  BLX             R1
47AA68:  MOVS            R0, #0
47AA6A:  LDR             R1, [R4,#0x20]
47AA6C:  STRD.W          R1, R0, [R5,#0x18]
47AA70:  POP             {R4,R5,R7,PC}
