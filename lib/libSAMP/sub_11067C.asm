; =========================================================
; Game Engine Function: sub_11067C
; Address            : 0x11067C - 0x1106C6
; =========================================================

11067C:  PUSH            {R4-R7,LR}
11067E:  ADD             R7, SP, #0xC
110680:  PUSH.W          {R8}
110684:  SUB             SP, SP, #0x10
110686:  LDR             R4, [R7,#arg_8]
110688:  LDRD.W          R12, R5, [R7,#arg_0]
11068C:  LDR.W           R8, [R5]
110690:  LDR.W           LR, [R4]
110694:  LDR             R4, [R0,#8]
110696:  LDRB.W          R5, [R12]
11069A:  LDRD.W          R6, R12, [R0]
11069E:  LDR             R3, [R3]
1106A0:  LDR             R2, [R2]
1106A2:  ADD.W           R0, R6, R4,ASR#1
1106A6:  LDR             R1, [R1]
1106A8:  LSLS            R4, R4, #0x1F
1106AA:  ITT NE
1106AC:  LDRNE           R4, [R0]
1106AE:  LDRNE.W         R12, [R4,R12]
1106B2:  CMP             R5, #0
1106B4:  IT NE
1106B6:  MOVNE           R5, #1
1106B8:  STMEA.W         SP, {R5,R8,LR}
1106BC:  BLX             R12
1106BE:  ADD             SP, SP, #0x10
1106C0:  POP.W           {R8}
1106C4:  POP             {R4-R7,PC}
