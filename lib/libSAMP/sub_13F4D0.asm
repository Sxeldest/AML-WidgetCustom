; =========================================================
; Game Engine Function: sub_13F4D0
; Address            : 0x13F4D0 - 0x13F550
; =========================================================

13F4D0:  PUSH            {R4,R5,R7,LR}
13F4D2:  ADD             R7, SP, #8
13F4D4:  SUB             SP, SP, #0x138
13F4D6:  MOV             R4, R0
13F4D8:  ADD             R0, SP, #0x140+var_120
13F4DA:  BL              sub_17D4A8
13F4DE:  LDR             R0, [R4,#0x1C]
13F4E0:  ADD             R1, SP, #0x140+var_C
13F4E2:  BL              sub_105F20
13F4E6:  STRB.W          R0, [R7,#var_A]
13F4EA:  ADD             R0, SP, #0x140+var_120
13F4EC:  SUB.W           R1, R7, #-var_A
13F4F0:  MOVS            R2, #8
13F4F2:  MOVS            R3, #1
13F4F4:  BL              sub_17D628
13F4F8:  LDRH.W          R0, [SP,#0x140+var_C]
13F4FC:  STRH.W          R0, [R7,#var_A]
13F500:  ADD             R0, SP, #0x140+var_120
13F502:  SUB.W           R1, R7, #-var_A
13F506:  MOVS            R2, #0x10
13F508:  MOVS            R3, #1
13F50A:  BL              sub_17D628
13F50E:  LDR             R0, =(off_23496C - 0x13F516)
13F510:  MOVS            R3, #0
13F512:  ADD             R0, PC; off_23496C
13F514:  LDR             R0, [R0]; dword_23DEF4
13F516:  LDR             R0, [R0]
13F518:  LDR.W           R0, [R0,#0x210]
13F51C:  LDR             R1, =(off_234C18 - 0x13F522)
13F51E:  ADD             R1, PC; off_234C18
13F520:  LDR             R2, [R0]
13F522:  LDR             R1, [R1]; unk_23C740
13F524:  LDR.W           R12, [R2,#0x6C]
13F528:  MOV.W           LR, #0xFFFFFFFF
13F52C:  MOVS            R5, #9
13F52E:  ADD             R2, SP, #0x140+var_120
13F530:  MOVW            R4, #0xFFFF
13F534:  STRD.W          R5, R3, [SP,#0x140+var_140]
13F538:  STRD.W          R3, LR, [SP,#0x140+var_138]
13F53C:  STR             R3, [SP,#0x140+var_128]
13F53E:  MOVS            R3, #1
13F540:  STRD.W          R4, R4, [SP,#0x140+var_130]
13F544:  BLX             R12
13F546:  ADD             R0, SP, #0x140+var_120
13F548:  BL              sub_17D542
13F54C:  ADD             SP, SP, #0x138
13F54E:  POP             {R4,R5,R7,PC}
