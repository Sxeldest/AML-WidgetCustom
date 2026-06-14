; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii
; Address            : 0x3E7CC4 - 0x3E7DAE
; =========================================================

3E7CC4:  PUSH            {R4,R5,R7,LR}
3E7CC6:  ADD             R7, SP, #8
3E7CC8:  MOV             R4, R1
3E7CCA:  MOV             R5, R2
3E7CCC:  CMP             R4, #0
3E7CCE:  BEQ.W           def_3E7D76; jumptable 003E7D76 default case
3E7CD2:  MOV             R0, R5; this
3E7CD4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E7CD8:  CMP             R0, #0
3E7CDA:  BEQ.W           def_3E7D76; jumptable 003E7D76 default case
3E7CDE:  SUBS            R1, R4, #5; switch 12 cases
3E7CE0:  CMP             R1, #0xB
3E7CE2:  BHI             def_3E7CE4; jumptable 003E7CE4 default case
3E7CE4:  TBB.W           [PC,R1]; switch jump
3E7CE8:  DCB 6; jump table for switch statement
3E7CE9:  DCB 0xA
3E7CEA:  DCB 0xE
3E7CEB:  DCB 0x12
3E7CEC:  DCB 0x16
3E7CED:  DCB 0x1A
3E7CEE:  DCB 0x1E
3E7CEF:  DCB 0x22
3E7CF0:  DCB 0x34
3E7CF1:  DCB 0x28
3E7CF2:  DCB 0x2C
3E7CF3:  DCB 0x30
3E7CF4:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 5
3E7CF6:  STRH.W          R1, [R0,#0xB6]
3E7CFA:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7CFC:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 6
3E7CFE:  STRH.W          R1, [R0,#0xBA]
3E7D02:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D04:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 7
3E7D06:  STRH.W          R1, [R0,#0xB4]
3E7D0A:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D0C:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 8
3E7D0E:  STRH.W          R1, [R0,#0xB8]
3E7D12:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D14:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 9
3E7D16:  STRH.W          R1, [R0,#0xC6]
3E7D1A:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D1C:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 10
3E7D1E:  STRH.W          R1, [R0,#0xD0]
3E7D22:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D24:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 11
3E7D26:  STRH.W          R1, [R0,#0xD2]
3E7D2A:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D2C:  CMP             R5, #1; jumptable 003E7CE4 case 12
3E7D2E:  ITT EQ
3E7D30:  MOVEQ           R1, #0xFF
3E7D32:  STRHEQ.W        R1, [R0,#0xC4]
3E7D36:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D38:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 14
3E7D3A:  STRH.W          R1, [R0,#0xC2]
3E7D3E:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D40:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 15
3E7D42:  STRH.W          R1, [R0,#0xBE]
3E7D46:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D48:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 16
3E7D4A:  STRH.W          R1, [R0,#0xC0]
3E7D4E:  B               def_3E7CE4; jumptable 003E7CE4 default case
3E7D50:  MOVS            R1, #0xFF; jumptable 003E7CE4 case 13
3E7D52:  STRH.W          R1, [R0,#0xBC]
3E7D56:  LDR             R1, =(AllValidWinJoys_ptr - 0x3E7D60); jumptable 003E7CE4 default case
3E7D58:  MOVW            R3, #0x3427
3E7D5C:  ADD             R1, PC; AllValidWinJoys_ptr
3E7D5E:  LDR             R1, [R1]; AllValidWinJoys
3E7D60:  LDR             R2, [R1,#(dword_A987D4 - 0xA987CC)]
3E7D62:  CMP             R2, R3
3E7D64:  ITTT EQ
3E7D66:  LDREQ           R1, [R1,#(dword_A987D8 - 0xA987CC)]
3E7D68:  MOVWEQ          R2, #0x1190
3E7D6C:  CMPEQ           R1, R2
3E7D6E:  BNE             loc_3E7D7E
3E7D70:  SUBS            R1, R4, #1; switch 4 cases
3E7D72:  CMP             R1, #3
3E7D74:  BHI             def_3E7D76; jumptable 003E7D76 default case
3E7D76:  TBB.W           [PC,R1]; switch jump
3E7D7A:  DCB 0x16; jump table for switch statement
3E7D7B:  DCB 0xA
3E7D7C:  DCB 0xE
3E7D7D:  DCB 0x12
3E7D7E:  SUBS            R1, R4, #1; switch 4 cases
3E7D80:  CMP             R1, #3
3E7D82:  IT HI
3E7D84:  POPHI           {R4,R5,R7,PC}
3E7D86:  TBB.W           [PC,R1]; switch jump
3E7D8A:  DCB 2; jump table for switch statement
3E7D8B:  DCB 6
3E7D8C:  DCB 0xA
3E7D8D:  DCB 0xE
3E7D8E:  MOVS            R1, #0xFF; jumptable 003E7D76 case 2
3E7D90:  STRH.W          R1, [R0,#0xCE]
3E7D94:  POP             {R4,R5,R7,PC}; jumptable 003E7D76 default case
3E7D96:  MOVS            R1, #0xFF; jumptable 003E7D76 case 3
3E7D98:  STRH.W          R1, [R0,#0xCC]
3E7D9C:  POP             {R4,R5,R7,PC}
3E7D9E:  MOVS            R1, #0xFF; jumptable 003E7D76 case 4
3E7DA0:  STRH.W          R1, [R0,#0xC8]
3E7DA4:  POP             {R4,R5,R7,PC}
3E7DA6:  MOVS            R1, #0xFF; jumptable 003E7D76 case 1
3E7DA8:  STRH.W          R1, [R0,#0xCA]
3E7DAC:  POP             {R4,R5,R7,PC}
