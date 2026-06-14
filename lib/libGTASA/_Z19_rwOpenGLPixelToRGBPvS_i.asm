; =========================================================
; Game Engine Function: _Z19_rwOpenGLPixelToRGBPvS_i
; Address            : 0x1AD61C - 0x1AD674
; =========================================================

1AD61C:  PUSH            {R4,R6,R7,LR}
1AD61E:  ADD             R7, SP, #8
1AD620:  SUB             SP, SP, #8
1AD622:  LDR             R1, [R1]
1AD624:  ANDS.W          R2, R2, #0xF00
1AD628:  BEQ             loc_1AD636
1AD62A:  CMP.W           R2, #0x600
1AD62E:  BEQ             loc_1AD644
1AD630:  CMP.W           R2, #0x500
1AD634:  BNE             loc_1AD658
1AD636:  LSRS            R2, R1, #0x10
1AD638:  STRB            R2, [R0,#1]
1AD63A:  LSRS            R2, R1, #0x18
1AD63C:  STRB            R2, [R0]
1AD63E:  LSRS            R2, R1, #8
1AD640:  STRB            R2, [R0,#2]
1AD642:  B               loc_1AD652
1AD644:  LSRS            R2, R1, #0x10
1AD646:  STRB            R2, [R0,#1]
1AD648:  LSRS            R2, R1, #0x18
1AD64A:  LSRS            R1, R1, #8
1AD64C:  STRB            R2, [R0]
1AD64E:  STRB            R1, [R0,#2]
1AD650:  MOVS            R1, #0xFF
1AD652:  MOVS            R4, #1
1AD654:  STRB            R1, [R0,#3]
1AD656:  B               loc_1AD66E
1AD658:  MOVS            R0, #0xD
1AD65A:  MOVS            R4, #0
1AD65C:  MOVT            R0, #0x8000; int
1AD660:  STR             R4, [SP,#0x10+var_10]
1AD662:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1AD666:  STR             R0, [SP,#0x10+var_C]
1AD668:  MOV             R0, SP
1AD66A:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1AD66E:  MOV             R0, R4
1AD670:  ADD             SP, SP, #8
1AD672:  POP             {R4,R6,R7,PC}
