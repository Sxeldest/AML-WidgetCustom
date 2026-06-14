; =========================================================
; Game Engine Function: sub_60C34
; Address            : 0x60C34 - 0x60E10
; =========================================================

60C34:  PUSH            {R4-R7,LR}
60C36:  ADD             R7, SP, #0xC
60C38:  PUSH.W          {R8}
60C3C:  SUB             SP, SP, #0x18
60C3E:  LDR             R0, =(off_114AD8 - 0x60C44)
60C40:  ADD             R0, PC; off_114AD8
60C42:  LDR             R0, [R0]; dword_1A4434
60C44:  LDR             R0, [R0]
60C46:  CMP             R0, #0
60C48:  BEQ.W           loc_60E08
60C4C:  LDR.W           R0, [R0,#0x218]
60C50:  CMP             R0, #5
60C52:  BNE.W           loc_60E08
60C56:  LDR             R4, =(byte_117518 - 0x60C5E)
60C58:  LDR             R5, =(byte_11751B - 0x60C60)
60C5A:  ADD             R4, PC; byte_117518
60C5C:  ADD             R5, PC; byte_11751B
60C5E:  LDRB            R3, [R4]
60C60:  LDRB            R0, [R5]
60C62:  CMP             R0, R3
60C64:  BEQ             loc_60C78
60C66:  LDR             R1, =(aSampOrig - 0x60C70); "SAMP_ORIG" ...
60C68:  MOVS            R0, #4; prio
60C6A:  LDR             R2, =(aProcessU - 0x60C74); "Process %u" ...
60C6C:  ADD             R1, PC; "SAMP_ORIG"
60C6E:  STRB            R3, [R5]
60C70:  ADD             R2, PC; "Process %u"
60C72:  BLX             __android_log_print
60C76:  LDRB            R0, [R4]
60C78:  LDR             R6, =(byte_117519 - 0x60C80)
60C7A:  CMP             R0, #0x19
60C7C:  ADD             R6, PC; byte_117519
60C7E:  LDRB            R1, [R6]
60C80:  IT EQ
60C82:  CMPEQ           R1, #0
60C84:  BEQ             loc_60CFA
60C86:  CMP             R0, #0x19
60C88:  IT NE
60C8A:  CMPNE           R1, #0
60C8C:  BNE             loc_60D4E
60C8E:  LDR             R6, =(byte_11751A - 0x60C96)
60C90:  CMP             R0, #0xA
60C92:  ADD             R6, PC; byte_11751A
60C94:  LDRB            R1, [R6]
60C96:  IT EQ
60C98:  CMPEQ           R1, #0
60C9A:  BEQ.W           loc_60DA6
60C9E:  CMP             R0, #0xA
60CA0:  IT NE
60CA2:  CMPNE           R1, #0
60CA4:  BEQ.W           loc_60E08
60CA8:  BL              sub_6C844
60CAC:  LDR             R4, [R0,#8]
60CAE:  CBNZ            R4, loc_60CDC
60CB0:  MOV             R5, R0
60CB2:  MOV.W           R0, #0x2F0; unsigned int
60CB6:  BLX             j__Znwj; operator new(uint)
60CBA:  MOV             R4, R0
60CBC:  LDR             R0, =(off_114AB0 - 0x60CC4)
60CBE:  LDR             R1, =(_ZTV10CPlayerPed - 0x60CC6); `vtable for'CPlayerPed ...
60CC0:  ADD             R0, PC; off_114AB0
60CC2:  ADD             R1, PC; `vtable for'CPlayerPed
60CC4:  LDR             R0, [R0]; dword_1A4408
60CC6:  ADDS            R1, #8
60CC8:  STR             R1, [R4]
60CCA:  MOV             R1, #0x103B89
60CD2:  LDR             R0, [R0]
60CD4:  ADD             R1, R0
60CD6:  MOV             R0, R4
60CD8:  BLX             R1
60CDA:  STR             R4, [R5,#8]
60CDC:  LDR             R0, =(off_114AB0 - 0x60CEA)
60CDE:  MOV             R1, #0x10421D
60CE6:  ADD             R0, PC; off_114AB0
60CE8:  LDR             R0, [R0]; dword_1A4408
60CEA:  LDR             R0, [R0]
60CEC:  ADDS            R2, R0, R1
60CEE:  MOV             R0, R4
60CF0:  MOVS            R1, #1
60CF2:  BLX             R2
60CF4:  MOVS            R0, #0
60CF6:  STRB            R0, [R6]
60CF8:  B               loc_60E08
60CFA:  MOV.W           R8, #1
60CFE:  STRB.W          R8, [R6]
60D02:  BL              sub_6C844
60D06:  LDR             R4, [R0,#8]
60D08:  CBNZ            R4, loc_60D36
60D0A:  MOV             R5, R0
60D0C:  MOV.W           R0, #0x2F0; unsigned int
60D10:  BLX             j__Znwj; operator new(uint)
60D14:  MOV             R4, R0
60D16:  LDR             R0, =(off_114AB0 - 0x60D1E)
60D18:  LDR             R1, =(_ZTV10CPlayerPed - 0x60D20); `vtable for'CPlayerPed ...
60D1A:  ADD             R0, PC; off_114AB0
60D1C:  ADD             R1, PC; `vtable for'CPlayerPed
60D1E:  LDR             R0, [R0]; dword_1A4408
60D20:  ADDS            R1, #8
60D22:  STR             R1, [R4]
60D24:  MOV             R1, #0x103B89
60D2C:  LDR             R0, [R0]
60D2E:  ADD             R1, R0
60D30:  MOV             R0, R4
60D32:  BLX             R1
60D34:  STR             R4, [R5,#8]
60D36:  LDR             R1, =(aCrryPrtial - 0x60D40); "CRRY_PRTIAL" ...
60D38:  MOVS            R0, #0
60D3A:  LDR             R2, =(aCarry - 0x60D46); "CARRY" ...
60D3C:  ADD             R1, PC; "CRRY_PRTIAL"
60D3E:  STRD.W          R0, R0, [SP,#0x28+var_28]
60D42:  ADD             R2, PC; "CARRY"
60D44:  STRD.W          R0, R8, [SP,#0x28+var_20]
60D48:  STR.W           R8, [SP,#0x28+var_18]
60D4C:  B               loc_60DFA
60D4E:  BL              sub_6C844
60D52:  LDR             R4, [R0,#8]
60D54:  CBNZ            R4, loc_60D82
60D56:  MOV             R5, R0
60D58:  MOV.W           R0, #0x2F0; unsigned int
60D5C:  BLX             j__Znwj; operator new(uint)
60D60:  MOV             R4, R0
60D62:  LDR             R0, =(off_114AB0 - 0x60D6A)
60D64:  LDR             R1, =(_ZTV10CPlayerPed - 0x60D6C); `vtable for'CPlayerPed ...
60D66:  ADD             R0, PC; off_114AB0
60D68:  ADD             R1, PC; `vtable for'CPlayerPed
60D6A:  LDR             R0, [R0]; dword_1A4408
60D6C:  ADDS            R1, #8
60D6E:  STR             R1, [R4]
60D70:  MOV             R1, #0x103B89
60D78:  LDR             R0, [R0]
60D7A:  ADD             R1, R0
60D7C:  MOV             R0, R4
60D7E:  BLX             R1
60D80:  STR             R4, [R5,#8]
60D82:  LDR             R1, =(aCrryPrtial_0 - 0x60D8E); "crry_prtial" ...
60D84:  MOVS            R0, #1
60D86:  LDR             R2, =(aCarry - 0x60D92); "CARRY" ...
60D88:  MOVS            R5, #0
60D8A:  ADD             R1, PC; "crry_prtial"
60D8C:  STR             R0, [SP,#0x28+var_18]
60D8E:  ADD             R2, PC; "CARRY"
60D90:  MOV             R0, R4
60D92:  MOV.W           R3, #0x40800000
60D96:  STRD.W          R5, R5, [SP,#0x28+var_28]
60D9A:  STRD.W          R5, R5, [SP,#0x28+var_20]
60D9E:  BL              sub_60E78
60DA2:  STRB            R5, [R6]
60DA4:  B               loc_60E08
60DA6:  MOV.W           R8, #1
60DAA:  STRB.W          R8, [R6]
60DAE:  BL              sub_6C844
60DB2:  LDR             R4, [R0,#8]
60DB4:  CBNZ            R4, loc_60DE2
60DB6:  MOV             R5, R0
60DB8:  MOV.W           R0, #0x2F0; unsigned int
60DBC:  BLX             j__Znwj; operator new(uint)
60DC0:  MOV             R4, R0
60DC2:  LDR             R0, =(off_114AB0 - 0x60DCA)
60DC4:  LDR             R1, =(_ZTV10CPlayerPed - 0x60DCC); `vtable for'CPlayerPed ...
60DC6:  ADD             R0, PC; off_114AB0
60DC8:  ADD             R1, PC; `vtable for'CPlayerPed
60DCA:  LDR             R0, [R0]; dword_1A4408
60DCC:  ADDS            R1, #8
60DCE:  STR             R1, [R4]
60DD0:  MOV             R1, #0x103B89
60DD8:  LDR             R0, [R0]
60DDA:  ADD             R1, R0
60DDC:  MOV             R0, R4
60DDE:  BLX             R1
60DE0:  STR             R4, [R5,#8]
60DE2:  LDR             R1, =(aHandsup - 0x60DF0); "HANDSUP" ...
60DE4:  MOV.W           R0, #0xFFFFFFFF
60DE8:  LDR             R2, =(aPed - 0x60DF6); "PED" ...
60DEA:  MOVS            R3, #0
60DEC:  ADD             R1, PC; "HANDSUP"
60DEE:  STRD.W          R3, R8, [SP,#0x28+var_28]
60DF2:  ADD             R2, PC; "PED"
60DF4:  STRD.W          R8, R8, [SP,#0x28+var_20]
60DF8:  STR             R0, [SP,#0x28+var_18]
60DFA:  MOVW            R3, #0x3333
60DFE:  MOV             R0, R4
60E00:  MOVT            R3, #0x4083
60E04:  BL              sub_60E78
60E08:  ADD             SP, SP, #0x18
60E0A:  POP.W           {R8}
60E0E:  POP             {R4-R7,PC}
