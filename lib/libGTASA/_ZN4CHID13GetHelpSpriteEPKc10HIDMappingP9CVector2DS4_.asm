; =========================================================
; Game Engine Function: _ZN4CHID13GetHelpSpriteEPKc10HIDMappingP9CVector2DS4_
; Address            : 0x28C390 - 0x28C3CA
; =========================================================

28C390:  PUSH            {R4,R5,R7,LR}
28C392:  ADD             R7, SP, #8
28C394:  SUB             SP, SP, #8
28C396:  MOV             R5, R1
28C398:  MOV             R1, R0
28C39A:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C3A6)
28C39C:  MOV             R12, R2
28C39E:  LDR.W           LR, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C3A8)
28C3A2:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C3A4:  ADD             LR, PC; _ZN4CHID11m_pInstanceE_ptr
28C3A6:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C3A8:  LDR.W           R2, [LR]; CHID::m_pInstance ...
28C3AC:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C3AE:  LDR.W           R0, [R2,R0,LSL#2]
28C3B2:  CBZ             R0, loc_28C3C4
28C3B4:  LDR             R2, [R0]
28C3B6:  LDR             R4, [R2,#0x24]
28C3B8:  MOV             R2, R5
28C3BA:  STR             R3, [SP,#0x10+var_10]
28C3BC:  MOV             R3, R12
28C3BE:  BLX             R4
28C3C0:  ADD             SP, SP, #8
28C3C2:  POP             {R4,R5,R7,PC}
28C3C4:  MOVS            R0, #0
28C3C6:  ADD             SP, SP, #8
28C3C8:  POP             {R4,R5,R7,PC}
