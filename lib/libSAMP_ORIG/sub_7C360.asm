; =========================================================
; Game Engine Function: sub_7C360
; Address            : 0x7C360 - 0x7C39E
; =========================================================

7C360:  LDR             R1, =(_ZTV6Widget - 0x7C370); `vtable for'Widget ...
7C362:  ADR             R2, dword_7C3A0
7C364:  VMOV.I32        Q9, #0
7C368:  VLD1.64         {D16-D17}, [R2@128]
7C36C:  ADD             R1, PC; `vtable for'Widget
7C36E:  MOVS            R2, #0
7C370:  ADDS            R1, #8
7C372:  STRD.W          R1, R2, [R0]
7C376:  ADD.W           R1, R0, #0x38 ; '8'
7C37A:  MOVS            R3, #1
7C37C:  VST1.32         {D18-D19}, [R1]!
7C380:  STRD.W          R2, R2, [R1]
7C384:  STR             R2, [R1,#8]
7C386:  ADD.W           R1, R0, #0xC
7C38A:  STRB            R3, [R0,#8]
7C38C:  MOVS            R3, #0x18
7C38E:  VST1.32         {D18-D19}, [R1]!
7C392:  VST1.32         {D16-D17}, [R1],R3
7C396:  STRD.W          R2, R2, [R0,#0x2C]
7C39A:  STRH            R2, [R1]
7C39C:  BX              LR
