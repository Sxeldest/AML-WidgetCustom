; =========================================================
; Game Engine Function: sub_FB94C
; Address            : 0xFB94C - 0xFB9DC
; =========================================================

FB94C:  PUSH            {R4-R7,LR}
FB94E:  ADD             R7, SP, #0xC
FB950:  PUSH.W          {R8-R11}
FB954:  SUB             SP, SP, #0xC
FB956:  LDR             R1, =(aAxl - 0xFB960); "AXL" ...
FB958:  MOVS            R0, #4; prio
FB95A:  LDR             R2, =(aLoadingSampTex - 0xFB962); "Loading SAMP texture database.." ...
FB95C:  ADD             R1, PC; "AXL"
FB95E:  ADD             R2, PC; "Loading SAMP texture database.."
FB960:  MOV             R9, R1
FB962:  BLX             __android_log_print
FB966:  LDR             R0, =(off_2473FC - 0xFB96C)
FB968:  ADD             R0, PC; off_2473FC
FB96A:  LDR             R0, [R0]
FB96C:  BLX             R0
FB96E:  STR             R0, [SP,#0x28+var_24]
FB970:  MOVS            R6, #0
FB972:  LDR             R0, =(off_22AF48 - 0xFB97A); "samp" ...
FB974:  MOVS            R4, #0
FB976:  ADD             R0, PC; off_22AF48
FB978:  MOV             R10, R0
FB97A:  LDR             R0, =(aCanTLoadTextur - 0xFB980); "Can't load texture database \"%s\"" ...
FB97C:  ADD             R0, PC; "Can't load texture database \"%s\""
FB97E:  STR             R0, [SP,#0x28+fmt]
FB980:  LDR             R0, =(aLoadTextureDat - 0xFB986); "Load texture database \"%s\"" ...
FB982:  ADD             R0, PC; "Load texture database \"%s\""
FB984:  MOV             R8, R0
FB986:  LDR             R0, =(aVinils - 0xFB98C); "vinils" ...
FB988:  ADD             R0, PC; "vinils"
FB98A:  MOV             R11, R0
FB98C:  LDR.W           R5, [R10,R6]
FB990:  MOVS            R1, #0
FB992:  MOVS            R2, #6
FB994:  MOV             R0, R5
FB996:  BL              sub_163A28
FB99A:  CBZ             R0, loc_FB9B4
FB99C:  MOVS            R0, #3; prio
FB99E:  MOV             R1, R9; tag
FB9A0:  MOV             R2, R8; fmt
FB9A2:  MOV             R3, R5
FB9A4:  BLX             __android_log_print
FB9A8:  MOV             R0, R5
FB9AA:  MOV             R1, R11
FB9AC:  BL              sub_FB9F8
FB9B0:  ORRS            R4, R0
FB9B2:  B               loc_FB9C0
FB9B4:  LDR             R2, [SP,#0x28+fmt]; fmt
FB9B6:  MOVS            R0, #6; prio
FB9B8:  MOV             R1, R9; tag
FB9BA:  MOV             R3, R5
FB9BC:  BLX             __android_log_print
FB9C0:  ADDS            R6, #4
FB9C2:  CMP             R6, #0x38 ; '8'
FB9C4:  BNE             loc_FB98C
FB9C6:  LSLS            R0, R4, #0x1F
FB9C8:  IT NE
FB9CA:  BLNE            sub_F6580
FB9CE:  BL              sub_F0BC0
FB9D2:  LDR             R0, [SP,#0x28+var_24]
FB9D4:  ADD             SP, SP, #0xC
FB9D6:  POP.W           {R8-R11}
FB9DA:  POP             {R4-R7,PC}
