; =========================================================
; Game Engine Function: _ZN9CColStore18RemoveAllCollisionEv
; Address            : 0x2E3078 - 0x2E30C6
; =========================================================

2E3078:  PUSH            {R4-R7,LR}
2E307A:  ADD             R7, SP, #0xC
2E307C:  PUSH.W          {R8}
2E3080:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2E308C)
2E3082:  MOVS            R5, #0
2E3084:  MOVW            R8, #0x61A9
2E3088:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2E308A:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2E308C:  ADD.W           R0, R0, #0x7A000
2E3090:  ADD.W           R4, R0, #0x13A
2E3094:  LDR             R0, =(_ZN9CColStore11ms_pColPoolE_ptr - 0x2E309A)
2E3096:  ADD             R0, PC; _ZN9CColStore11ms_pColPoolE_ptr
2E3098:  LDR             R6, [R0]; CColStore::ms_pColPool ...
2E309A:  LDR             R0, [R6]; CColStore::ms_pColPool
2E309C:  LDR             R0, [R0,#4]
2E309E:  ADD             R0, R5
2E30A0:  LDRSB.W         R0, [R0,#1]
2E30A4:  CMP             R0, #0
2E30A6:  BLT             loc_2E30B8
2E30A8:  LDRB            R0, [R4]
2E30AA:  TST.W           R0, #6
2E30AE:  ITT EQ
2E30B0:  ADDEQ.W         R0, R5, R8; this
2E30B4:  BLXEQ           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2E30B8:  ADDS            R5, #1
2E30BA:  ADDS            R4, #0x14
2E30BC:  CMP             R5, #0xFE
2E30BE:  BNE             loc_2E309A
2E30C0:  POP.W           {R8}
2E30C4:  POP             {R4-R7,PC}
