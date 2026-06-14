; =========================================================
; Game Engine Function: _ZN9CRenderer13RenderOneRoadEP7CEntity
; Address            : 0x40FC20 - 0x40FC4E
; =========================================================

40FC20:  PUSH            {R4,R6,R7,LR}
40FC22:  ADD             R7, SP, #8
40FC24:  MOV             R4, R0
40FC26:  BLX             j__ZN12CPostEffects16IsVisionFXActiveEv; CPostEffects::IsVisionFXActive(void)
40FC2A:  CMP             R0, #1
40FC2C:  BNE             loc_40FC42
40FC2E:  BLX             j__ZN12CPostEffects35FilterFX_StoreAndSetDayNightBalanceEv; CPostEffects::FilterFX_StoreAndSetDayNightBalance(void)
40FC32:  LDR             R0, [R4]
40FC34:  LDR             R1, [R0,#0x4C]
40FC36:  MOV             R0, R4
40FC38:  BLX             R1
40FC3A:  POP.W           {R4,R6,R7,LR}
40FC3E:  B.W             sub_18CA64
40FC42:  LDR             R0, [R4]
40FC44:  LDR             R1, [R0,#0x4C]
40FC46:  MOV             R0, R4
40FC48:  POP.W           {R4,R6,R7,LR}
40FC4C:  BX              R1
