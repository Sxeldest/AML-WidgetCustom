; =========================================================
; Game Engine Function: _ZN20CSpecialPlateHandler4InitEv
; Address            : 0x56D34C - 0x56D3BC
; =========================================================

56D34C:  MOV.W           R1, #0xFFFFFFFF
56D350:  MOVS            R2, #0
56D352:  STR             R1, [R0]
56D354:  STR.W           R2, [R0,#0xF0]
56D358:  STRB            R2, [R0,#4]
56D35A:  STR             R1, [R0,#0x10]
56D35C:  STRB            R2, [R0,#0x14]
56D35E:  STRB.W          R2, [R0,#0x24]
56D362:  STR             R1, [R0,#0x20]
56D364:  STR             R1, [R0,#0x30]
56D366:  STRB.W          R2, [R0,#0x34]
56D36A:  STR             R1, [R0,#0x40]
56D36C:  STRB.W          R2, [R0,#0x44]
56D370:  STR             R1, [R0,#0x50]
56D372:  STRB.W          R2, [R0,#0x54]
56D376:  STR             R1, [R0,#0x60]
56D378:  STRB.W          R2, [R0,#0x64]
56D37C:  STRB.W          R2, [R0,#0x74]
56D380:  STR             R1, [R0,#0x70]
56D382:  STRB.W          R2, [R0,#0x84]
56D386:  STR.W           R1, [R0,#0x80]
56D38A:  STRB.W          R2, [R0,#0x94]
56D38E:  STR.W           R1, [R0,#0x90]
56D392:  STRB.W          R2, [R0,#0xA4]
56D396:  STR.W           R1, [R0,#0xA0]
56D39A:  STRB.W          R2, [R0,#0xB4]
56D39E:  STR.W           R1, [R0,#0xB0]
56D3A2:  STRB.W          R2, [R0,#0xC4]
56D3A6:  STR.W           R1, [R0,#0xC0]
56D3AA:  STRB.W          R2, [R0,#0xD4]
56D3AE:  STR.W           R1, [R0,#0xD0]
56D3B2:  STRB.W          R2, [R0,#0xE4]
56D3B6:  STR.W           R1, [R0,#0xE0]
56D3BA:  BX              LR
