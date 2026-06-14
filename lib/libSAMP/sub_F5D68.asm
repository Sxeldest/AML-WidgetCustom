; =========================================================
; Game Engine Function: sub_F5D68
; Address            : 0xF5D68 - 0xF5E5E
; =========================================================

F5D68:  PUSH            {R4-R7,LR}
F5D6A:  ADD             R7, SP, #0xC
F5D6C:  PUSH.W          {R11}
F5D70:  SUB             SP, SP, #0x58
F5D72:  MOV             R6, R0
F5D74:  MOV             R0, R1
F5D76:  MOV             R5, R1
F5D78:  BL              sub_104326
F5D7C:  CMP             R0, #0
F5D7E:  BEQ             loc_F5E56
F5D80:  MOV             R0, #0x3F19999A
F5D88:  STR             R0, [SP,#0x68+var_14]
F5D8A:  MOVS            R0, #0
F5D8C:  STRD.W          R0, R0, [SP,#0x68+var_1C]
F5D90:  MOV             R0, R5
F5D92:  BL              sub_104326
F5D96:  LDR             R1, =(off_23494C - 0xF5DA0)
F5D98:  VLDR            S0, =0.01
F5D9C:  ADD             R1, PC; off_23494C
F5D9E:  LDR             R1, [R1]; dword_23DF24
F5DA0:  LDR             R2, [R1]
F5DA2:  LDRH            R1, [R0,#0x26]
F5DA4:  MOV             R0, #0x9FC93C
F5DAC:  LDR             R0, [R2,R0]
F5DAE:  CMP.W           R1, #0x1FC
F5DB2:  BGT             loc_F5DD4
F5DB4:  SUBW            R3, R1, #0x1CD
F5DB8:  CMP             R3, #0x14
F5DBA:  BHI             loc_F5DCC
F5DBC:  MOVS            R4, #1
F5DBE:  LSL.W           R3, R4, R3
F5DC2:  MOVS            R4, #0x100087
F5DC8:  TST             R3, R4
F5DCA:  BNE             loc_F5DFA
F5DCC:  CMP.W           R1, #0x1C0
F5DD0:  BEQ             loc_F5DFA
F5DD2:  B               loc_F5E1C
F5DD4:  SUBW            R3, R1, #0x1FD
F5DD8:  CMP             R3, #0xD
F5DDA:  BHI             loc_F5DEA
F5DDC:  MOVS            R4, #1
F5DDE:  LSL.W           R3, R4, R3
F5DE2:  MOVW            R4, #0x3003
F5DE6:  TST             R3, R4
F5DE8:  BNE             loc_F5DFA
F5DEA:  MOVW            R3, #0x24A
F5DEE:  CMP             R1, R3
F5DF0:  ITT NE
F5DF2:  MOVWNE          R3, #0x245
F5DF6:  CMPNE           R1, R3
F5DF8:  BNE             loc_F5E1C
F5DFA:  MOVW            R1, #0x6666
F5DFE:  VLDR            S0, =0.3
F5E02:  MOVT            R1, #0x3EE6
F5E06:  STR             R1, [SP,#0x68+var_14]
F5E08:  MOV             R1, #0x3E99999A
F5E10:  STR             R1, [SP,#0x68+var_18]
F5E12:  MOV             R1, #0x3D4CCCCD
F5E1A:  STR             R1, [SP,#0x68+var_1C]
F5E1C:  VMOV            R1, S0
F5E20:  MOV             R3, #0x1D5AB9
F5E28:  ADD             R2, R3
F5E2A:  BLX             R2
F5E2C:  LDR             R0, [R5,#0x5C]
F5E2E:  MOV             R5, SP
F5E30:  MOVS            R2, #0x40 ; '@'; n
F5E32:  LDR             R1, [R0,#0x14]; src
F5E34:  MOV             R0, R5; dest
F5E36:  BLX             j_memcpy
F5E3A:  ADD             R0, SP, #0x68+var_28
F5E3C:  ADD             R2, SP, #0x68+var_1C
F5E3E:  MOV             R1, R5
F5E40:  BL              sub_108FB2
F5E44:  LDR             R0, [SP,#0x68+var_28]
F5E46:  STR.W           R0, [R6,#0x174]
F5E4A:  LDR             R0, [SP,#0x68+var_24]
F5E4C:  STR.W           R0, [R6,#0x178]
F5E50:  LDR             R0, [SP,#0x68+var_20]
F5E52:  STR.W           R0, [R6,#0x17C]
F5E56:  ADD             SP, SP, #0x58 ; 'X'
F5E58:  POP.W           {R11}
F5E5C:  POP             {R4-R7,PC}
