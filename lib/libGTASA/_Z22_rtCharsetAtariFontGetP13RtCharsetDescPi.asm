; =========================================================
; Game Engine Function: _Z22_rtCharsetAtariFontGetP13RtCharsetDescPi
; Address            : 0x1ED060 - 0x1ED084
; =========================================================

1ED060:  ADR             R2, dword_1ED090
1ED062:  LDR.W           R12, =(byte_5ED2EF - 0x1ED072)
1ED066:  VLD1.64         {D16-D17}, [R2@128]
1ED06A:  MOVS            R3, #0xE
1ED06C:  MOVS            R2, #7
1ED06E:  ADD             R12, PC; byte_5ED2EF
1ED070:  STRD.W          R3, R2, [R0,#0x14]
1ED074:  MOVS            R2, #0x5B ; '['
1ED076:  VST1.32         {D16-D17}, [R0]!
1ED07A:  STR             R2, [R0]
1ED07C:  MOVS            R0, #0x80
1ED07E:  STR             R0, [R1]
1ED080:  MOV             R0, R12
1ED082:  BX              LR
