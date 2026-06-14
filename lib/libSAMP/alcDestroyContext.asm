; =========================================================
; Game Engine Function: alcDestroyContext
; Address            : 0x1BF234 - 0x1BF2B4
; =========================================================

1BF234:  PUSH            {R4,R5,R11,LR}
1BF238:  ADD             R11, SP, #8
1BF23C:  MOV             R5, R0
1BF240:  LDR             R0, =(unk_3827A0 - 0x1BF24C)
1BF244:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF248:  BL              j_EnterCriticalSection
1BF24C:  MOV             R0, R5
1BF250:  BL              j_alcGetContextsDevice
1BF254:  MOV             R4, R0
1BF258:  CMP             R4, #0
1BF25C:  BEQ             loc_1BF2A4
1BF260:  MOV             R0, R5
1BF264:  MOV             R1, R4
1BF268:  BL              sub_1BF3FC
1BF26C:  MOV             R0, #0x28950
1BF274:  LDR             R0, [R4,R0]
1BF278:  CMP             R0, #0
1BF27C:  BNE             loc_1BF2A4
1BF280:  MOV             R0, #0x28954
1BF288:  LDR             R0, [R4,R0]
1BF28C:  LDR             R1, [R0,#0xC]
1BF290:  MOV             R0, R4
1BF294:  BLX             R1
1BF298:  LDR             R0, [R4,#0xB4]
1BF29C:  BIC             R0, R0, #0x80000000
1BF2A0:  STR             R0, [R4,#0xB4]
1BF2A4:  LDR             R0, =(unk_3827A0 - 0x1BF2B0)
1BF2A8:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF2AC:  POP             {R4,R5,R11,LR}
1BF2B0:  B               j_LeaveCriticalSection
