; =========================================================
; Game Engine Function: _ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs
; Address            : 0x3A7B28 - 0x3A7BF2
; =========================================================

3A7B28:  PUSH            {R4-R7,LR}
3A7B2A:  ADD             R7, SP, #0xC
3A7B2C:  PUSH.W          {R8-R11}
3A7B30:  SUB             SP, SP, #4
3A7B32:  VPUSH           {D8-D12}
3A7B36:  MOV             R4, R0
3A7B38:  LDRD.W          R5, R9, [R7,#arg_0]
3A7B3C:  STRH            R2, [R4,#2]
3A7B3E:  MOV             R6, R4
3A7B40:  STRH            R1, [R4]
3A7B42:  LDR.W           R0, [R6,#8]!; this
3A7B46:  LDR.W           R8, [R7,#arg_8]
3A7B4A:  LDR.W           R11, [R7,#arg_20]
3A7B4E:  CMP             R0, #0
3A7B50:  LDR.W           R10, [R7,#arg_1C]
3A7B54:  VLDR            S18, [R7,#arg_24]
3A7B58:  VLDR            S16, [R7,#arg_18]
3A7B5C:  VLDR            S20, [R7,#arg_14]
3A7B60:  VLDR            S22, [R7,#arg_10]
3A7B64:  VLDR            S24, [R7,#arg_C]
3A7B68:  STR             R3, [R4,#4]
3A7B6A:  BEQ             loc_3A7B76
3A7B6C:  MOV             R1, R6; CEntity **
3A7B6E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3A7B72:  MOVS            R0, #0
3A7B74:  STR             R0, [R6]
3A7B76:  MOVS            R0, #0
3A7B78:  VMOV.I32        Q8, #0
3A7B7C:  MOVT            R0, #0xBF80
3A7B80:  MOV.W           R1, #0xFFFFFFFF
3A7B84:  STRD.W          R1, R0, [R4,#0xC]
3A7B88:  ADD.W           R0, R4, #0x30 ; '0'
3A7B8C:  VSTR            S24, [R4,#0x14]
3A7B90:  MOV             R1, R5
3A7B92:  VSTR            S22, [R4,#0x18]
3A7B96:  MOV             R2, R9
3A7B98:  VSTR            S20, [R4,#0x1C]
3A7B9C:  MOV             R3, R8
3A7B9E:  VSTR            S18, [R4,#0x20]
3A7BA2:  VST1.32         {D16-D17}, [R0]
3A7BA6:  MOV             R0, R4
3A7BA8:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3A7BAC:  MOVS            R0, #1
3A7BAE:  MOVS            R1, #0
3A7BB0:  STRB.W          R10, [R4,#0x54]
3A7BB4:  MOVT            R1, #0xC2C8
3A7BB8:  VSTR            S16, [R4,#0x50]
3A7BBC:  MOV.W           R2, #0x3F800000
3A7BC0:  STRH.W          R11, [R4,#0x56]
3A7BC4:  STRH.W          R0, [R4,#0x58]
3A7BC8:  LDR             R0, [R7,#arg_28]
3A7BCA:  STRH.W          R0, [R4,#0x5C]
3A7BCE:  MOVS            R0, #0
3A7BD0:  STRH.W          R0, [R4,#0x5E]
3A7BD4:  STRD.W          R1, R2, [R4,#0x60]
3A7BD8:  STRH.W          R0, [R4,#0x68]
3A7BDC:  STR             R0, [R4,#0x6C]
3A7BDE:  MOVW            R0, #0xFFFF
3A7BE2:  STRH.W          R0, [R4,#0x70]
3A7BE6:  VPOP            {D8-D12}
3A7BEA:  ADD             SP, SP, #4
3A7BEC:  POP.W           {R8-R11}
3A7BF0:  POP             {R4-R7,PC}
