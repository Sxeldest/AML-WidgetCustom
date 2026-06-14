; =========================================================
; Game Engine Function: sub_F8390
; Address            : 0xF8390 - 0xF83BE
; =========================================================

F8390:  LDR             R0, =(dword_2402E0 - 0xF8398)
F8392:  LDR             R1, =(unk_245600 - 0xF839A)
F8394:  ADD             R0, PC; dword_2402E0
F8396:  ADD             R1, PC; unk_245600
F8398:  LDR             R0, [R0]
F839A:  MOV             R2, R1
F839C:  VLD1.32         {D16-D17}, [R2@128]!
F83A0:  ADD.W           R3, R0, #0x114
F83A4:  VST1.32         {D16-D17}, [R3]!
F83A8:  VLD1.32         {D16-D17}, [R2@128]!
F83AC:  VST1.32         {D16-D17}, [R3]!
F83B0:  LDRD.W          R12, R1, [R1,#(dword_245624 - 0x245600)]
F83B4:  LDR             R2, [R2]
F83B6:  STR             R2, [R3]
F83B8:  STRD.W          R12, R1, [R0,#0x138]
F83BC:  BX              LR
