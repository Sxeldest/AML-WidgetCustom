; =========================================================
; Game Engine Function: _ZN11FxManager_c14FreeUpParticleEv
; Address            : 0x36DA66 - 0x36DAA4
; =========================================================

36DA66:  PUSH            {R4,R5,R7,LR}
36DA68:  ADD             R7, SP, #8
36DA6A:  ADD.W           R4, R0, #0xC
36DA6E:  B               loc_36DA7C
36DA70:  LDR             R0, [R1,#8]; this
36DA72:  BLX             j__ZN12FxSystemBP_c17FreePrtFromSystemEP10FxSystem_c; FxSystemBP_c::FreePrtFromSystem(FxSystem_c *)
36DA76:  CMP             R0, #0
36DA78:  IT NE
36DA7A:  POPNE           {R4,R5,R7,PC}
36DA7C:  MOV             R0, R4; this
36DA7E:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
36DA82:  MOV             R5, R0
36DA84:  BLX             rand
36DA88:  MOV             R1, R5
36DA8A:  BLX             __aeabi_idivmod
36DA8E:  MOV             R2, R1; int
36DA90:  MOV             R0, R4; this
36DA92:  MOVS            R1, #1; unsigned __int8
36DA94:  BLX             j__ZN6List_c13GetItemOffsetEhi; List_c::GetItemOffset(uchar,int)
36DA98:  MOV             R1, R0; FxSystem_c *
36DA9A:  LDRB.W          R0, [R1,#0x66]
36DA9E:  LSLS            R0, R0, #0x1A
36DAA0:  BMI             loc_36DA7C
36DAA2:  B               loc_36DA70
