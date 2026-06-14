; =========================================================
; Game Engine Function: _ZN11CPopulation19FindPedRaceFromNameEPc
; Address            : 0x46AE10 - 0x46AE9E
; =========================================================

46AE10:  PUSH            {R7,LR}
46AE12:  MOV             R7, SP
46AE14:  MOV             R1, R0
46AE16:  MOV             R12, #0xFFFFFFBE
46AE1A:  LDRB            R0, [R1]
46AE1C:  SUB.W           R2, R0, #0x61 ; 'a'
46AE20:  UXTB            R2, R2
46AE22:  CMP             R2, #0x1A
46AE24:  IT CC
46AE26:  ADDCC           R0, #0xE0
46AE28:  UXTAB.W         R2, R12, R0
46AE2C:  CMP             R2, #0x15; switch 22 cases
46AE2E:  BHI             def_46AE36; jumptable 0046AE36 default case, cases 1-5,8-12,14-20
46AE30:  MOVS            R0, #3
46AE32:  MOV.W           LR, #1
46AE36:  TBB.W           [PC,R2]; switch jump
46AE3A:  DCB 0xB; jump table for switch statement
46AE3B:  DCB 0xD
46AE3C:  DCB 0xD
46AE3D:  DCB 0xD
46AE3E:  DCB 0xD
46AE3F:  DCB 0xD
46AE40:  DCB 0x2A
46AE41:  DCB 0x29
46AE42:  DCB 0xD
46AE43:  DCB 0xD
46AE44:  DCB 0xD
46AE45:  DCB 0xD
46AE46:  DCB 0xD
46AE47:  DCB 0x29
46AE48:  DCB 0xD
46AE49:  DCB 0xD
46AE4A:  DCB 0xD
46AE4B:  DCB 0xD
46AE4C:  DCB 0xD
46AE4D:  DCB 0xD
46AE4E:  DCB 0xD
46AE4F:  DCB 0x2C
46AE50:  MOV             R0, LR; jumptable 0046AE36 case 0
46AE52:  POP             {R7,PC}
46AE54:  LDRB            R0, [R1,#1]; jumptable 0046AE36 default case, cases 1-5,8-12,14-20
46AE56:  SUB.W           R1, R0, #0x61 ; 'a'
46AE5A:  UXTB            R1, R1
46AE5C:  CMP             R1, #0x1A
46AE5E:  IT CC
46AE60:  ADDCC           R0, #0xE0
46AE62:  UXTAB.W         R1, R12, R0
46AE66:  CMP             R1, #0x15; switch 22 cases
46AE68:  BHI             def_46AE70; jumptable 0046AE70 default case, cases 1-5,8-12,14-20
46AE6A:  MOVS            R0, #3
46AE6C:  MOV.W           LR, #1
46AE70:  TBB.W           [PC,R1]; switch jump
46AE74:  DCB 0xB; jump table for switch statement
46AE75:  DCB 0x11
46AE76:  DCB 0x11
46AE77:  DCB 0x11
46AE78:  DCB 0x11
46AE79:  DCB 0x11
46AE7A:  DCB 0xD
46AE7B:  DCB 0xC
46AE7C:  DCB 0x11
46AE7D:  DCB 0x11
46AE7E:  DCB 0x11
46AE7F:  DCB 0x11
46AE80:  DCB 0x11
46AE81:  DCB 0xC
46AE82:  DCB 0x11
46AE83:  DCB 0x11
46AE84:  DCB 0x11
46AE85:  DCB 0x11
46AE86:  DCB 0x11
46AE87:  DCB 0x11
46AE88:  DCB 0x11
46AE89:  DCB 0xF
46AE8A:  B               loc_46AE50; jumptable 0046AE70 case 0
46AE8C:  POP             {R7,PC}; jumptable 0046AE36 cases 7,13
46AE8E:  MOVS            R0, #4; jumptable 0046AE36 case 6
46AE90:  POP             {R7,PC}
46AE92:  MOVS            R0, #2; jumptable 0046AE36 case 21
46AE94:  POP             {R7,PC}
46AE96:  MOV.W           LR, #0; jumptable 0046AE70 default case, cases 1-5,8-12,14-20
46AE9A:  MOV             R0, LR
46AE9C:  POP             {R7,PC}
