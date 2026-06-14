; =========================================================
; Game Engine Function: _ZN19CUpsideDownCarCheck18RemoveCarFromCheckEi
; Address            : 0x3285AC - 0x32860E
; =========================================================

3285AC:  LDR             R2, [R0]
3285AE:  CMP             R2, R1
3285B0:  ITTT EQ
3285B2:  MOVEQ           R2, #0
3285B4:  MOVEQ.W         R3, #0xFFFFFFFF
3285B8:  STRDEQ.W        R3, R2, [R0]
3285BC:  LDR             R2, [R0,#8]
3285BE:  CMP             R2, R1
3285C0:  ITTT EQ
3285C2:  MOVEQ           R2, #0
3285C4:  MOVEQ.W         R3, #0xFFFFFFFF
3285C8:  STRDEQ.W        R3, R2, [R0,#8]
3285CC:  LDR             R2, [R0,#0x10]
3285CE:  CMP             R2, R1
3285D0:  ITTT EQ
3285D2:  MOVEQ           R2, #0
3285D4:  MOVEQ.W         R3, #0xFFFFFFFF
3285D8:  STRDEQ.W        R3, R2, [R0,#0x10]
3285DC:  LDR             R2, [R0,#0x18]
3285DE:  CMP             R2, R1
3285E0:  ITTT EQ
3285E2:  MOVEQ           R2, #0
3285E4:  MOVEQ.W         R3, #0xFFFFFFFF
3285E8:  STRDEQ.W        R3, R2, [R0,#0x18]
3285EC:  LDR             R2, [R0,#0x20]
3285EE:  CMP             R2, R1
3285F0:  ITTT EQ
3285F2:  MOVEQ           R2, #0
3285F4:  MOVEQ.W         R3, #0xFFFFFFFF
3285F8:  STRDEQ.W        R3, R2, [R0,#0x20]
3285FC:  LDR             R2, [R0,#0x28]
3285FE:  CMP             R2, R1
328600:  ITTT EQ
328602:  MOVEQ           R1, #0
328604:  MOVEQ.W         R2, #0xFFFFFFFF
328608:  STRDEQ.W        R2, R1, [R0,#0x28]
32860C:  BX              LR
