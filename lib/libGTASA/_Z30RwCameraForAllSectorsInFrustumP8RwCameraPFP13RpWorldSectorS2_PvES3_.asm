; =========================================================
; Game Engine Function: _Z30RwCameraForAllSectorsInFrustumP8RwCameraPFP13RpWorldSectorS2_PvES3_
; Address            : 0x21E648 - 0x21E67C
; =========================================================

21E648:  PUSH            {R4-R7,LR}
21E64A:  ADD             R7, SP, #0xC
21E64C:  PUSH.W          {R8,R9,R11}
21E650:  MOV             R8, R0
21E652:  LDR             R0, =(dword_6BD638 - 0x21E65C)
21E654:  MOV             R9, R2
21E656:  MOV             R6, R1
21E658:  ADD             R0, PC; dword_6BD638
21E65A:  LDR             R0, [R0]
21E65C:  ADD             R0, R8
21E65E:  LDR             R5, [R0,#8]
21E660:  CBZ             R5, loc_21E674
21E662:  LDR             R4, [R0]
21E664:  LDR             R0, [R4]
21E666:  MOV             R1, R9
21E668:  BLX             R6
21E66A:  CBZ             R0, loc_21E674
21E66C:  SUBS            R5, #1
21E66E:  ADD.W           R4, R4, #4
21E672:  BNE             loc_21E664
21E674:  MOV             R0, R8
21E676:  POP.W           {R8,R9,R11}
21E67A:  POP             {R4-R7,PC}
