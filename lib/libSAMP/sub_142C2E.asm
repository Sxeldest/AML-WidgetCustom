; =========================================================
; Game Engine Function: sub_142C2E
; Address            : 0x142C2E - 0x142E74
; =========================================================

142C2E:  PUSH            {R4-R7,LR}
142C30:  ADD             R7, SP, #0xC
142C32:  PUSH.W          {R8}
142C36:  SUB             SP, SP, #0x178
142C38:  MOV             R6, R1
142C3A:  LDR             R2, [R1,#0xC]; size
142C3C:  LDR             R1, [R1,#0x14]; src
142C3E:  MOV             R4, R0
142C40:  ADD             R0, SP, #0x188+var_124; int
142C42:  MOVS            R3, #0
142C44:  MOVS            R5, #0
142C46:  BL              sub_17D4F2
142C4A:  LDR.W           R0, [R4,#0x218]
142C4E:  STR             R5, [SP,#0x188+var_16C]
142C50:  CMP             R0, #5
142C52:  BNE.W           loc_142E66
142C56:  ADD.W           R8, SP, #0x188+src
142C5A:  MOVS            R1, #0x44 ; 'D'; n
142C5C:  MOV             R0, R8; int
142C5E:  BLX             sub_22178C
142C62:  LDR             R0, [R6,#0x14]
142C64:  LDRB            R0, [R0]
142C66:  CMP             R0, #0x28 ; '('
142C68:  BNE             loc_142C84
142C6A:  ADD             R0, SP, #0x188+var_124; int
142C6C:  ADD.W           R1, SP, #0x188+var_16D; int
142C70:  MOVS            R2, #8
142C72:  MOVS            R3, #1
142C74:  BL              sub_17D786
142C78:  ADD             R0, SP, #0x188+var_124; int
142C7A:  ADD             R1, SP, #0x188+var_16C; int
142C7C:  MOVS            R2, #0x20 ; ' '
142C7E:  MOVS            R3, #1
142C80:  BL              sub_17D786
142C84:  ADD             R0, SP, #0x188+var_124; int
142C86:  ADD.W           R1, SP, #0x188+var_16D; int
142C8A:  MOVS            R2, #8
142C8C:  MOVS            R3, #1
142C8E:  BL              sub_17D786
142C92:  ADD             R0, SP, #0x188+var_124; int
142C94:  ADD             R1, SP, #0x188+var_170; int
142C96:  MOVS            R2, #0x10
142C98:  MOVS            R3, #1
142C9A:  BL              sub_17D786
142C9E:  LDR             R0, [SP,#0x188+var_124]
142CA0:  LDR             R2, [SP,#0x188+var_11C]
142CA2:  CMP             R2, R0
142CA4:  BGE             loc_142CBC
142CA6:  LDR             R1, [SP,#0x188+var_118]
142CA8:  ASRS            R3, R2, #3
142CAA:  LDRB            R3, [R1,R3]
142CAC:  ADDS            R1, R2, #1
142CAE:  AND.W           R2, R2, #7
142CB2:  STR             R1, [SP,#0x188+var_11C]
142CB4:  LSL.W           R2, R3, R2
142CB8:  LSLS            R2, R2, #0x18
142CBA:  BPL             loc_142CCC
142CBC:  ADD             R0, SP, #0x188+var_124; int
142CBE:  ADD             R1, SP, #0x188+src; int
142CC0:  MOVS            R2, #0x10
142CC2:  MOVS            R3, #1
142CC4:  BL              sub_17D786
142CC8:  LDR             R0, [SP,#0x188+var_124]
142CCA:  LDR             R1, [SP,#0x188+var_11C]
142CCC:  CMP             R1, R0
142CCE:  BGE             loc_142CE4
142CD0:  LDR             R0, [SP,#0x188+var_118]
142CD2:  ASRS            R2, R1, #3
142CD4:  LDRB            R0, [R0,R2]
142CD6:  ADDS            R2, R1, #1
142CD8:  AND.W           R1, R1, #7
142CDC:  STR             R2, [SP,#0x188+var_11C]
142CDE:  LSLS            R0, R1
142CE0:  LSLS            R0, R0, #0x18
142CE2:  BPL             loc_142CF2
142CE4:  ADD.W           R1, R8, #2; int
142CE8:  ADD             R0, SP, #0x188+var_124; int
142CEA:  MOVS            R2, #0x10
142CEC:  MOVS            R3, #1
142CEE:  BL              sub_17D786
142CF2:  ADD.W           R1, R8, #4; int
142CF6:  ADD             R0, SP, #0x188+var_124; int
142CF8:  MOVS            R2, #0x10
142CFA:  MOVS            R3, #1
142CFC:  BL              sub_17D786
142D00:  ADD.W           R1, R8, #6; dest
142D04:  ADD             R0, SP, #0x188+var_124; int
142D06:  MOVS            R2, #0xC
142D08:  BL              sub_17D744
142D0C:  ADD             R0, SP, #0x188+var_180
142D0E:  STR             R0, [SP,#0x188+var_188]; int
142D10:  ADD             R0, SP, #0x188+var_124; int
142D12:  ADD             R1, SP, #0x188+var_174; int
142D14:  ADD             R2, SP, #0x188+var_178; int
142D16:  ADD             R3, SP, #0x188+var_17C; int
142D18:  BL              sub_143758
142D1C:  ADD             R0, SP, #0x188+src
142D1E:  LDRD.W          R1, R2, [SP,#0x188+var_178]
142D22:  ADD.W           R6, R0, #0x12
142D26:  LDRD.W          R3, R0, [SP,#0x188+var_180]
142D2A:  STR             R3, [R6,#0xC]
142D2C:  STR             R0, [R6,#8]
142D2E:  STR             R1, [R6,#4]
142D30:  STR             R2, [R6]
142D32:  ADD             R0, SP, #0x188+var_124; int
142D34:  ADD.W           R1, SP, #0x188+var_181; int
142D38:  MOVS            R2, #8
142D3A:  MOVS            R3, #1
142D3C:  BL              sub_17D786
142D40:  LDRB.W          R1, [SP,#0x188+var_181]
142D44:  ANDS.W          R2, R1, #0xF
142D48:  MOV.W           R0, R1,LSR#4
142D4C:  BEQ             loc_142D5A
142D4E:  CMP             R2, #0xF
142D50:  ITE NE
142D52:  RSBNE.W         R2, R2, R2,LSL#3
142D56:  MOVEQ           R2, #0x64 ; 'd'
142D58:  B               loc_142D5C
142D5A:  MOVS            R2, #0
142D5C:  STRB.W          R2, [SP,#0x188+var_145]
142D60:  RSB.W           R2, R0, R0,LSL#3
142D64:  CMP             R1, #0x10
142D66:  IT CC
142D68:  MOVCC           R2, #0
142D6A:  CMP             R0, #0xF
142D6C:  MOV.W           R0, #0
142D70:  IT EQ
142D72:  MOVEQ           R2, #0x64 ; 'd'
142D74:  STRB.W          R2, [SP,#0x188+var_146]
142D78:  STRB.W          R0, [SP,#0x188+var_182]
142D7C:  ADD             R0, SP, #0x188+var_124; int
142D7E:  ADD.W           R1, SP, #0x188+var_182; int
142D82:  MOVS            R2, #8
142D84:  MOVS            R3, #1
142D86:  BL              sub_17D786
142D8A:  LDRB.W          R0, [SP,#0x188+var_182]
142D8E:  LDRB.W          R1, [SP,#0x188+var_144]
142D92:  AND.W           R0, R0, #0x3F ; '?'
142D96:  AND.W           R1, R1, #0xC0
142D9A:  ADD             R0, R1
142D9C:  STRB.W          R0, [SP,#0x188+var_144]
142DA0:  ADD.W           R1, R8, #0x25 ; '%'; int
142DA4:  ADD             R0, SP, #0x188+var_124; int
142DA6:  MOVS            R2, #8
142DA8:  MOVS            R3, #1
142DAA:  BL              sub_17D786
142DAE:  ADD             R0, SP, #0x188+var_124
142DB0:  ADD             R1, SP, #0x188+var_178
142DB2:  ADD             R2, SP, #0x188+var_17C
142DB4:  ADD             R3, SP, #0x188+var_180
142DB6:  BL              sub_1438F0
142DBA:  LDR             R0, [SP,#0x188+var_124]
142DBC:  LDR             R2, [SP,#0x188+var_11C]
142DBE:  LDRD.W          R3, R1, [SP,#0x188+var_180]
142DC2:  LDR             R5, [SP,#0x188+var_178]
142DC4:  CMP             R2, R0
142DC6:  STR             R5, [R6,#0x14]
142DC8:  STR             R1, [R6,#0x18]
142DCA:  STR             R3, [R6,#0x1C]
142DCC:  BGE             loc_142E04
142DCE:  LDR             R1, [SP,#0x188+var_118]
142DD0:  ASRS            R3, R2, #3
142DD2:  LDRB            R3, [R1,R3]
142DD4:  ADDS            R1, R2, #1
142DD6:  AND.W           R2, R2, #7
142DDA:  STR             R1, [SP,#0x188+var_11C]
142DDC:  LSL.W           R2, R3, R2
142DE0:  LSLS            R2, R2, #0x18
142DE2:  BPL             loc_142E06
142DE4:  ADD.W           R1, R8, #0x3E ; '>'; int
142DE8:  ADD             R0, SP, #0x188+var_124; int
142DEA:  MOVS            R2, #0x10
142DEC:  MOVS            R3, #1
142DEE:  BL              sub_17D786
142DF2:  ADD.W           R1, R8, #0x32 ; '2'; dest
142DF6:  ADD             R0, SP, #0x188+var_124; int
142DF8:  MOVS            R2, #0xC
142DFA:  BL              sub_17D744
142DFE:  LDR             R0, [SP,#0x188+var_124]
142E00:  LDR             R1, [SP,#0x188+var_11C]
142E02:  B               loc_142E0E
142E04:  MOV             R1, R2
142E06:  MOVW            R2, #0xFFFF
142E0A:  STRH.W          R2, [SP,#0x188+var_12A]
142E0E:  CMP             R1, R0
142E10:  BGE             loc_142E36
142E12:  LDR             R0, [SP,#0x188+var_118]
142E14:  ASRS            R2, R1, #3
142E16:  LDRB            R0, [R0,R2]
142E18:  ADDS            R2, R1, #1
142E1A:  AND.W           R1, R1, #7
142E1E:  STR             R2, [SP,#0x188+var_11C]
142E20:  LSLS            R0, R1
142E22:  LSLS            R0, R0, #0x18
142E24:  BPL             loc_142E36
142E26:  ADD.W           R1, R8, #0x40 ; '@'; int
142E2A:  ADD             R0, SP, #0x188+var_124; int
142E2C:  MOVS            R2, #0x20 ; ' '
142E2E:  MOVS            R3, #1
142E30:  BL              sub_17D786
142E34:  B               loc_142E3A
142E36:  MOVS            R0, #0
142E38:  STR             R0, [SP,#0x188+var_128]
142E3A:  LDRH.W          R0, [SP,#0x188+var_170]
142E3E:  CMP.W           R0, #0x3EC
142E42:  BHI             loc_142E66
142E44:  LDR.W           R1, [R4,#0x3B0]
142E48:  LDR             R1, [R1]
142E4A:  ADDS            R2, R1, R0
142E4C:  LDRB.W          R2, [R2,#0xFB4]
142E50:  CBZ             R2, loc_142E66
142E52:  ADD.W           R0, R1, R0,LSL#2
142E56:  LDR             R0, [R0,#4]
142E58:  CBZ             R0, loc_142E66
142E5A:  LDR             R0, [R0]; dest
142E5C:  CBZ             R0, loc_142E66
142E5E:  LDR             R2, [SP,#0x188+var_16C]
142E60:  ADD             R1, SP, #0x188+src; src
142E62:  BL              sub_14A6A0
142E66:  ADD             R0, SP, #0x188+var_124
142E68:  BL              sub_17D542
142E6C:  ADD             SP, SP, #0x178
142E6E:  POP.W           {R8}
142E72:  POP             {R4-R7,PC}
