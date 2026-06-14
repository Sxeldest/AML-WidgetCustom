; =========================================================
; Game Engine Function: sub_221CC0
; Address            : 0x221CC0 - 0x221CDC
; =========================================================

221CC0:  CMP             R0, #0
221CC2:  ITT EQ
221CC4:  MOVEQ           R0, #0
221CC6:  BXEQ            LR
221CC8:  LDR             R1, =(dword_6BD6FC - 0x221CD4)
221CCA:  ADR             R2, dword_221CE0
221CCC:  VLD1.64         {D16-D17}, [R2@128]
221CD0:  ADD             R1, PC; dword_6BD6FC
221CD2:  LDR             R1, [R1]
221CD4:  ADD             R1, R0
221CD6:  VST1.32         {D16-D17}, [R1]
221CDA:  BX              LR
