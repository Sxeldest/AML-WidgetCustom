; =========================================================
; Game Engine Function: sub_150BA8
; Address            : 0x150BA8 - 0x150C06
; =========================================================

150BA8:  PUSH            {R4-R7,LR}
150BAA:  ADD             R7, SP, #0xC
150BAC:  PUSH.W          {R8}
150BB0:  SUB             SP, SP, #0x18
150BB2:  MOV             R8, R0
150BB4:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN12AudioChannel12ClearEffectsEvE3$_1NS_9allocatorIS3_EEFvP11AudioStreamEEE - 0x150BBC); `vtable for'std::__function::__func<AudioChannel::ClearEffects(void)::$_1,std::allocator<AudioChannel::ClearEffects(void)::$_1>,void ()(AudioStream *)> ...
150BB6:  MOV             R5, SP
150BB8:  ADD             R0, PC; `vtable for'std::__function::__func<AudioChannel::ClearEffects(void)::$_1,std::allocator<AudioChannel::ClearEffects(void)::$_1>,void ()(AudioStream *)>
150BBA:  STR             R5, [SP,#0x28+var_18]
150BBC:  ADDS            R0, #8
150BBE:  STR             R0, [SP,#0x28+var_28]
150BC0:  MOV             R0, R8
150BC2:  MOV             R1, R5
150BC4:  BL              sub_150A8C
150BC8:  LDR             R0, [SP,#0x28+var_18]
150BCA:  CMP             R5, R0
150BCC:  BEQ             loc_150BD4
150BCE:  CBZ             R0, loc_150BDE
150BD0:  MOVS            R1, #5
150BD2:  B               loc_150BD6
150BD4:  MOVS            R1, #4
150BD6:  LDR             R2, [R0]
150BD8:  LDR.W           R1, [R2,R1,LSL#2]
150BDC:  BLX             R1
150BDE:  LDRD.W          R5, R6, [R8,#0x24]
150BE2:  CMP             R6, R5
150BE4:  BEQ             loc_150BFA
150BE6:  MOVS            R4, #0
150BE8:  LDR.W           R0, [R6,#-4]!
150BEC:  STR             R4, [R6]
150BEE:  CBZ             R0, loc_150BF6
150BF0:  LDR             R1, [R0]
150BF2:  LDR             R1, [R1,#4]
150BF4:  BLX             R1
150BF6:  CMP             R6, R5
150BF8:  BNE             loc_150BE8
150BFA:  STR.W           R5, [R8,#0x28]
150BFE:  ADD             SP, SP, #0x18
150C00:  POP.W           {R8}
150C04:  POP             {R4-R7,PC}
