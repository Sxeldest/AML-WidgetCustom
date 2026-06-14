; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_c6UpdateEf
; Address            : 0x366D24 - 0x366DA6
; =========================================================

366D24:  PUSH            {R4-R7,LR}
366D26:  ADD             R7, SP, #0xC
366D28:  PUSH.W          {R8-R11}
366D2C:  SUB             SP, SP, #4
366D2E:  MOV             R5, R0
366D30:  ADD.W           R9, R5, #0x20 ; ' '
366D34:  MOV             R4, R1
366D36:  MOV             R0, R9; this
366D38:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
366D3C:  STR             R0, [SP,#0x20+var_20]
366D3E:  CMP             R0, #0
366D40:  ITT NE
366D42:  LDRNE.W         R6, [R9]
366D46:  CMPNE           R6, #0
366D48:  BEQ             loc_366D9C
366D4A:  LDR             R0, =(g_fxMan_ptr - 0x366D54)
366D4C:  MOV.W           R11, #2
366D50:  ADD             R0, PC; g_fxMan_ptr
366D52:  LDR.W           R10, [R0]; g_fxMan
366D56:  LDR             R0, [R6,#0x28]
366D58:  LDRB.W          R1, [R0,#0x55]
366D5C:  CMP             R1, #3
366D5E:  ITT EQ
366D60:  STRBEQ.W        R11, [R0,#0x55]
366D64:  LDREQ           R0, [R6,#0x28]
366D66:  LDRB.W          R0, [R0,#0x54]
366D6A:  CMP             R0, #2
366D6C:  BNE             loc_366D76
366D6E:  LDR             R6, [R6,#4]
366D70:  CMP             R6, #0
366D72:  BNE             loc_366D56
366D74:  B               loc_366D9C
366D76:  MOV             R0, R5; this
366D78:  MOV             R1, R4; float
366D7A:  MOV             R2, R6; FxEmitterPrt_c *
366D7C:  BLX             j__ZN13FxEmitterBP_c14UpdateParticleEfP14FxEmitterPrt_c; FxEmitterBP_c::UpdateParticle(float,FxEmitterPrt_c *)
366D80:  LDR.W           R8, [R6,#4]
366D84:  CBZ             R0, loc_366D96
366D86:  MOV             R0, R9; this
366D88:  MOV             R1, R6; ListItem_c *
366D8A:  BLX             j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
366D8E:  MOV             R0, R10; this
366D90:  MOV             R1, R6; FxEmitterPrt_c *
366D92:  BLX             j__ZN11FxManager_c14ReturnParticleEP14FxEmitterPrt_c; FxManager_c::ReturnParticle(FxEmitterPrt_c *)
366D96:  MOV             R6, R8
366D98:  CMP             R6, #0
366D9A:  BNE             loc_366D56
366D9C:  POP.W           {R0}
366DA0:  POP.W           {R8-R11}
366DA4:  POP             {R4-R7,PC}
