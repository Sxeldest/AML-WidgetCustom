; =========================================================
; Game Engine Function: sub_1DA568
; Address            : 0x1DA568 - 0x1DA594
; =========================================================

1DA568:  CMP             R2, #2
1DA56C:  LDREQ           R0, [R0,#8]
1DA570:  STREQ           R0, [R3]
1DA574:  BXEQ            LR
1DA578:  CMP             R2, #1
1DA57C:  LDREQ           R0, [R0,#4]
1DA580:  STREQ           R0, [R3]
1DA584:  BXEQ            LR
1DA588:  MOV             R0, R1
1DA58C:  MOVW            R1, #0xA002
1DA590:  B               j_alSetError
