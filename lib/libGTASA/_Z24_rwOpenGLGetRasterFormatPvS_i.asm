; =========================================================
; Game Engine Function: _Z24_rwOpenGLGetRasterFormatPvS_i
; Address            : 0x1AE7FC - 0x1AE8C0
; =========================================================

1AE7FC:  PUSH            {R4-R7,LR}
1AE7FE:  ADD             R7, SP, #0xC
1AE800:  PUSH.W          {R11}
1AE804:  SUB             SP, SP, #8
1AE806:  MOV             R4, R1
1AE808:  AND.W           R0, R2, #0xF8
1AE80C:  STRB.W          R0, [R4,#0x21]
1AE810:  AND.W           R0, R2, #7
1AE814:  AND.W           R6, R2, #0xFF00
1AE818:  CMP             R0, #5; switch 6 cases
1AE81A:  STRB.W          R0, [R4,#0x20]
1AE81E:  BHI             def_1AE826; jumptable 001AE826 default case, case 3
1AE820:  MOVS            R5, #0x8000000D
1AE826:  TBB.W           [PC,R0]; switch jump
1AE82A:  DCB 3; jump table for switch statement
1AE82B:  DCB 0xB
1AE82C:  DCB 3
1AE82D:  DCB 0x42
1AE82E:  DCB 0x14
1AE82F:  DCB 3
1AE830:  MOVS            R0, #0x20 ; ' '; jumptable 001AE826 cases 0,2,5
1AE832:  CBZ             R6, loc_1AE862
1AE834:  CMP.W           R6, #0x500
1AE838:  MOV.W           R6, #0x500
1AE83C:  BEQ             loc_1AE8AC
1AE83E:  B               loc_1AE894
1AE840:  BLX             j__Z30_rwOpenGLGetEngineZBufferDepthv; jumptable 001AE826 case 1
1AE844:  CBZ             R6, loc_1AE868
1AE846:  CMP.W           R6, #0x700
1AE84A:  IT EQ
1AE84C:  CMPEQ           R0, #0x10
1AE84E:  BNE             loc_1AE894
1AE850:  B               loc_1AE87A
1AE852:  TST.W           R2, #0xF00; jumptable 001AE826 case 4
1AE856:  BEQ             loc_1AE882
1AE858:  TST.W           R2, #0x600
1AE85C:  BEQ             loc_1AE88A
1AE85E:  MOVS            R0, #0x18
1AE860:  B               loc_1AE8AC
1AE862:  MOV.W           R6, #0x500
1AE866:  B               loc_1AE8AC
1AE868:  CMP             R0, #0x10
1AE86A:  BEQ             loc_1AE87A
1AE86C:  CMP             R0, #0x20 ; ' '
1AE86E:  BEQ             loc_1AE8A8
1AE870:  CMP             R0, #0x18
1AE872:  BNE             loc_1AE894
1AE874:  MOV.W           R6, #0x800
1AE878:  B               loc_1AE8AC
1AE87A:  MOV.W           R6, #0x700
1AE87E:  MOVS            R0, #0x10
1AE880:  B               loc_1AE8AC
1AE882:  ORR.W           R6, R6, #0x500
1AE886:  MOVS            R0, #0x20 ; ' '
1AE888:  B               loc_1AE8AC
1AE88A:  TST.W           R2, #0x500
1AE88E:  BEQ             loc_1AE894
1AE890:  MOVS            R0, #0x20 ; ' '
1AE892:  B               loc_1AE8AC
1AE894:  MOVS            R4, #0
1AE896:  MOV             R0, R5; int
1AE898:  STR             R4, [SP,#0x18+var_18]
1AE89A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1AE89E:  STR             R0, [SP,#0x18+var_14]
1AE8A0:  MOV             R0, SP
1AE8A2:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1AE8A6:  B               loc_1AE8B6
1AE8A8:  MOV.W           R6, #0x900
1AE8AC:  STR             R0, [R4,#0x14]
1AE8AE:  LSRS            R0, R6, #8; jumptable 001AE826 default case, case 3
1AE8B0:  STRB.W          R0, [R4,#0x22]
1AE8B4:  MOVS            R4, #1
1AE8B6:  MOV             R0, R4
1AE8B8:  ADD             SP, SP, #8
1AE8BA:  POP.W           {R11}
1AE8BE:  POP             {R4-R7,PC}
