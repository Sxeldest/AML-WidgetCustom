; =========================================================
; Game Engine Function: _Z13FindUpgradeCBP8RpAtomicPv
; Address            : 0x58D0E8 - 0x58D116
; =========================================================

58D0E8:  PUSH            {R4,R5,R7,LR}
58D0EA:  ADD             R7, SP, #8
58D0EC:  MOV             R5, R1
58D0EE:  MOV             R4, R0
58D0F0:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
58D0F4:  TST.W           R0, #0x800
58D0F8:  BEQ             loc_58D112
58D0FA:  MOV             R0, R4
58D0FC:  BLX             j__ZN18CVisibilityPlugins12GetModelInfoEP8RpAtomic; CVisibilityPlugins::GetModelInfo(RpAtomic *)
58D100:  LDRH            R0, [R0,#0x28]
58D102:  LDR             R1, [R5]
58D104:  AND.W           R0, R0, #0x7C00
58D108:  CMP.W           R1, R0,LSR#10
58D10C:  ITT EQ
58D10E:  STREQ           R4, [R5,#4]
58D110:  MOVEQ           R4, #0
58D112:  MOV             R0, R4
58D114:  POP             {R4,R5,R7,PC}
