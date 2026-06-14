; =========================================================
; Game Engine Function: sub_12D75C
; Address            : 0x12D75C - 0x12D788
; =========================================================

12D75C:  LDRB.W          R12, [R1]
12D760:  LDRD.W          R0, R2, [R1,#4]
12D764:  ANDS.W          R3, R12, #1
12D768:  ITT EQ
12D76A:  MOVEQ.W         R0, R12,LSR#1
12D76E:  ADDEQ           R2, R1, #1
12D770:  CBZ             R0, locret_12D786
12D772:  MOVS            R1, #0x20 ; ' '
12D774:  LDRB            R3, [R2]
12D776:  SUBS            R3, #1
12D778:  CMP             R3, #0x1E
12D77A:  IT LS
12D77C:  STRBLS          R1, [R2]
12D77E:  SUBS            R0, #1
12D780:  ADD.W           R2, R2, #1
12D784:  BNE             loc_12D774
12D786:  BX              LR
