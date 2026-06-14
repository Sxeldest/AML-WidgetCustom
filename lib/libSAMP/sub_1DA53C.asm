; =========================================================
; Game Engine Function: sub_1DA53C
; Address            : 0x1DA53C - 0x1DA568
; =========================================================

1DA53C:  CMP             R2, #2
1DA540:  LDREQ           R0, [R0,#8]
1DA544:  STREQ           R0, [R3]
1DA548:  BXEQ            LR
1DA54C:  CMP             R2, #1
1DA550:  LDREQ           R0, [R0,#4]
1DA554:  STREQ           R0, [R3]
1DA558:  BXEQ            LR
1DA55C:  MOV             R0, R1
1DA560:  MOVW            R1, #0xA002
1DA564:  B               j_alSetError
