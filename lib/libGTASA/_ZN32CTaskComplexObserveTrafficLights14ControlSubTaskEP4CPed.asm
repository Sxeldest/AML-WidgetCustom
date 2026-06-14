; =========================================================
; Game Engine Function: _ZN32CTaskComplexObserveTrafficLights14ControlSubTaskEP4CPed
; Address            : 0x4ECB6A - 0x4ECBA0
; =========================================================

4ECB6A:  PUSH            {R4-R7,LR}
4ECB6C:  ADD             R7, SP, #0xC
4ECB6E:  PUSH.W          {R11}
4ECB72:  MOV             R6, R1
4ECB74:  MOV             R4, R0
4ECB76:  BLX             j__ZN14CTrafficLights12LightForPedsEv; CTrafficLights::LightForPeds(void)
4ECB7A:  CBZ             R0, loc_4ECB80
4ECB7C:  LDR             R5, [R4,#8]
4ECB7E:  B               loc_4ECB98
4ECB80:  LDR             R0, [R4,#8]
4ECB82:  MOVS            R2, #0
4ECB84:  MOVS            R3, #0
4ECB86:  MOVS            R5, #0
4ECB88:  LDR             R1, [R0]
4ECB8A:  LDR.W           R12, [R1,#0x1C]
4ECB8E:  MOV             R1, R6
4ECB90:  BLX             R12
4ECB92:  CMP             R0, #0
4ECB94:  IT EQ
4ECB96:  LDREQ           R5, [R4,#8]
4ECB98:  MOV             R0, R5
4ECB9A:  POP.W           {R11}
4ECB9E:  POP             {R4-R7,PC}
