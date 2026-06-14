; =========================================================
; Game Engine Function: sub_59C96C
; Address            : 0x59C96C - 0x59CA22
; =========================================================

59C96C:  PUSH            {R4-R7,LR}
59C96E:  ADD             R7, SP, #0xC
59C970:  PUSH.W          {R8-R11}
59C974:  SUB             SP, SP, #4
59C976:  MOV             R9, R0
59C978:  LDR             R0, =(g2dEffectPluginOffset_ptr - 0x59C984)
59C97A:  MOV.W           R11, #0
59C97E:  MOVS            R4, #0
59C980:  ADD             R0, PC; g2dEffectPluginOffset_ptr
59C982:  MOVS            R6, #0
59C984:  LDR.W           R10, [R0]; g2dEffectPluginOffset
59C988:  B               loc_59C98E
59C98A:  ADDS            R4, #0x40 ; '@'
59C98C:  ADDS            R6, #1
59C98E:  LDR.W           R0, [R10]
59C992:  LDR.W           R0, [R9,R0]; this
59C996:  CMP             R0, #0
59C998:  ITE NE
59C99A:  LDRNE           R1, [R0]
59C99C:  MOVEQ           R1, #0; void *
59C99E:  CMP             R6, R1
59C9A0:  BCS             loc_59CA10
59C9A2:  ADD.W           R8, R0, R4
59C9A6:  LDRB.W          R0, [R8,#0x10]
59C9AA:  CMP             R0, #7
59C9AC:  BEQ             loc_59C9D2
59C9AE:  CMP             R0, #0
59C9B0:  BNE             loc_59C98A
59C9B2:  LDR.W           R0, [R8,#0x34]
59C9B6:  CBZ             R0, loc_59C9C0
59C9B8:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
59C9BC:  STR.W           R11, [R8,#0x34]
59C9C0:  LDR.W           R0, [R8,#0x38]
59C9C4:  CMP             R0, #0
59C9C6:  BEQ             loc_59C98A
59C9C8:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
59C9CC:  STR.W           R11, [R8,#0x38]
59C9D0:  B               loc_59C98A
59C9D2:  LDR.W           R0, [R8,#0x2C]; this
59C9D6:  CBZ             R0, loc_59C9E0
59C9D8:  BLX.W           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
59C9DC:  STR.W           R11, [R8,#0x2C]
59C9E0:  LDR.W           R5, [R8,#0x30]
59C9E4:  CMP             R5, #0
59C9E6:  BEQ             loc_59C98A
59C9E8:  LDR.W           R11, [R5,#4]
59C9EC:  CMP.W           R11, #0
59C9F0:  BEQ             loc_59CA00
59C9F2:  MOV             R0, R5
59C9F4:  MOVS            R1, #0
59C9F6:  BLX.W           j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
59C9FA:  MOV             R0, R11
59C9FC:  BLX.W           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
59CA00:  MOV             R0, R5
59CA02:  BLX.W           j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
59CA06:  MOV.W           R11, #0
59CA0A:  STR.W           R11, [R8,#0x30]
59CA0E:  B               loc_59C98A
59CA10:  CMP             R0, #0
59CA12:  IT NE
59CA14:  BLXNE.W         j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
59CA18:  MOV             R0, R9
59CA1A:  ADD             SP, SP, #4
59CA1C:  POP.W           {R8-R11}
59CA20:  POP             {R4-R7,PC}
