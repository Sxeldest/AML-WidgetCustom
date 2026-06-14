; =========================================================
; Game Engine Function: _ZN7CEntity17GetRandom2dEffectEih
; Address            : 0x3EED54 - 0x3EEE0A
; =========================================================

3EED54:  PUSH            {R4-R7,LR}
3EED56:  ADD             R7, SP, #0xC
3EED58:  PUSH.W          {R8-R11}
3EED5C:  SUB             SP, SP, #0x84
3EED5E:  MOV             R8, R0
3EED60:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EED6C)
3EED62:  MOV             R10, R1
3EED64:  LDRSH.W         R1, [R8,#0x26]
3EED68:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EED6A:  MOV             R9, R2
3EED6C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EED6E:  LDR.W           R6, [R0,R1,LSL#2]
3EED72:  LDRB.W          R0, [R6,#0x23]
3EED76:  CMP             R0, #0
3EED78:  BEQ             loc_3EEE00
3EED7A:  MOVS            R4, #0
3EED7C:  MOV.W           R11, #0
3EED80:  B               loc_3EED8A
3EED82:  CMP.W           R11, #0x1F
3EED86:  BLE             loc_3EEDB4
3EED88:  B               loc_3EEDBE
3EED8A:  MOV             R0, R6; this
3EED8C:  MOV             R1, R4; int
3EED8E:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
3EED92:  MOV             R5, R0
3EED94:  LDRB            R0, [R5,#0xC]
3EED96:  CMP             R0, R10
3EED98:  BNE             loc_3EEDBE
3EED9A:  CMP.W           R9, #0
3EED9E:  BEQ             loc_3EED82
3EEDA0:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
3EEDA4:  MOV             R1, R5
3EEDA6:  MOV             R2, R8
3EEDA8:  BLX             j__ZNK20CPedAttractorManager12HasEmptySlotEPK9C2dEffectPK7CEntity; CPedAttractorManager::HasEmptySlot(C2dEffect const*,CEntity const*)
3EEDAC:  CMP.W           R11, #0x1F
3EEDB0:  BGT             loc_3EEDBE
3EEDB2:  CBZ             R0, loc_3EEDBE
3EEDB4:  ADD             R0, SP, #0xA0+var_9C
3EEDB6:  STR.W           R5, [R0,R11,LSL#2]
3EEDBA:  ADD.W           R11, R11, #1
3EEDBE:  LDRB.W          R0, [R6,#0x23]
3EEDC2:  ADDS            R4, #1
3EEDC4:  CMP             R4, R0
3EEDC6:  BLT             loc_3EED8A
3EEDC8:  CMP.W           R11, #0
3EEDCC:  BEQ             loc_3EEE00
3EEDCE:  BLX             rand
3EEDD2:  UXTH            R0, R0
3EEDD4:  VLDR            S2, =0.000015259
3EEDD8:  VMOV            S0, R0
3EEDDC:  ADD             R1, SP, #0xA0+var_9C
3EEDDE:  VMOV            S4, R11
3EEDE2:  VCVT.F32.S32    S0, S0
3EEDE6:  VCVT.F32.S32    S4, S4
3EEDEA:  VMUL.F32        S0, S0, S2
3EEDEE:  VMUL.F32        S0, S0, S4
3EEDF2:  VCVT.S32.F32    S0, S0
3EEDF6:  VMOV            R0, S0
3EEDFA:  LDR.W           R0, [R1,R0,LSL#2]
3EEDFE:  B               loc_3EEE02
3EEE00:  MOVS            R0, #0
3EEE02:  ADD             SP, SP, #0x84
3EEE04:  POP.W           {R8-R11}
3EEE08:  POP             {R4-R7,PC}
