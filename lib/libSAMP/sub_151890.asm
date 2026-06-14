; =========================================================
; Game Engine Function: sub_151890
; Address            : 0x151890 - 0x1518C4
; =========================================================

151890:  PUSH            {R4,R5,R7,LR}
151892:  ADD             R7, SP, #8
151894:  SUB             SP, SP, #0x10
151896:  MOV             R12, R3
151898:  MOV             R4, R1
15189A:  LDRD.W          R3, R1, [R7,#arg_0]
15189E:  MOV.W           LR, #0x3F800000
1518A2:  MOVS            R5, #1
1518A4:  STMEA.W         SP, {R1,R5,LR}
1518A8:  MOV             R1, R2
1518AA:  MOV             R2, R12
1518AC:  BL              sub_151830
1518B0:  LDR             R1, =(_ZTV15ChannelSoundUrl - 0x1518B6); `vtable for'ChannelSoundUrl ...
1518B2:  ADD             R1, PC; `vtable for'ChannelSoundUrl
1518B4:  ADDS            R1, #8
1518B6:  STR             R1, [R0]
1518B8:  LDR             R1, [R4]
1518BA:  STR             R1, [R0,#0x30]
1518BC:  MOVS            R1, #0
1518BE:  STR             R1, [R4]
1518C0:  ADD             SP, SP, #0x10
1518C2:  POP             {R4,R5,R7,PC}
