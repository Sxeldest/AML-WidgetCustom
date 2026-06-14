; =========================================================
; Game Engine Function: _Z20jpeg_write_scanlinesP20jpeg_compress_structPPhj
; Address            : 0x476114 - 0x4761B8
; =========================================================

476114:  PUSH            {R4-R7,LR}
476116:  ADD             R7, SP, #0xC
476118:  PUSH.W          {R8}
47611C:  SUB             SP, SP, #8
47611E:  MOV             R4, R0
476120:  MOV             R5, R2
476122:  LDR             R0, [R4,#0x14]
476124:  MOV             R8, R1
476126:  CMP             R0, #0x65 ; 'e'
476128:  BEQ             loc_47613E
47612A:  LDR             R0, [R4]
47612C:  MOVS            R1, #0x14
47612E:  STR             R1, [R0,#0x14]
476130:  LDR             R0, [R4]
476132:  LDR             R1, [R4,#0x14]
476134:  STR             R1, [R0,#0x18]
476136:  LDR             R0, [R4]
476138:  LDR             R1, [R0]
47613A:  MOV             R0, R4
47613C:  BLX             R1
47613E:  LDR             R0, [R4,#0x20]
476140:  LDR.W           R1, [R4,#0xD0]
476144:  CMP             R1, R0
476146:  BCC             loc_47615A
476148:  LDR             R0, [R4]
47614A:  MOVS            R1, #0x7B ; '{'
47614C:  STR             R1, [R0,#0x14]
47614E:  MOV.W           R1, #0xFFFFFFFF
476152:  LDR             R0, [R4]
476154:  LDR             R2, [R0,#4]
476156:  MOV             R0, R4
476158:  BLX             R2
47615A:  LDR             R0, [R4,#8]
47615C:  CBZ             R0, loc_476172
47615E:  LDR.W           R1, [R4,#0xD0]
476162:  STR             R1, [R0,#4]
476164:  LDR             R0, [R4,#8]
476166:  LDR             R1, [R4,#0x20]
476168:  STR             R1, [R0,#8]
47616A:  LDR             R0, [R4,#8]
47616C:  LDR             R1, [R0]
47616E:  MOV             R0, R4
476170:  BLX             R1
476172:  LDR.W           R0, [R4,#0x13C]
476176:  LDRB            R1, [R0,#0xC]
476178:  CMP             R1, #0
47617A:  ITTT NE
47617C:  LDRNE           R1, [R0,#4]
47617E:  MOVNE           R0, R4
476180:  BLXNE           R1
476182:  MOVS            R2, #0
476184:  LDR             R0, [R4,#0x20]
476186:  LDR.W           R1, [R4,#0xD0]
47618A:  STR             R2, [SP,#0x18+var_14]
47618C:  LDR.W           R2, [R4,#0x140]
476190:  SUBS            R0, R0, R1
476192:  CMP             R0, R5
476194:  MOV             R1, R8
476196:  LDR             R6, [R2,#4]
476198:  IT CC
47619A:  MOVCC           R5, R0
47619C:  ADD             R2, SP, #0x18+var_14
47619E:  MOV             R0, R4
4761A0:  MOV             R3, R5
4761A2:  BLX             R6
4761A4:  LDR.W           R1, [R4,#0xD0]
4761A8:  LDR             R0, [SP,#0x18+var_14]
4761AA:  ADD             R1, R0
4761AC:  STR.W           R1, [R4,#0xD0]
4761B0:  ADD             SP, SP, #8
4761B2:  POP.W           {R8}
4761B6:  POP             {R4-R7,PC}
