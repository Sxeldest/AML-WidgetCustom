; =========================================================
; Game Engine Function: sub_145AF4
; Address            : 0x145AF4 - 0x145D42
; =========================================================

145AF4:  PUSH            {R4-R7,LR}
145AF6:  ADD             R7, SP, #0xC
145AF8:  PUSH.W          {R8-R11}
145AFC:  SUB.W           SP, SP, #0x1460
145B00:  SUB             SP, SP, #0x1C
145B02:  LDRD.W          R1, R0, [R0]; src
145B06:  ADD.W           LR, SP, #0x1498+var_1494
145B0A:  ASRS            R2, R0, #0x1F
145B0C:  ADD.W           R4, LR, #0x1360
145B10:  ADD.W           R0, R0, R2,LSR#29
145B14:  MOVS            R2, #1
145B16:  MOVS            R3, #0
145B18:  ADD.W           R2, R2, R0,ASR#3; size
145B1C:  MOV             R0, R4; int
145B1E:  BL              sub_17D4F2
145B22:  ADD.W           LR, SP, #0x1498+var_1480
145B26:  MOVW            R1, #0x101; n
145B2A:  ADD.W           R0, LR, #0x1240; int
145B2E:  BLX             sub_22178C
145B32:  ADD.W           LR, SP, #0x1498+var_1488
145B36:  MOVW            R1, #0x101; n
145B3A:  ADD.W           R0, LR, #0x1140; int
145B3E:  BLX             sub_22178C
145B42:  ADD.W           LR, SP, #0x1498+var_1490
145B46:  MOVW            R1, #0x101; n
145B4A:  ADD.W           R0, LR, #0x1040; int
145B4E:  BLX             sub_22178C
145B52:  ADD             R0, SP, #0x1498+s; int
145B54:  MOVW            R1, #0x1001; n
145B58:  BLX             sub_22178C
145B5C:  ADD.W           LR, SP, #0x1498+var_1496
145B60:  MOV             R0, R4; int
145B62:  ADD.W           R1, LR, #0x1360; int
145B66:  MOVS            R2, #0x10
145B68:  MOVS            R3, #1
145B6A:  BL              sub_17D786
145B6E:  ADD.W           LR, SP, #0x1498+var_1494
145B72:  MOVS            R2, #8
145B74:  ADD.W           R0, LR, #0x1360; int
145B78:  ADD.W           LR, SP, #0x1498+var_1497
145B7C:  ADD.W           R1, LR, #0x1360; int
145B80:  MOVS            R3, #1
145B82:  BL              sub_17D786
145B86:  ADD.W           LR, SP, #0x1498+var_1494
145B8A:  ADD.W           R1, SP, #0x1498+var_138; int
145B8E:  ADD.W           R0, LR, #0x1360; int
145B92:  MOVS            R2, #8
145B94:  MOVS            R3, #1
145B96:  BL              sub_17D786
145B9A:  ADD.W           LR, SP, #0x1498+var_498
145B9E:  LDRB.W          R2, [LR,#0x360]
145BA2:  ADD.W           LR, SP, #0x1498+var_1494
145BA6:  ADD.W           R0, LR, #0x1360; int
145BAA:  ADD.W           LR, SP, #0x1498+var_1480
145BAE:  ADD.W           R1, LR, #0x1240; dest
145BB2:  BL              sub_17D744
145BB6:  ADD.W           LR, SP, #0x1498+var_1494
145BBA:  ADD.W           R1, SP, #0x1498+var_138; int
145BBE:  ADD.W           R0, LR, #0x1360; int
145BC2:  MOVS            R2, #8
145BC4:  MOVS            R3, #1
145BC6:  BL              sub_17D786
145BCA:  ADD.W           LR, SP, #0x1498+var_498
145BCE:  LDRB.W          R2, [LR,#0x360]
145BD2:  ADD.W           LR, SP, #0x1498+var_1494
145BD6:  ADD.W           R0, LR, #0x1360; int
145BDA:  ADD.W           LR, SP, #0x1498+var_1488
145BDE:  ADD.W           R1, LR, #0x1140; dest
145BE2:  BL              sub_17D744
145BE6:  ADD.W           LR, SP, #0x1498+var_1494
145BEA:  ADD.W           R1, SP, #0x1498+var_138; int
145BEE:  ADD.W           R0, LR, #0x1360; int
145BF2:  MOVS            R2, #8
145BF4:  MOVS            R3, #1
145BF6:  BL              sub_17D786
145BFA:  ADD.W           LR, SP, #0x1498+var_498
145BFE:  LDRB.W          R2, [LR,#0x360]
145C02:  ADD.W           LR, SP, #0x1498+var_1494
145C06:  ADD.W           R0, LR, #0x1360; int
145C0A:  ADD.W           LR, SP, #0x1498+var_1490
145C0E:  ADD.W           R1, LR, #0x1040; dest
145C12:  BL              sub_17D744
145C16:  BL              sub_18CEC8
145C1A:  ADD.W           LR, SP, #0x1498+var_1494
145C1E:  ADD             R1, SP, #0x1498+s
145C20:  ADD.W           R3, LR, #0x1360
145C24:  MOVS            R4, #0
145C26:  MOV.W           R2, #0x1000
145C2A:  STR             R4, [SP]
145C2C:  BL              sub_18D07E
145C30:  LDR             R0, =(off_234A24 - 0x145C3C)
145C32:  ADD.W           LR, SP, #0x1498+var_498
145C36:  MOVS            R2, #1
145C38:  ADD             R0, PC; off_234A24
145C3A:  LDRB.W          R1, [LR,#0x361]
145C3E:  LDR             R0, [R0]; dword_23DEEC
145C40:  SUBS            R1, #1
145C42:  UXTB            R3, R1
145C44:  CMP             R3, #5
145C46:  LDR             R0, [R0]
145C48:  IT CC
145C4A:  UXTABCC.W       R4, R2, R1
145C4E:  CMP             R0, #0
145C50:  BEQ             loc_145D0E
145C52:  ADD.W           LR, SP, #0x1498+var_498
145C56:  LDR.W           R8, [R0,#0x68]
145C5A:  LDRH.W          R11, [LR,#0x362]
145C5E:  ADD.W           LR, SP, #0x1498+var_1480
145C62:  ADD.W           R5, LR, #0x1240
145C66:  MOV             R0, R5; s
145C68:  BLX             strlen
145C6C:  MOV             R2, R0
145C6E:  ADD             R0, SP, #0x1498+var_1464
145C70:  MOV             R1, R5
145C72:  BL              sub_164D04
145C76:  ADD             R5, SP, #0x1498+s
145C78:  MOV             R0, R5; s
145C7A:  BLX             strlen
145C7E:  MOV             R2, R0
145C80:  ADD.W           R9, SP, #0x1498+var_1470
145C84:  MOV             R1, R5
145C86:  MOV             R0, R9
145C88:  BL              sub_164D04
145C8C:  ADD.W           LR, SP, #0x1498+var_1488
145C90:  ADD.W           R6, LR, #0x1140
145C94:  MOV             R0, R6; s
145C96:  BLX             strlen
145C9A:  MOV             R2, R0
145C9C:  ADD.W           R10, SP, #0x1498+var_147C
145CA0:  MOV             R1, R6
145CA2:  MOV             R0, R10
145CA4:  BL              sub_164D04
145CA8:  ADD.W           LR, SP, #0x1498+var_1490
145CAC:  ADD.W           R5, LR, #0x1040
145CB0:  MOV             R0, R5; s
145CB2:  BLX             strlen
145CB6:  MOV             R2, R0
145CB8:  ADD             R6, SP, #0x1498+var_1488
145CBA:  MOV             R1, R5
145CBC:  MOV             R0, R6
145CBE:  BL              sub_164D04
145CC2:  ADD             R3, SP, #0x1498+var_1464
145CC4:  SXTH.W          R1, R11
145CC8:  MOV             R0, R8
145CCA:  MOV             R2, R4
145CCC:  STRD.W          R9, R10, [SP,#0]
145CD0:  STR             R6, [SP,#0x1498+var_1490]
145CD2:  BL              sub_13A168
145CD6:  LDRB.W          R0, [SP,#0x1498+var_1488]
145CDA:  LSLS            R0, R0, #0x1F
145CDC:  ITT NE
145CDE:  LDRNE           R0, [SP,#0x1498+var_1480]; void *
145CE0:  BLXNE           j__ZdlPv; operator delete(void *)
145CE4:  LDRB.W          R0, [SP,#0x1498+var_147C]
145CE8:  LSLS            R0, R0, #0x1F
145CEA:  ITT NE
145CEC:  LDRNE           R0, [SP,#0x1498+var_1474]; void *
145CEE:  BLXNE           j__ZdlPv; operator delete(void *)
145CF2:  LDRB.W          R0, [SP,#0x1498+var_1470]
145CF6:  LSLS            R0, R0, #0x1F
145CF8:  ITT NE
145CFA:  LDRNE           R0, [SP,#0x1498+var_1468]; void *
145CFC:  BLXNE           j__ZdlPv; operator delete(void *)
145D00:  LDRB.W          R0, [SP,#0x1498+var_1464]
145D04:  LSLS            R0, R0, #0x1F
145D06:  ITT NE
145D08:  LDRNE           R0, [SP,#0x1498+var_145C]; void *
145D0A:  BLXNE           j__ZdlPv; operator delete(void *)
145D0E:  LDR             R0, =(off_23496C - 0x145D14)
145D10:  ADD             R0, PC; off_23496C
145D12:  LDR             R0, [R0]; dword_23DEF4
145D14:  LDR             R0, [R0]
145D16:  CBZ             R0, loc_145D2A
145D18:  LDR             R0, =(off_234C50 - 0x145D22)
145D1A:  ADD.W           LR, SP, #0x1498+var_498
145D1E:  ADD             R0, PC; off_234C50
145D20:  LDRH.W          R1, [LR,#0x362]
145D24:  LDR             R0, [R0]; dword_239034
145D26:  STRH            R1, [R0,#(word_239038 - 0x239034)]
145D28:  STR             R4, [R0]
145D2A:  ADD.W           LR, SP, #0x1498+var_1494
145D2E:  ADD.W           R0, LR, #0x1360
145D32:  BL              sub_17D542
145D36:  ADD.W           SP, SP, #0x1460
145D3A:  ADD             SP, SP, #0x1C
145D3C:  POP.W           {R8-R11}
145D40:  POP             {R4-R7,PC}
