; =========================================================
; Game Engine Function: _Z19RpClumpRemoveCameraP7RpClumpP8RwCamera
; Address            : 0x21482C - 0x214858
; =========================================================

21482C:  PUSH            {R7,LR}
21482E:  MOV             R7, SP
214830:  LDR             R2, =(dword_6BD590 - 0x214836)
214832:  ADD             R2, PC; dword_6BD590
214834:  LDR.W           LR, [R2]
214838:  ADD.W           R3, R1, LR
21483C:  LDRD.W          R12, R2, [R3,#4]
214840:  STR.W           R12, [R2]
214844:  LDRD.W          R12, R2, [R3,#4]
214848:  STR.W           R2, [R12,#4]
21484C:  MOVS            R2, #0
21484E:  STR.W           R2, [R1,LR]
214852:  STRD.W          R2, R2, [R3,#4]
214856:  POP             {R7,PC}
