; =========================================================
; Game Engine Function: INT123_synth_2to1_mono
; Address            : 0x235630 - 0x2356E0
; =========================================================

235630:  PUSH            {R4-R7,LR}
235632:  ADD             R7, SP, #0xC
235634:  PUSH.W          {R8-R10}
235638:  SUB             SP, SP, #0x40
23563A:  MOV             R4, R1
23563C:  MOVW            R1, #0x91A4
235640:  LDR             R6, [R4,R1]
235642:  MOVW            R8, #0xB2A8
235646:  MOVW            R9, #0xB2A0
23564A:  MOV             R1, SP
23564C:  LDR.W           R10, [R4,R8]
235650:  LDR.W           R5, [R4,R9]
235654:  STR.W           R1, [R4,R9]
235658:  MOVS            R1, #0
23565A:  STR.W           R1, [R4,R8]
23565E:  MOVS            R1, #0
235660:  MOV             R2, R4
235662:  MOVS            R3, #0
235664:  BLX             R6
235666:  STR.W           R5, [R4,R9]
23566A:  ADD.W           R2, R5, R10
23566E:  LDRH.W          R1, [SP,#0x58+var_58]
235672:  STRH.W          R1, [R5,R10]
235676:  LDRH.W          R1, [SP,#0x58+var_54]
23567A:  STRH            R1, [R2,#2]
23567C:  LDRH.W          R1, [SP,#0x58+var_50]
235680:  STRH            R1, [R2,#4]
235682:  LDRH.W          R1, [SP,#0x58+var_4C]
235686:  STRH            R1, [R2,#6]
235688:  LDRH.W          R1, [SP,#0x58+var_48]
23568C:  STRH            R1, [R2,#8]
23568E:  LDRH.W          R1, [SP,#0x58+var_44]
235692:  STRH            R1, [R2,#0xA]
235694:  LDRH.W          R1, [SP,#0x58+var_40]
235698:  STRH            R1, [R2,#0xC]
23569A:  LDRH.W          R1, [SP,#0x58+var_3C]
23569E:  STRH            R1, [R2,#0xE]
2356A0:  LDRH.W          R1, [SP,#0x58+var_38]
2356A4:  STRH            R1, [R2,#0x10]
2356A6:  LDRH.W          R1, [SP,#0x58+var_34]
2356AA:  STRH            R1, [R2,#0x12]
2356AC:  LDRH.W          R1, [SP,#0x58+var_30]
2356B0:  STRH            R1, [R2,#0x14]
2356B2:  LDRH.W          R1, [SP,#0x58+var_2C]
2356B6:  STRH            R1, [R2,#0x16]
2356B8:  LDRH.W          R1, [SP,#0x58+var_28]
2356BC:  STRH            R1, [R2,#0x18]
2356BE:  LDRH.W          R1, [SP,#0x58+var_24]
2356C2:  STRH            R1, [R2,#0x1A]
2356C4:  LDRH.W          R1, [SP,#0x58+var_20]
2356C8:  STRH            R1, [R2,#0x1C]
2356CA:  LDRH.W          R1, [SP,#0x58+var_1C]
2356CE:  STRH            R1, [R2,#0x1E]
2356D0:  ADD.W           R1, R10, #0x20 ; ' '
2356D4:  STR.W           R1, [R4,R8]
2356D8:  ADD             SP, SP, #0x40 ; '@'
2356DA:  POP.W           {R8-R10}
2356DE:  POP             {R4-R7,PC}
