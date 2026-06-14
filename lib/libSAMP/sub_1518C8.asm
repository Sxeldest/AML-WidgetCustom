; =========================================================
; Game Engine Function: sub_1518C8
; Address            : 0x1518C8 - 0x151924
; =========================================================

1518C8:  PUSH            {R4-R7,LR}
1518CA:  ADD             R7, SP, #0xC
1518CC:  PUSH.W          {R11}
1518D0:  SUB             SP, SP, #0x10
1518D2:  ADD.W           LR, R7, #8
1518D6:  MOV             R5, R1
1518D8:  MOV             R4, R3
1518DA:  MOVS            R1, #0
1518DC:  MOV             R6, R2
1518DE:  LDM.W           LR, {R2,R3,LR}
1518E2:  MOV.W           R12, #0x3F800000
1518E6:  STRD.W          LR, R1, [SP,#0x20+var_20]
1518EA:  MOV             R1, R4
1518EC:  STR.W           R12, [SP,#0x20+var_18]
1518F0:  BL              sub_151830
1518F4:  LDR             R2, =(_ZTV16ChannelSoundFile - 0x1518FE); `vtable for'ChannelSoundFile ...
1518F6:  LDRD.W          R3, R1, [R5]
1518FA:  ADD             R2, PC; `vtable for'ChannelSoundFile
1518FC:  STRB.W          R6, [R0,#0x30]
151900:  ADD.W           R2, R2, #8
151904:  STR             R2, [R0]
151906:  STRD.W          R3, R1, [R0,#0x34]
15190A:  CBZ             R1, loc_15191C
15190C:  ADDS            R1, #8
15190E:  LDREX.W         R2, [R1]
151912:  ADDS            R2, #1
151914:  STREX.W         R3, R2, [R1]
151918:  CMP             R3, #0
15191A:  BNE             loc_15190E
15191C:  ADD             SP, SP, #0x10
15191E:  POP.W           {R11}
151922:  POP             {R4-R7,PC}
