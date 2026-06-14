; =========================================================
; Game Engine Function: sub_15736C
; Address            : 0x15736C - 0x1573CA
; =========================================================

15736C:  PUSH            {R4,R6,R7,LR}
15736E:  ADD             R7, SP, #8
157370:  SUB             SP, SP, #0x10
157372:  VMOV            D16, R2, R3
157376:  MOV             R4, R0
157378:  CMP.W           R3, #0xFFFFFFFF
15737C:  BGT             loc_157388
15737E:  VNEG.F64        D16, D16
157382:  MOVS            R0, #0x2D ; '-'
157384:  STRB.W          R0, [R4],#1
157388:  VCMP.F64        D16, #0.0
15738C:  VMRS            APSR_nzcv, FPSCR
157390:  BNE             loc_1573A0
157392:  MOVS            R0, #0x30 ; '0'
157394:  STRB            R0, [R4,#2]
157396:  MOVW            R0, #0x2E30
15739A:  STRH            R0, [R4]
15739C:  ADDS            R0, R4, #3
15739E:  B               loc_1573C6
1573A0:  MOVS            R0, #0
1573A2:  ADD             R1, SP, #0x18+var_C
1573A4:  ADD             R2, SP, #0x18+var_10
1573A6:  STRD.W          R0, R0, [SP,#0x18+var_10]
1573AA:  MOV             R0, R4
1573AC:  VSTR            D16, [SP,#0x18+var_18]
1573B0:  BL              sub_1573CC
1573B4:  LDRD.W          R2, R1, [SP,#0x18+var_10]; size_t
1573B8:  MOVS            R0, #0xF
1573BA:  STR             R0, [SP,#0x18+var_18]; int
1573BC:  MOV             R0, R4; src
1573BE:  MOV             R3, #0xFFFFFFFC; int
1573C2:  BL              sub_157528
1573C6:  ADD             SP, SP, #0x10
1573C8:  POP             {R4,R6,R7,PC}
