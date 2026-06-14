; =========================================================
; Game Engine Function: sub_144284
; Address            : 0x144284 - 0x144346
; =========================================================

144284:  PUSH            {R4-R7,LR}
144286:  ADD             R7, SP, #0xC
144288:  PUSH.W          {R8}
14428C:  SUB             SP, SP, #0x138
14428E:  MOV             R4, R0
144290:  LDR             R0, =(dword_239034 - 0x14429A)
144292:  MOV             R6, R2
144294:  MOV             R5, R1
144296:  ADD             R0, PC; dword_239034
144298:  MOVS            R1, #0
14429A:  LDR.W           R2, [R4,#0x218]
14429E:  STRB            R1, [R0,#(byte_23903A - 0x239034)]
1442A0:  MOVW            R1, #0xFFFF
1442A4:  STRH            R1, [R0,#(word_239038 - 0x239034)]
1442A6:  MOV.W           R1, #0xFFFFFFFF
1442AA:  CMP             R2, #5
1442AC:  STR             R1, [R0]
1442AE:  BNE             loc_14433E
1442B0:  ADD             R0, SP, #0x148+var_128
1442B2:  MOV             R8, R3
1442B4:  BL              sub_17D4A8
1442B8:  STRH.W          R5, [R7,#var_12]
1442BC:  SUB.W           R1, R7, #-var_12
1442C0:  MOVS            R2, #0x10
1442C2:  MOVS            R3, #1
1442C4:  BL              sub_17D628
1442C8:  STRB.W          R6, [R7,#var_12]
1442CC:  ADD             R0, SP, #0x148+var_128
1442CE:  SUB.W           R1, R7, #-var_12
1442D2:  MOVS            R2, #8
1442D4:  MOVS            R3, #1
1442D6:  BL              sub_17D628
1442DA:  STRH.W          R8, [R7,#var_12]
1442DE:  ADD             R0, SP, #0x148+var_128
1442E0:  SUB.W           R1, R7, #-var_12
1442E4:  MOVS            R2, #0x10
1442E6:  MOVS            R3, #1
1442E8:  BL              sub_17D628
1442EC:  LDR             R5, [R7,#arg_4]
1442EE:  STRB.W          R5, [R7,#var_12]
1442F2:  ADD             R0, SP, #0x148+var_128
1442F4:  SUB.W           R1, R7, #-var_12
1442F8:  MOVS            R2, #8
1442FA:  MOVS            R3, #1
1442FC:  BL              sub_17D628
144300:  LDR             R1, [R7,#arg_0]
144302:  ADD             R0, SP, #0x148+var_128
144304:  MOV             R2, R5
144306:  BL              sub_17D566
14430A:  LDR.W           R0, [R4,#0x210]
14430E:  MOVS            R3, #0
144310:  LDR             R1, =(off_234C5C - 0x144316)
144312:  ADD             R1, PC; off_234C5C
144314:  LDR             R2, [R0]
144316:  LDR             R1, [R1]; unk_23C7C0
144318:  LDR             R6, [R2,#0x6C]
14431A:  MOV.W           R12, #0xFFFFFFFF
14431E:  MOVS            R4, #9
144320:  ADD             R2, SP, #0x148+var_128
144322:  MOVW            R5, #0xFFFF
144326:  STRD.W          R4, R3, [SP,#0x148+var_148]
14432A:  STRD.W          R3, R12, [SP,#0x148+var_140]
14432E:  STR             R3, [SP,#0x148+var_130]
144330:  MOVS            R3, #1
144332:  STRD.W          R5, R5, [SP,#0x148+var_138]
144336:  BLX             R6
144338:  ADD             R0, SP, #0x148+var_128
14433A:  BL              sub_17D542
14433E:  ADD             SP, SP, #0x138
144340:  POP.W           {R8}
144344:  POP             {R4-R7,PC}
