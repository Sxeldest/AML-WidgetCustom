; =========================================================
; Game Engine Function: _ZN8CCarCtrl24StopCarIfNodesAreInvalidEP8CVehicle
; Address            : 0x2ED08C - 0x2ED11C
; =========================================================

2ED08C:  LDRH.W          R2, [R0,#0x3A8]
2ED090:  MOVW            R1, #0xFFFF
2ED094:  CMP             R2, R1
2ED096:  BEQ             loc_2ED10C
2ED098:  LDR             R3, =(ThePaths_ptr - 0x2ED0A2)
2ED09A:  UBFX.W          R2, R2, #0xA, #6
2ED09E:  ADD             R3, PC; ThePaths_ptr
2ED0A0:  LDR             R3, [R3]; ThePaths
2ED0A2:  ADD.W           R2, R3, R2,LSL#2
2ED0A6:  LDR.W           R2, [R2,#0x804]
2ED0AA:  CMP             R2, #0
2ED0AC:  ITT NE
2ED0AE:  LDRHNE.W        R2, [R0,#0x3AA]
2ED0B2:  CMPNE           R2, R1
2ED0B4:  BEQ             loc_2ED10C
2ED0B6:  LDR             R3, =(ThePaths_ptr - 0x2ED0C0)
2ED0B8:  UBFX.W          R2, R2, #0xA, #6
2ED0BC:  ADD             R3, PC; ThePaths_ptr
2ED0BE:  LDR             R3, [R3]; ThePaths
2ED0C0:  ADD.W           R2, R3, R2,LSL#2
2ED0C4:  LDR.W           R2, [R2,#0x804]
2ED0C8:  CMP             R2, #0
2ED0CA:  ITT NE
2ED0CC:  LDRHNE.W        R2, [R0,#0x394]
2ED0D0:  CMPNE           R2, R1
2ED0D2:  BEQ             loc_2ED10C
2ED0D4:  LDR             R2, =(ThePaths_ptr - 0x2ED0DE)
2ED0D6:  LDRH.W          R3, [R0,#0x394]
2ED0DA:  ADD             R2, PC; ThePaths_ptr
2ED0DC:  LDR             R2, [R2]; ThePaths
2ED0DE:  ADD.W           R2, R2, R3,LSL#2
2ED0E2:  LDR.W           R2, [R2,#0x804]
2ED0E6:  CMP             R2, #0
2ED0E8:  ITT NE
2ED0EA:  LDRHNE.W        R2, [R0,#0x398]
2ED0EE:  CMPNE           R2, R1
2ED0F0:  BEQ             loc_2ED10C
2ED0F2:  LDR             R1, =(ThePaths_ptr - 0x2ED0FC)
2ED0F4:  LDRH.W          R2, [R0,#0x398]
2ED0F8:  ADD             R1, PC; ThePaths_ptr
2ED0FA:  LDR             R1, [R1]; ThePaths
2ED0FC:  ADD.W           R1, R1, R2,LSL#2
2ED100:  LDR.W           R1, [R1,#0x804]
2ED104:  CMP             R1, #0
2ED106:  ITT NE
2ED108:  MOVNE           R0, #0
2ED10A:  BXNE            LR
2ED10C:  LDRH.W          R1, [R0,#0x3DF]
2ED110:  ORR.W           R1, R1, #0x100
2ED114:  STRH.W          R1, [R0,#0x3DF]
2ED118:  MOVS            R0, #1
2ED11A:  BX              LR
