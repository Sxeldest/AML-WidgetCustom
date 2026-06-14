; =========================================================
; Game Engine Function: _ZN10FxSystem_c20GetBoundingSphereLclEP10FxSphere_c
; Address            : 0x36F260 - 0x36F27A
; =========================================================

36F260:  LDR             R0, [R0,#0x78]
36F262:  CMP             R0, #0
36F264:  ITT EQ
36F266:  MOVEQ           R0, #0
36F268:  BXEQ            LR
36F26A:  VLD1.32         {D16-D17}, [R0]!
36F26E:  VST1.32         {D16-D17}, [R1]!
36F272:  LDR             R0, [R0]
36F274:  STR             R0, [R1]
36F276:  MOVS            R0, #1
36F278:  BX              LR
