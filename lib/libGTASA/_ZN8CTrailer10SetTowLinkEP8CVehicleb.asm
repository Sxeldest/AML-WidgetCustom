; =========================================================
; Game Engine Function: _ZN8CTrailer10SetTowLinkEP8CVehicleb
; Address            : 0x57BE78 - 0x57C01A
; =========================================================

57BE78:  PUSH            {R4-R7,LR}
57BE7A:  ADD             R7, SP, #0xC
57BE7C:  PUSH.W          {R11}
57BE80:  SUB             SP, SP, #0x18
57BE82:  MOV             R4, R1
57BE84:  MOV             R6, R2
57BE86:  MOV             R5, R0
57BE88:  CMP             R4, #0
57BE8A:  BEQ.W           loc_57BFEC
57BE8E:  LDRB.W          R1, [R5,#0x3A]
57BE92:  MOVS            R0, #0
57BE94:  LSRS            R2, R1, #3
57BE96:  CMP             R2, #0xA
57BE98:  BHI.W           loc_57BFEE
57BE9C:  MOVS            R3, #1
57BE9E:  LSL.W           R2, R3, R2
57BEA2:  TST.W           R2, #0x418
57BEA6:  BEQ.W           loc_57BFEE
57BEAA:  MOVS            R0, #0xA
57BEAC:  STR.W           R4, [R5,#0x4D0]
57BEB0:  BFI.W           R1, R0, #3, #0x1D
57BEB4:  STRB.W          R1, [R5,#0x3A]
57BEB8:  ADD.W           R1, R5, #0x4D0; CEntity **
57BEBC:  MOV             R0, R4; this
57BEBE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
57BEC2:  ADDW            R1, R4, #0x4D4; CEntity **
57BEC6:  MOV             R0, R5; this
57BEC8:  STR.W           R5, [R4,#0x4D4]
57BECC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
57BED0:  MOV             R0, R5; this
57BED2:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
57BED6:  MOV             R0, R4; this
57BED8:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
57BEDC:  MOV             R0, R5; this
57BEDE:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
57BEE2:  MOV             R0, R4; this
57BEE4:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
57BEE8:  CMP             R6, #1
57BEEA:  BNE             loc_57BF1C
57BEEC:  ADD.W           R0, R5, #0xA00
57BEF0:  VLDR            S0, =-1000.0
57BEF4:  VLDR            S2, [R0]
57BEF8:  VCMPE.F32       S2, S0
57BEFC:  VMRS            APSR_nzcv, FPSCR
57BF00:  ITT GT
57BF02:  MOVGT           R1, #0
57BF04:  STRGT           R1, [R0]
57BF06:  LDR             R0, [R4,#0x14]
57BF08:  CBZ             R0, loc_57BF36
57BF0A:  LDRD.W          R2, R1, [R0,#0x10]; x
57BF0E:  EOR.W           R0, R2, #0x80000000; y
57BF12:  BLX             atan2f
57BF16:  VMOV            S0, R0
57BF1A:  B               loc_57BF3A
57BF1C:  MOV             R0, R4; this
57BF1E:  MOVS            R1, #1; bool
57BF20:  MOVS            R2, #0; bool
57BF22:  BLX             j__ZN8CVehicle17UpdateTractorLinkEbb; CVehicle::UpdateTractorLink(bool,bool)
57BF26:  ADD.W           R0, R4, #0x13C; this
57BF2A:  MOVS            R1, #0x71 ; 'q'; int
57BF2C:  MOVS            R2, #0; float
57BF2E:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
57BF32:  MOVS            R0, #1
57BF34:  B               loc_57BFEE
57BF36:  VLDR            S0, [R4,#0x10]
57BF3A:  LDR             R0, [R5,#0x14]; this
57BF3C:  CBZ             R0, loc_57BF48
57BF3E:  VMOV            R1, S0; x
57BF42:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
57BF46:  B               loc_57BF4C
57BF48:  VSTR            S0, [R5,#0x10]
57BF4C:  MOVS            R0, #0
57BF4E:  MOV             R1, SP
57BF50:  STRD.W          R0, R0, [SP,#0x28+var_18]
57BF54:  MOVS            R2, #1
57BF56:  STRD.W          R0, R0, [SP,#0x28+var_28]
57BF5A:  MOV             R3, R5
57BF5C:  STRD.W          R0, R0, [SP,#0x28+var_20]
57BF60:  LDR             R0, [R5]
57BF62:  LDR.W           R6, [R0,#0xF0]
57BF66:  MOV             R0, R5
57BF68:  BLX             R6
57BF6A:  CMP             R0, #1
57BF6C:  BNE             loc_57BFEC
57BF6E:  LDR             R0, [R4]
57BF70:  ADD             R1, SP, #0x28+var_1C
57BF72:  MOVS            R2, #1
57BF74:  MOV             R3, R5
57BF76:  LDR.W           R6, [R0,#0xF4]
57BF7A:  MOV             R0, R4
57BF7C:  BLX             R6
57BF7E:  CMP             R0, #1
57BF80:  BNE             loc_57BFEC
57BF82:  LDR             R1, [R5,#0x14]
57BF84:  VLDR            S0, [SP,#0x28+var_28]
57BF88:  ADD.W           R0, R1, #0x30 ; '0'
57BF8C:  CMP             R1, #0
57BF8E:  VLDR            S2, [SP,#0x28+var_24]
57BF92:  MOV             R2, R0
57BF94:  VLDR            S4, [SP,#0x28+var_20]
57BF98:  IT EQ
57BF9A:  ADDEQ           R2, R5, #4
57BF9C:  CMP             R1, #0
57BF9E:  VLDR            S6, [R2]
57BFA2:  VLDR            S8, [R2,#4]
57BFA6:  VLDR            S10, [R2,#8]
57BFAA:  VSUB.F32        S0, S0, S6
57BFAE:  VSUB.F32        S2, S2, S8
57BFB2:  VLDR            S8, [SP,#0x28+var_18]
57BFB6:  VSUB.F32        S6, S4, S10
57BFBA:  VLDR            S4, [SP,#0x28+var_1C]
57BFBE:  VLDR            S10, [SP,#0x28+var_14]
57BFC2:  VSTR            S0, [SP,#0x28+var_28]
57BFC6:  VSUB.F32        S4, S4, S0
57BFCA:  VSTR            S2, [SP,#0x28+var_24]
57BFCE:  VSUB.F32        S2, S8, S2
57BFD2:  VSUB.F32        S0, S10, S6
57BFD6:  VSTR            S6, [SP,#0x28+var_20]
57BFDA:  BEQ             loc_57BFF6
57BFDC:  VSTR            S4, [R0]
57BFE0:  LDR             R0, [R5,#0x14]
57BFE2:  VSTR            S2, [R0,#0x34]
57BFE6:  LDR             R0, [R5,#0x14]
57BFE8:  ADDS            R0, #0x38 ; '8'
57BFEA:  B               loc_57C002
57BFEC:  MOVS            R0, #0
57BFEE:  ADD             SP, SP, #0x18
57BFF0:  POP.W           {R11}
57BFF4:  POP             {R4-R7,PC}
57BFF6:  ADD.W           R0, R5, #0xC
57BFFA:  VSTR            S4, [R5,#4]
57BFFE:  VSTR            S2, [R5,#8]
57C002:  VSTR            S0, [R0]
57C006:  VLDR            D16, [R4,#0x48]
57C00A:  LDR             R0, [R4,#0x50]
57C00C:  STR             R0, [R5,#0x50]
57C00E:  MOV             R0, R5; this
57C010:  VSTR            D16, [R5,#0x48]
57C014:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
57C018:  B               loc_57BF26
