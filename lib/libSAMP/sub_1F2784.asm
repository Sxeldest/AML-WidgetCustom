; =========================================================
; Game Engine Function: sub_1F2784
; Address            : 0x1F2784 - 0x1F27AE
; =========================================================

1F2784:  LDRD.W          R1, R0, [R0]
1F2788:  LDRB            R0, [R0,#0x10]
1F278A:  LDRB            R1, [R1,#0x10]
1F278C:  CMP             R1, R0
1F278E:  ITT EQ
1F2790:  MOVEQ           R0, #0
1F2792:  BXEQ            LR
1F2794:  AND.W           R1, R1, #0xFE
1F2798:  CMP             R1, #2
1F279A:  ITT EQ
1F279C:  MOVEQ           R0, #1
1F279E:  BXEQ            LR
1F27A0:  AND.W           R0, R0, #0xFE
1F27A4:  SUBS            R0, #2
1F27A6:  CLZ.W           R0, R0
1F27AA:  LSRS            R0, R0, #5
1F27AC:  BX              LR
