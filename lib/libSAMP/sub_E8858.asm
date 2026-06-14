; =========================================================
; Game Engine Function: sub_E8858
; Address            : 0xE8858 - 0xE887C
; =========================================================

E8858:  SUB             LR, R7, R12,LSR R0
E885C:  SUBS            LR, R6, R0,ASR R0
E8860:  EORS            LR, R7, R4,RRX
E8864:  SUB             LR, R11, R2,ASR#32
E8868:  SUBS            LR, PC, R1,ASR R0
E886C:  LDRBTMI         R4, [R8],#-0x838
E8870:  ANDSLS          R3, R2, R8
E8874:  ANDEQ           PC, R8, R6,LSL#2
E8878:  B               0xFF7A4D70
