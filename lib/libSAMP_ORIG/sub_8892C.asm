; =========================================================
; Game Engine Function: sub_8892C
; Address            : 0x8892C - 0x889DE
; =========================================================

8892C:  PUSH            {R4-R7,LR}
8892E:  ADD             R7, SP, #0xC
88930:  PUSH.W          {R8-R11}
88934:  ADD.W           R12, R0, R1
88938:  MOV             R1, R0
8893A:  SUB.W           LR, R12, #1
8893E:  CMP             LR, R0
88940:  BLS             loc_889D2
88942:  MOV.W           R11, #0
88946:  MOV.W           R9, #0xC0
8894A:  MOV.W           R10, #2
8894E:  MOVW            R8, #0x8DF0
88952:  MOV             R1, R0
88954:  B               loc_88960
88956:  STRB.W          R5, [R1],#1
8895A:  ADDS            R2, #2
8895C:  CMP             R1, LR
8895E:  BCS             loc_889D2
88960:  CBZ             R3, loc_88966
88962:  CMP             R2, R3
88964:  BCS             loc_889D2
88966:  LDRH            R5, [R2]
88968:  CBZ             R5, loc_889D2
8896A:  CMP             R5, #0x7F
8896C:  BLS             loc_88956
8896E:  MVNS            R4, R1
88970:  CMP.W           R11, R5,LSR#11
88974:  ADD             R4, R12
88976:  BNE             loc_88988
88978:  CMP             R4, #2
8897A:  BLT             loc_889B2
8897C:  ADD.W           R4, R9, R5,LSR#6
88980:  STRB            R4, [R1]
88982:  MOVS            R6, #2
88984:  MOVS            R4, #1
88986:  B               loc_889C8
88988:  AND.W           R6, R5, #0xFC00
8898C:  CMP.W           R6, #0xDC00
88990:  BEQ             loc_889B2
88992:  CMP.W           R6, #0xD800
88996:  BNE             loc_889AE
88998:  CMP             R4, #4
8899A:  BLT             loc_889B2
8899C:  LSRS            R4, R5, #6
8899E:  STRH.W          R8, [R1]
889A2:  BFI.W           R4, R10, #6, #0x1A
889A6:  STRB            R4, [R1,#2]
889A8:  MOVS            R6, #4
889AA:  MOVS            R4, #3
889AC:  B               loc_889C8
889AE:  CMP             R4, #3
889B0:  BGE             loc_889B6
889B2:  MOVS            R6, #0
889B4:  B               loc_889CE
889B6:  LSRS            R6, R5, #6
889B8:  MOVS            R4, #2
889BA:  BFI.W           R6, R4, #6, #0x1A
889BE:  STRB            R6, [R1,#1]
889C0:  LSRS            R6, R5, #0xC
889C2:  ADDS            R6, #0xE0
889C4:  STRB            R6, [R1]
889C6:  MOVS            R6, #3
889C8:  BFI.W           R5, R10, #6, #0x1A
889CC:  STRB            R5, [R1,R4]
889CE:  ADD             R1, R6
889D0:  B               loc_8895A
889D2:  MOVS            R2, #0
889D4:  SUBS            R0, R1, R0
889D6:  STRB            R2, [R1]
889D8:  POP.W           {R8-R11}
889DC:  POP             {R4-R7,PC}
