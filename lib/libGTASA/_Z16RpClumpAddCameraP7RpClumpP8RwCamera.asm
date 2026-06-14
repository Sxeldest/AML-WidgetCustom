; =========================================================
; Game Engine Function: _Z16RpClumpAddCameraP7RpClumpP8RwCamera
; Address            : 0x214800 - 0x214828
; =========================================================

214800:  PUSH            {R4,R6,R7,LR}
214802:  ADD             R7, SP, #8
214804:  LDR             R2, =(dword_6BD590 - 0x214810)
214806:  MOV             R4, R0
214808:  LDR.W           R12, [R4,#0x18]!
21480C:  ADD             R2, PC; dword_6BD590
21480E:  LDR.W           LR, [R2]
214812:  ADD.W           R2, R1, LR
214816:  STR             R4, [R2,#8]
214818:  STR.W           R12, [R2,#4]!
21481C:  LDR             R3, [R4]
21481E:  STR             R2, [R3,#4]
214820:  STR             R2, [R4]
214822:  STR.W           R0, [R1,LR]
214826:  POP             {R4,R6,R7,PC}
