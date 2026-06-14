; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation10UpdateTimeEff
; Address            : 0x38BDB4 - 0x38BE48
; =========================================================

38BDB4:  PUSH            {R4,R6,R7,LR}
38BDB6:  ADD             R7, SP, #8
38BDB8:  MOV             R4, R0
38BDBA:  LDRH            R0, [R4,#0x2E]
38BDBC:  TST.W           R0, #1
38BDC0:  BNE             loc_38BDC6
38BDC2:  MOVS            R0, #1
38BDC4:  POP             {R4,R6,R7,PC}
38BDC6:  LDR             R1, [R4,#0x14]
38BDC8:  VLDR            S0, [R4,#0x20]
38BDCC:  VLDR            S2, [R1,#0x10]
38BDD0:  VCMPE.F32       S0, S2
38BDD4:  VMRS            APSR_nzcv, FPSCR
38BDD8:  BGE             loc_38BE32
38BDDA:  VLDR            S2, [R4,#0x28]
38BDDE:  VADD.F32        S0, S0, S2
38BDE2:  VSTR            S0, [R4,#0x20]
38BDE6:  VLDR            S2, [R1,#0x10]
38BDEA:  VCMPE.F32       S0, S2
38BDEE:  VMRS            APSR_nzcv, FPSCR
38BDF2:  BLT             loc_38BDC2
38BDF4:  LSLS            R1, R0, #0x1E
38BDF6:  BMI             loc_38BE3C
38BDF8:  LSLS            R1, R0, #0x1C
38BDFA:  VSTR            S2, [R4,#0x20]
38BDFE:  BPL             loc_38BE0E
38BE00:  MOVS            R1, #0
38BE02:  ORR.W           R0, R0, #4
38BE06:  MOVT            R1, #0xC080
38BE0A:  STR             R1, [R4,#0x1C]
38BE0C:  STRH            R0, [R4,#0x2E]
38BE0E:  LDR             R0, [R4,#0x30]
38BE10:  CMP             R0, #1
38BE12:  BNE             loc_38BDC2
38BE14:  LDRD.W          R2, R1, [R4,#0x34]
38BE18:  MOVS            R0, #0
38BE1A:  STR             R0, [R4,#0x30]
38BE1C:  MOV             R0, R4
38BE1E:  BLX             R2
38BE20:  LDR             R0, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x38BE28)
38BE22:  MOVS            R2, #0; void *
38BE24:  ADD             R0, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
38BE26:  LDR             R1, [R0]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
38BE28:  MOV             R0, R4; this
38BE2A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
38BE2E:  MOVS            R0, #1
38BE30:  POP             {R4,R6,R7,PC}
38BE32:  BIC.W           R0, R0, #1
38BE36:  STRH            R0, [R4,#0x2E]
38BE38:  MOVS            R0, #1
38BE3A:  POP             {R4,R6,R7,PC}
38BE3C:  VSUB.F32        S0, S0, S2
38BE40:  MOVS            R0, #1
38BE42:  VSTR            S0, [R4,#0x20]
38BE46:  POP             {R4,R6,R7,PC}
