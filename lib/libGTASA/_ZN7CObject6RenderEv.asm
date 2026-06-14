; =========================================================
; Game Engine Function: _ZN7CObject6RenderEv
; Address            : 0x454EF0 - 0x454F62
; =========================================================

454EF0:  PUSH            {R4,R6,R7,LR}
454EF2:  ADD             R7, SP, #8
454EF4:  SUB             SP, SP, #8
454EF6:  MOV             R4, R0
454EF8:  LDR.W           R1, [R4,#0x144]
454EFC:  TST.W           R1, #0x2000000
454F00:  BNE             loc_454F5E
454F02:  LDRSH.W         R0, [R4,#0x14E]
454F06:  ADDS            R2, R0, #1
454F08:  BEQ             loc_454F58
454F0A:  LSLS            R1, R1, #0x18
454F0C:  BPL             loc_454F58
454F0E:  LDRB.W          R1, [R4,#0x140]
454F12:  CMP             R1, #3
454F14:  BNE             loc_454F58
454F16:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x454F1E)
454F18:  LDR             R2, =(_ZN17CVehicleModelInfo16ms_pRemapTextureE_ptr - 0x454F24)
454F1A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
454F1C:  LDR.W           R3, [R4,#0x174]
454F20:  ADD             R2, PC; _ZN17CVehicleModelInfo16ms_pRemapTextureE_ptr
454F22:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
454F24:  LDR             R2, [R2]; CVehicleModelInfo::ms_pRemapTexture ...
454F26:  LDR.W           R0, [R1,R0,LSL#2]; this
454F2A:  STR             R3, [R2]; CVehicleModelInfo::ms_pRemapTexture
454F2C:  LDRB.W          R1, [R4,#0x150]; unsigned __int8
454F30:  LDRB.W          R2, [R4,#0x151]; unsigned __int8
454F34:  LDRB.W          R3, [R4,#0x152]; unsigned __int8
454F38:  LDRB.W          R12, [R4,#0x153]
454F3C:  STR.W           R12, [SP,#0x10+var_10]; unsigned __int8
454F40:  BLX             j__ZN17CVehicleModelInfo16SetVehicleColourEhhhh; CVehicleModelInfo::SetVehicleColour(uchar,uchar,uchar,uchar)
454F44:  LDR             R0, [R4,#0x18]
454F46:  LDRB            R1, [R0]
454F48:  CMP             R1, #1
454F4A:  BNE             loc_454F58
454F4C:  LDR             R1, =(unk_99E53C - 0x454F52)
454F4E:  ADD             R1, PC; unk_99E53C
454F50:  STR             R1, [SP,#0x10+var_C]
454F52:  ADD             R1, SP, #0x10+var_C
454F54:  BLX             j__ZN17CVehicleModelInfo22SetEditableMaterialsCBEP8RpAtomicPv; CVehicleModelInfo::SetEditableMaterialsCB(RpAtomic *,void *)
454F58:  MOV             R0, R4; this
454F5A:  BLX             j__ZN7CEntity6RenderEv; CEntity::Render(void)
454F5E:  ADD             SP, SP, #8
454F60:  POP             {R4,R6,R7,PC}
