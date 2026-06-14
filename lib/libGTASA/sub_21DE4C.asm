; =========================================================
; Game Engine Function: sub_21DE4C
; Address            : 0x21DE4C - 0x21DE68
; =========================================================

21DE4C:  PUSH            {R4,R6,R7,LR}
21DE4E:  ADD             R7, SP, #8
21DE50:  MOV             R4, R0
21DE52:  LDR             R0, =(dword_6BD640 - 0x21DE58)
21DE54:  ADD             R0, PC; dword_6BD640
21DE56:  LDR             R0, [R0]
21DE58:  LDR             R0, [R1,R0]
21DE5A:  CMP             R0, #0
21DE5C:  ITT NE
21DE5E:  MOVNE           R1, R4
21DE60:  BLXNE           j__Z15RpWorldAddClumpP7RpWorldP7RpClump; RpWorldAddClump(RpWorld *,RpClump *)
21DE64:  MOV             R0, R4
21DE66:  POP             {R4,R6,R7,PC}
