; =========================================================
; Game Engine Function: sub_1C987C
; Address            : 0x1C987C - 0x1C9914
; =========================================================

1C987C:  PUSH            {R4-R7,LR}
1C987E:  ADD             R7, SP, #0xC
1C9880:  PUSH.W          {R11}
1C9884:  SUB             SP, SP, #8
1C9886:  MOV             R4, R0
1C9888:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C988E)
1C988A:  ADD             R0, PC; _rpSkinGlobals_ptr
1C988C:  LDR             R0, [R0]; _rpSkinGlobals
1C988E:  LDR             R0, [R0,#(dword_6B727C - 0x6B7274)]
1C9890:  LDR             R5, [R2,R0]
1C9892:  CBZ             R5, loc_1C990A
1C9894:  LDRB            R0, [R2,#0xB]
1C9896:  LSLS            R0, R0, #0x1F
1C9898:  BNE             loc_1C98F8
1C989A:  LDR             R0, [R5,#0x10]
1C989C:  LDR             R6, [R2,#0x14]
1C989E:  LDR             R2, [R5,#4]
1C98A0:  LSLS            R0, R0, #0x10
1C98A2:  LDRB            R1, [R5]
1C98A4:  UXTB16.W        R0, R0
1C98A8:  BFI.W           R0, R2, #8, #8
1C98AC:  MOVS            R2, #4
1C98AE:  ORRS            R0, R1
1C98B0:  ADD             R1, SP, #0x18+var_14
1C98B2:  STR             R0, [SP,#0x18+var_14]
1C98B4:  MOV             R0, R4
1C98B6:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C98BA:  CBZ             R0, loc_1C9908
1C98BC:  LDRD.W          R2, R1, [R5,#4]; size_t
1C98C0:  MOV             R0, R4; int
1C98C2:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1C98C6:  CBZ             R0, loc_1C9908
1C98C8:  LDR             R1, [R5,#0x14]
1C98CA:  LSLS            R2, R6, #2
1C98CC:  MOV             R0, R4
1C98CE:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C98D2:  CBZ             R0, loc_1C9908
1C98D4:  LDR             R1, [R5,#0x18]; void *
1C98D6:  LSLS            R2, R6, #4
1C98D8:  MOV             R0, R4; int
1C98DA:  BLX             j__Z17RwStreamWriteRealP8RwStreamPKfj; RwStreamWriteReal(RwStream *,float const*,uint)
1C98DE:  CBZ             R0, loc_1C9908
1C98E0:  LDR             R0, [R5]
1C98E2:  LDR             R1, [R5,#0xC]; void *
1C98E4:  LSLS            R2, R0, #6
1C98E6:  MOV             R0, R4; int
1C98E8:  BLX             j__Z17RwStreamWriteRealP8RwStreamPKfj; RwStreamWriteReal(RwStream *,float const*,uint)
1C98EC:  CBZ             R0, loc_1C9908
1C98EE:  MOV             R0, R4
1C98F0:  MOV             R1, R5
1C98F2:  BLX             j__Z27_rpSkinSplitDataStreamWriteP8RwStreamPK6RpSkin; _rpSkinSplitDataStreamWrite(RwStream *,RpSkin const*)
1C98F6:  B               loc_1C9900
1C98F8:  MOV             R0, R4
1C98FA:  MOV             R1, R2
1C98FC:  BLX             j__Z26_rpSkinGeometryNativeWriteP8RwStreamPK10RpGeometry; _rpSkinGeometryNativeWrite(RwStream *,RpGeometry const*)
1C9900:  CMP             R0, #0
1C9902:  IT EQ
1C9904:  MOVEQ           R4, #0
1C9906:  B               loc_1C990A
1C9908:  MOVS            R4, #0
1C990A:  MOV             R0, R4
1C990C:  ADD             SP, SP, #8
1C990E:  POP.W           {R11}
1C9912:  POP             {R4-R7,PC}
