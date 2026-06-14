; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation11UpdateBlendEf
; Address            : 0x38BE4C - 0x38BEF6
; =========================================================

38BE4C:  PUSH            {R4,R6,R7,LR}
38BE4E:  ADD             R7, SP, #8
38BE50:  MOV             R4, R0
38BE52:  VMOV            S4, R1
38BE56:  VLDR            S0, [R4,#0x1C]
38BE5A:  VLDR            S2, [R4,#0x18]
38BE5E:  VMUL.F32        S4, S0, S4
38BE62:  VADD.F32        S2, S2, S4
38BE66:  VCMPE.F32       S2, #0.0
38BE6A:  VSTR            S2, [R4,#0x18]
38BE6E:  VMRS            APSR_nzcv, FPSCR
38BE72:  ITT LE
38BE74:  VCMPELE.F32     S0, #0.0
38BE78:  VMRSLE          APSR_nzcv, FPSCR
38BE7C:  BGE             loc_38BEB2
38BE7E:  LDRB.W          R0, [R4,#0x2E]
38BE82:  MOVS            R1, #0
38BE84:  STRD.W          R1, R1, [R4,#0x18]
38BE88:  LSLS            R0, R0, #0x1D
38BE8A:  BPL             loc_38BED8
38BE8C:  LDR             R0, [R4,#0x30]
38BE8E:  SUBS            R0, #1
38BE90:  CMP             R0, #1
38BE92:  BHI             loc_38BEEA
38BE94:  LDRD.W          R2, R1, [R4,#0x34]
38BE98:  MOV             R0, R4
38BE9A:  BLX             R2
38BE9C:  LDR             R0, [R4,#0x30]
38BE9E:  CMP             R0, #2
38BEA0:  BNE             loc_38BEDC
38BEA2:  LDR             R0, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x38BEAA)
38BEA4:  MOVS            R2, #0; void *
38BEA6:  ADD             R0, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
38BEA8:  LDR             R1, [R0]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
38BEAA:  MOV             R0, R4; this
38BEAC:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
38BEB0:  B               loc_38BEEA
38BEB2:  VMOV.F32        S4, #1.0
38BEB6:  VCMPE.F32       S2, S4
38BEBA:  VMRS            APSR_nzcv, FPSCR
38BEBE:  BLE             loc_38BED8
38BEC0:  VCMPE.F32       S0, #0.0
38BEC4:  MOV.W           R0, #0x3F800000
38BEC8:  VMRS            APSR_nzcv, FPSCR
38BECC:  STR             R0, [R4,#0x18]
38BECE:  BLE             loc_38BED8
38BED0:  MOVS            R0, #0
38BED2:  STR             R0, [R4,#0x1C]
38BED4:  MOVS            R0, #1
38BED6:  POP             {R4,R6,R7,PC}
38BED8:  MOVS            R0, #1
38BEDA:  POP             {R4,R6,R7,PC}
38BEDC:  LDR             R0, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x38BEE4)
38BEDE:  MOVS            R2, #0; void *
38BEE0:  ADD             R0, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
38BEE2:  LDR             R1, [R0]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
38BEE4:  MOV             R0, R4; this
38BEE6:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
38BEEA:  LDR             R0, [R4]
38BEEC:  LDR             R1, [R0,#4]
38BEEE:  MOV             R0, R4
38BEF0:  BLX             R1
38BEF2:  MOVS            R0, #0
38BEF4:  POP             {R4,R6,R7,PC}
