; =========================================================
; Game Engine Function: sub_142030
; Address            : 0x142030 - 0x1420B0
; =========================================================

142030:  PUSH            {R4-R7,LR}
142032:  ADD             R7, SP, #0xC
142034:  PUSH.W          {R8}
142038:  SUB             SP, SP, #0x10
14203A:  MOV             R4, R0
14203C:  BL              sub_F0B30
142040:  MOV             R5, R0
142042:  LDR.W           R0, [R4,#0x3B4]
142046:  SUBS            R0, R5, R0
142048:  CMP             R0, #0xFB
14204A:  BCC             loc_1420A8
14204C:  LDR             R0, =(off_234A24 - 0x142056)
14204E:  LDR.W           R1, [R4,#0x21C]
142052:  ADD             R0, PC; off_234A24
142054:  ADDS            R1, #1
142056:  STR.W           R1, [R4,#0x21C]
14205A:  LDR             R0, [R0]; dword_23DEEC
14205C:  LDR             R0, [R0]
14205E:  CBZ             R0, loc_14207A
142060:  LDR             R6, [R0,#0x60]
142062:  ADD             R0, SP, #0x20+var_18; int
142064:  LDR             R1, =(unk_8F469 - 0x14206C)
142066:  MOVS            R2, #0x4F ; 'O'
142068:  ADD             R1, PC; unk_8F469 ; s
14206A:  BL              sub_F1E90
14206E:  LDR.W           R2, [R4,#0x21C]
142072:  MOV             R0, R6
142074:  LDR             R1, [SP,#0x20+var_18]
142076:  BL              sub_12D5E8
14207A:  LDR.W           R0, [R4,#0x210]
14207E:  MOV.W           R8, #2
142082:  LDR             R1, =(byte_314318 - 0x14208E)
142084:  LDRH.W          R2, [R4,#0x204]
142088:  LDR             R3, [R0]
14208A:  ADD             R1, PC; byte_314318
14208C:  LDR             R6, [R3,#8]
14208E:  MOVS            R3, #1
142090:  STRB            R3, [R1]
142092:  MOVS            R1, #0
142094:  STRD.W          R1, R8, [SP,#0x20+var_20]
142098:  ADDW            R1, R4, #0x101
14209C:  MOVS            R3, #0
14209E:  BLX             R6
1420A0:  STR.W           R5, [R4,#0x3B4]
1420A4:  STR.W           R8, [R4,#0x218]
1420A8:  ADD             SP, SP, #0x10
1420AA:  POP.W           {R8}
1420AE:  POP             {R4-R7,PC}
