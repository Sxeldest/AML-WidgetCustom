; =========================================================
; Game Engine Function: sub_152030
; Address            : 0x152030 - 0x152080
; =========================================================

152030:  PUSH            {R4,R5,R7,LR}
152032:  ADD             R7, SP, #8
152034:  LDR             R1, =(_ZTV15ChannelSoundUrl - 0x15203E); `vtable for'ChannelSoundUrl ...
152036:  MOV             R5, R0
152038:  LDR             R0, [R0,#0x30]
15203A:  ADD             R1, PC; `vtable for'ChannelSoundUrl
15203C:  ADD.W           R1, R1, #8
152040:  STR             R1, [R5]
152042:  CBZ             R0, loc_152064
152044:  ADDS            R1, R0, #4
152046:  DMB.W           ISH
15204A:  LDREX.W         R2, [R1]
15204E:  SUBS            R3, R2, #1
152050:  STREX.W         R4, R3, [R1]
152054:  CMP             R4, #0
152056:  BNE             loc_15204A
152058:  DMB.W           ISH
15205C:  CBNZ            R2, loc_152064
15205E:  LDR             R1, [R0]
152060:  LDR             R1, [R1,#8]
152062:  BLX             R1
152064:  LDR             R1, =(_ZTV12ChannelSound - 0x15206E); `vtable for'ChannelSound ...
152066:  MOVS            R2, #0
152068:  LDR             R0, [R5,#4]
15206A:  ADD             R1, PC; `vtable for'ChannelSound
15206C:  ADD.W           R1, R1, #8
152070:  STRD.W          R1, R2, [R5]
152074:  CBZ             R0, loc_15207C
152076:  LDR             R1, [R0]
152078:  LDR             R1, [R1,#4]
15207A:  BLX             R1
15207C:  MOV             R0, R5
15207E:  POP             {R4,R5,R7,PC}
