; =========================================================
; Game Engine Function: sub_159660
; Address            : 0x159660 - 0x159682
; =========================================================

159660:  PUSH            {R7,LR}
159662:  MOV             R7, SP
159664:  SUB             SP, SP, #8
159666:  LDR             R2, =(unk_381A14 - 0x159670)
159668:  ADD             R1, SP, #0x10+var_C
15966A:  STR             R0, [SP,#0x10+var_C]
15966C:  ADD             R2, PC; unk_381A14
15966E:  MOV             R0, R2
159670:  BL              sub_159A70
159674:  CBZ             R0, loc_15967A
159676:  LDR             R0, [R0,#0xC]
159678:  B               loc_15967E
15967A:  LDR             R0, =(aBassErrorUnkno - 0x159680); "BASS_ERROR_UNKNOWN" ...
15967C:  ADD             R0, PC; "BASS_ERROR_UNKNOWN"
15967E:  ADD             SP, SP, #8
159680:  POP             {R7,PC}
