; =========================================================
; Game Engine Function: sub_F83C8
; Address            : 0xF83C8 - 0xF83F6
; =========================================================

F83C8:  LDR             R0, =(dword_2402E0 - 0xF83CE)
F83CA:  ADD             R0, PC; dword_2402E0
F83CC:  LDR             R0, [R0]
F83CE:  LDR             R1, =(unk_245600 - 0xF83DC)
F83D0:  ADD.W           R2, R0, #0x114
F83D4:  LDRD.W          R12, R0, [R0,#0x138]
F83D8:  ADD             R1, PC; unk_245600
F83DA:  VLD1.32         {D16-D17}, [R2]!
F83DE:  MOV             R3, R1
F83E0:  VST1.32         {D16-D17}, [R3@128]!
F83E4:  VLD1.32         {D16-D17}, [R2]!
F83E8:  VST1.32         {D16-D17}, [R3@128]!
F83EC:  LDR             R2, [R2]
F83EE:  STRD.W          R12, R0, [R1,#(dword_245624 - 0x245600)]
F83F2:  STR             R2, [R3]
F83F4:  BX              LR
