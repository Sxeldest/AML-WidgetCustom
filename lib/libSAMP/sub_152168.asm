; =========================================================
; Game Engine Function: sub_152168
; Address            : 0x152168 - 0x15218A
; =========================================================

152168:  PUSH            {R4,R6,R7,LR}
15216A:  ADD             R7, SP, #8
15216C:  LDR             R1, =(_ZTV12ChannelSound - 0x152178); `vtable for'ChannelSound ...
15216E:  MOV             R4, R0
152170:  LDR             R0, [R0,#4]
152172:  MOVS            R2, #0
152174:  ADD             R1, PC; `vtable for'ChannelSound
152176:  ADD.W           R1, R1, #8
15217A:  STRD.W          R1, R2, [R4]
15217E:  CBZ             R0, loc_152186
152180:  LDR             R1, [R0]
152182:  LDR             R1, [R1,#4]
152184:  BLX             R1
152186:  MOV             R0, R4
152188:  POP             {R4,R6,R7,PC}
