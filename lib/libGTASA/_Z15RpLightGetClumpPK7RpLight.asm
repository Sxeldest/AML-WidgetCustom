; =========================================================
; Game Engine Function: _Z15RpLightGetClumpPK7RpLight
; Address            : 0x214340 - 0x21434A
; =========================================================

214340:  LDR             R1, =(dword_6BD594 - 0x214346)
214342:  ADD             R1, PC; dword_6BD594
214344:  LDR             R1, [R1]
214346:  LDR             R0, [R0,R1]
214348:  BX              LR
