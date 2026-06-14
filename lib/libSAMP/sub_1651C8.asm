; =========================================================
; Game Engine Function: sub_1651C8
; Address            : 0x1651C8 - 0x1652AC
; =========================================================

1651C8:  PUSH            {R4-R7,LR}
1651CA:  ADD             R7, SP, #0xC
1651CC:  PUSH.W          {R8-R11}
1651D0:  SUB             SP, SP, #4
1651D2:  LDR             R0, =(dword_381B58 - 0x1651DE)
1651D4:  MOV             R9, R1
1651D6:  MOVW            R1, #0x2CD4
1651DA:  ADD             R0, PC; dword_381B58
1651DC:  LDR             R2, [R0]
1651DE:  MOV             R11, R0
1651E0:  MOVW            R0, #0x2CDC
1651E4:  ADDS            R4, R2, R1
1651E6:  LDR             R0, [R2,R0]
1651E8:  CBZ             R0, loc_16520E
1651EA:  LDR             R1, =(off_2390B0 - 0x1651F6)
1651EC:  MOV.W           R8, #0
1651F0:  LDR             R3, =(dword_381B60 - 0x1651FC)
1651F2:  ADD             R1, PC; off_2390B0
1651F4:  LDR.W           R6, [R2,#0x370]
1651F8:  ADD             R3, PC; dword_381B60
1651FA:  STRD.W          R8, R8, [R4]
1651FE:  LDR             R5, [R1]; j_opus_decoder_destroy_0
165200:  LDR             R1, [R3]
165202:  SUBS            R3, R6, #1
165204:  STR.W           R3, [R2,#0x370]
165208:  BLX             R5; j_opus_decoder_destroy_0
16520A:  STR.W           R8, [R4,#8]
16520E:  MOV             R0, R9; s
165210:  BLX             strlen
165214:  MOV             R5, R0
165216:  LDR             R0, [R4,#4]
165218:  ADD.W           R10, R5, #1
16521C:  CMP             R0, R5
16521E:  BGT             loc_165290
165220:  CMP             R0, #0
165222:  ITTE NE
165224:  ADDNE.W         R1, R0, R0,LSR#31
165228:  ADDNE.W         R1, R0, R1,ASR#1
16522C:  MOVEQ           R1, #8
16522E:  CMP             R1, R10
165230:  MOV             R6, R10
165232:  IT GT
165234:  MOVGT           R6, R1
165236:  CMP             R0, R6
165238:  BGE             loc_165290
16523A:  MOV             R0, R11
16523C:  LDR.W           R0, [R11]
165240:  CBZ             R0, loc_16524C
165242:  LDR.W           R1, [R0,#0x370]
165246:  ADDS            R1, #1
165248:  STR.W           R1, [R0,#0x370]
16524C:  LDR             R1, =(dword_381B60 - 0x165254)
16524E:  LDR             R0, =(off_2390AC - 0x165258)
165250:  ADD             R1, PC; dword_381B60
165252:  STR             R1, [SP,#0x20+var_20]
165254:  ADD             R0, PC; off_2390AC
165256:  LDR             R1, [R1]
165258:  LDR             R2, [R0]; sub_171190
16525A:  MOV             R0, R6
16525C:  BLX             R2; sub_171190
16525E:  LDR             R1, [R4,#8]; src
165260:  MOV             R8, R0
165262:  CBZ             R1, loc_16528C
165264:  LDR             R2, [R4]; n
165266:  MOV             R0, R8; dest
165268:  BLX             j_memcpy
16526C:  LDR             R0, [R4,#8]
16526E:  CBZ             R0, loc_165280
165270:  LDR.W           R1, [R11]
165274:  CBZ             R1, loc_165280
165276:  LDR.W           R2, [R1,#0x370]
16527A:  SUBS            R2, #1
16527C:  STR.W           R2, [R1,#0x370]
165280:  LDR             R2, =(off_2390B0 - 0x165288)
165282:  LDR             R1, [SP,#0x20+var_20]
165284:  ADD             R2, PC; off_2390B0
165286:  LDR             R1, [R1]
165288:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16528A:  BLX             R2; j_opus_decoder_destroy_0
16528C:  STRD.W          R6, R8, [R4,#4]
165290:  LDR             R0, [R4,#8]; dest
165292:  MOV             R1, R9; src
165294:  MOV             R2, R5; n
165296:  STR.W           R10, [R4]
16529A:  BLX             j_memcpy
16529E:  LDR             R0, [R4,#8]
1652A0:  MOVS            R1, #0
1652A2:  STRB            R1, [R0,R5]
1652A4:  ADD             SP, SP, #4
1652A6:  POP.W           {R8-R11}
1652AA:  POP             {R4-R7,PC}
