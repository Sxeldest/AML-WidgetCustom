; =========================================================
; Game Engine Function: _ZN7CGarage20PlayerArrestedOrDiedEv
; Address            : 0x314290 - 0x3142F0
; =========================================================

314290:  LDRB.W          R1, [R0,#0x4C]
314294:  SUBS            R1, #1; switch 45 cases
314296:  CMP             R1, #0x2C ; ','
314298:  BHI             def_31429A; jumptable 0031429A default case
31429A:  TBB.W           [PC,R1]; switch jump
31429E:  DCB 0x17; jump table for switch statement
31429F:  DCB 0x21
3142A0:  DCB 0x21
3142A1:  DCB 0x21
3142A2:  DCB 0x21
3142A3:  DCB 0x17
3142A4:  DCB 0x17
3142A5:  DCB 0x17
3142A6:  DCB 0x17
3142A7:  DCB 0x17
3142A8:  DCB 0x17
3142A9:  DCB 0x17
3142AA:  DCB 0x21
3142AB:  DCB 0x17
3142AC:  DCB 0x17
3142AD:  DCB 0x17
3142AE:  DCB 0x17
3142AF:  DCB 0x17
3142B0:  DCB 0x17
3142B1:  DCB 0x17
3142B2:  DCB 0x17
3142B3:  DCB 0x17
3142B4:  DCB 0x17
3142B5:  DCB 0x17
3142B6:  DCB 0x17
3142B7:  DCB 0x17
3142B8:  DCB 0x17
3142B9:  DCB 0x17
3142BA:  DCB 0x17
3142BB:  DCB 0x17
3142BC:  DCB 0x17
3142BD:  DCB 0x17
3142BE:  DCB 0x17
3142BF:  DCB 0x17
3142C0:  DCB 0x17
3142C1:  DCB 0x17
3142C2:  DCB 0x17
3142C3:  DCB 0x17
3142C4:  DCB 0x17
3142C5:  DCB 0x17
3142C6:  DCB 0x17
3142C7:  DCB 0x17
3142C8:  DCB 0x17
3142C9:  DCB 0x17
3142CA:  DCB 0x17
3142CB:  ALIGN 2
3142CC:  LDRB.W          R1, [R0,#0x4D]; jumptable 0031429A cases 1,6-12,14-45
3142D0:  SUBS            R1, #1
3142D2:  CMP             R1, #2
3142D4:  IT HI
3142D6:  BXHI            LR
3142D8:  MOVS            R1, #2
3142DA:  STRB.W          R1, [R0,#0x4D]
3142DE:  BX              LR; jumptable 0031429A default case
3142E0:  LDRB.W          R1, [R0,#0x4D]; jumptable 0031429A cases 2-5,13
3142E4:  CMP             R1, #3
3142E6:  BHI             def_31429A; jumptable 0031429A default case
3142E8:  CMP             R1, #1
3142EA:  BEQ             def_31429A; jumptable 0031429A default case
3142EC:  MOVS            R1, #3
3142EE:  B               loc_3142DA
