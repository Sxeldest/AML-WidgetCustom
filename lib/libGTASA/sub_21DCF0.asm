; =========================================================
; Game Engine Function: sub_21DCF0
; Address            : 0x21DCF0 - 0x21DD28
; =========================================================

21DCF0:  PUSH            {R4,R5,R7,LR}
21DCF2:  ADD             R7, SP, #8
21DCF4:  MOV             R4, R0
21DCF6:  LDR             R0, =(dword_6BD638 - 0x21DCFC)
21DCF8:  ADD             R0, PC; dword_6BD638
21DCFA:  LDR             R1, [R0]
21DCFC:  ADDS            R5, R4, R1
21DCFE:  LDR             R0, [R4,R1]
21DD00:  CBZ             R0, loc_21DD10
21DD02:  LDR             R1, =(RwEngineInstance_ptr - 0x21DD08)
21DD04:  ADD             R1, PC; RwEngineInstance_ptr
21DD06:  LDR             R1, [R1]; RwEngineInstance
21DD08:  LDR             R1, [R1]
21DD0A:  LDR.W           R1, [R1,#0x130]
21DD0E:  BLX             R1
21DD10:  MOVS            R0, #0
21DD12:  STRD.W          R0, R0, [R5]
21DD16:  STR             R0, [R5,#8]
21DD18:  LDR             R0, [R5,#0x10]
21DD1A:  STR             R0, [R4,#0x18]
21DD1C:  LDR             R0, [R5,#0x14]
21DD1E:  STR             R0, [R4,#0x1C]
21DD20:  LDR             R0, [R5,#0x18]
21DD22:  STR             R0, [R4,#0x10]
21DD24:  MOV             R0, R4
21DD26:  POP             {R4,R5,R7,PC}
