; =========================================================
; Game Engine Function: _ZN6CTrain8TeleportE7CVectorh
; Address            : 0x580B56 - 0x580BFA
; =========================================================

580B56:  PUSH            {R4-R7,LR}
580B58:  ADD             R7, SP, #0xC
580B5A:  PUSH.W          {R8}
580B5E:  VPUSH           {D8-D10}
580B62:  MOV             R8, R3
580B64:  MOV             R6, R2
580B66:  MOV             R5, R1
580B68:  MOV             R4, R0
580B6A:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
580B6E:  LDR             R1, [R4,#0x14]
580B70:  LDR             R0, [R7,#arg_0]
580B72:  CBZ             R1, loc_580B80
580B74:  STR             R5, [R1,#0x30]
580B76:  LDR             R1, [R4,#0x14]
580B78:  STR             R6, [R1,#0x34]
580B7A:  LDR             R1, [R4,#0x14]
580B7C:  ADDS            R1, #0x38 ; '8'
580B7E:  B               loc_580B88
580B80:  ADD.W           R1, R4, #0xC; CEntity *
580B84:  STRD.W          R5, R6, [R4,#4]
580B88:  CMP             R0, #0
580B8A:  STR.W           R8, [R1]
580B8E:  BEQ             loc_580BD6
580B90:  LDR             R0, [R4,#0x14]; this
580B92:  CBZ             R0, loc_580BD2
580B94:  MOVS            R1, #0; x
580B96:  MOVS            R2, #0; float
580B98:  MOVS            R3, #0; float
580B9A:  VLDR            S16, [R0,#0x30]
580B9E:  VLDR            S18, [R0,#0x34]
580BA2:  VLDR            S20, [R0,#0x38]
580BA6:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
580BAA:  LDR             R0, [R4,#0x14]
580BAC:  VLDR            S0, [R0,#0x30]
580BB0:  VLDR            S2, [R0,#0x34]
580BB4:  VLDR            S4, [R0,#0x38]
580BB8:  VADD.F32        S0, S16, S0
580BBC:  VADD.F32        S2, S18, S2
580BC0:  VADD.F32        S4, S20, S4
580BC4:  VSTR            S0, [R0,#0x30]
580BC8:  VSTR            S2, [R0,#0x34]
580BCC:  VSTR            S4, [R0,#0x38]
580BD0:  B               loc_580BD6
580BD2:  MOVS            R0, #0
580BD4:  STR             R0, [R4,#0x10]
580BD6:  MOVS            R0, #0
580BD8:  VMOV.I32        Q8, #0
580BDC:  STRD.W          R0, R0, [R4,#0x58]
580BE0:  ADD.W           R0, R4, #0x48 ; 'H'
580BE4:  VST1.32         {D16-D17}, [R0]
580BE8:  MOV             R0, R4; this
580BEA:  VPOP            {D8-D10}
580BEE:  POP.W           {R8}
580BF2:  POP.W           {R4-R7,LR}
580BF6:  B.W             sub_19B3B8
