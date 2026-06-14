; =========================================================
; Game Engine Function: sub_152088
; Address            : 0x152088 - 0x1520DE
; =========================================================

152088:  PUSH            {R4,R5,R7,LR}
15208A:  ADD             R7, SP, #8
15208C:  LDR             R1, =(_ZTV15ChannelSoundUrl - 0x152096); `vtable for'ChannelSoundUrl ...
15208E:  MOV             R5, R0
152090:  LDR             R0, [R0,#0x30]
152092:  ADD             R1, PC; `vtable for'ChannelSoundUrl
152094:  ADD.W           R1, R1, #8
152098:  STR             R1, [R5]
15209A:  CBZ             R0, loc_1520BC
15209C:  ADDS            R1, R0, #4
15209E:  DMB.W           ISH
1520A2:  LDREX.W         R2, [R1]
1520A6:  SUBS            R3, R2, #1
1520A8:  STREX.W         R4, R3, [R1]
1520AC:  CMP             R4, #0
1520AE:  BNE             loc_1520A2
1520B0:  DMB.W           ISH
1520B4:  CBNZ            R2, loc_1520BC
1520B6:  LDR             R1, [R0]
1520B8:  LDR             R1, [R1,#8]
1520BA:  BLX             R1
1520BC:  LDR             R1, =(_ZTV12ChannelSound - 0x1520C6); `vtable for'ChannelSound ...
1520BE:  MOVS            R2, #0
1520C0:  LDR             R0, [R5,#4]
1520C2:  ADD             R1, PC; `vtable for'ChannelSound
1520C4:  ADD.W           R1, R1, #8
1520C8:  STRD.W          R1, R2, [R5]
1520CC:  CBZ             R0, loc_1520D4
1520CE:  LDR             R1, [R0]
1520D0:  LDR             R1, [R1,#4]
1520D2:  BLX             R1
1520D4:  MOV             R0, R5; void *
1520D6:  POP.W           {R4,R5,R7,LR}
1520DA:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
