; =========================================================
; Game Engine Function: sub_21CD34
; Address            : 0x21CD34 - 0x21CE1A
; =========================================================

21CD34:  PUSH            {R4-R7,LR}
21CD36:  ADD             R7, SP, #0xC
21CD38:  PUSH.W          {R8-R11}
21CD3C:  SUB             SP, SP, #4
21CD3E:  MOV             R8, R0
21CD40:  BLX             j__Z19RpWorldSectorRenderP13RpWorldSector; RpWorldSectorRender(RpWorldSector *)
21CD44:  CMP             R0, #0
21CD46:  BEQ             loc_21CE10
21CD48:  MOV             R6, R8
21CD4A:  LDR.W           R4, [R6,#0x38]!
21CD4E:  CMP             R4, R6
21CD50:  BEQ             loc_21CDAC
21CD52:  LDR             R0, =(RwEngineInstance_ptr - 0x21CD58)
21CD54:  ADD             R0, PC; RwEngineInstance_ptr
21CD56:  LDR.W           R9, [R0]; RwEngineInstance
21CD5A:  LDR             R0, =(RwEngineInstance_ptr - 0x21CD60)
21CD5C:  ADD             R0, PC; RwEngineInstance_ptr
21CD5E:  LDR.W           R10, [R0]; RwEngineInstance
21CD62:  LDR             R0, =(RwEngineInstance_ptr - 0x21CD68)
21CD64:  ADD             R0, PC; RwEngineInstance_ptr
21CD66:  LDR.W           R11, [R0]; RwEngineInstance
21CD6A:  LDR             R5, [R4,#8]
21CD6C:  LDRB            R0, [R5,#2]
21CD6E:  LSLS            R0, R0, #0x1D
21CD70:  BPL             loc_21CDA6
21CD72:  LDR.W           R0, [R9]
21CD76:  LDRH.W          R1, [R5,#0x60]
21CD7A:  LDRH            R0, [R0,#8]
21CD7C:  CMP             R1, R0
21CD7E:  BEQ             loc_21CDA6
21CD80:  MOV             R0, R5
21CD82:  BLX             j__Z30RpAtomicGetWorldBoundingSphereP8RpAtomic; RpAtomicGetWorldBoundingSphere(RpAtomic *)
21CD86:  MOV             R1, R0
21CD88:  LDR.W           R0, [R10]
21CD8C:  LDR             R0, [R0]
21CD8E:  BLX             j__Z25RwCameraFrustumTestSpherePK8RwCameraPK8RwSphere; RwCameraFrustumTestSphere(RwCamera const*,RwSphere const*)
21CD92:  CMP             R0, #0
21CD94:  ITTT NE
21CD96:  LDRNE           R1, [R5,#0x48]
21CD98:  MOVNE           R0, R5
21CD9A:  BLXNE           R1
21CD9C:  LDR.W           R0, [R11]
21CDA0:  LDRH            R0, [R0,#8]
21CDA2:  STRH.W          R0, [R5,#0x60]
21CDA6:  LDR             R4, [R4]
21CDA8:  CMP             R4, R6
21CDAA:  BNE             loc_21CD6A
21CDAC:  MOV             R6, R8
21CDAE:  LDR.W           R4, [R6,#0x40]!
21CDB2:  CMP             R4, R6
21CDB4:  BEQ             loc_21CE10
21CDB6:  LDR             R0, =(RwEngineInstance_ptr - 0x21CDBC)
21CDB8:  ADD             R0, PC; RwEngineInstance_ptr
21CDBA:  LDR.W           R9, [R0]; RwEngineInstance
21CDBE:  LDR             R0, =(RwEngineInstance_ptr - 0x21CDC4)
21CDC0:  ADD             R0, PC; RwEngineInstance_ptr
21CDC2:  LDR.W           R10, [R0]; RwEngineInstance
21CDC6:  LDR             R0, =(RwEngineInstance_ptr - 0x21CDCC)
21CDC8:  ADD             R0, PC; RwEngineInstance_ptr
21CDCA:  LDR.W           R11, [R0]; RwEngineInstance
21CDCE:  LDR             R5, [R4,#8]
21CDD0:  LDRB            R0, [R5,#2]
21CDD2:  LSLS            R0, R0, #0x1D
21CDD4:  BPL             loc_21CE0A
21CDD6:  LDR.W           R0, [R9]
21CDDA:  LDRH.W          R1, [R5,#0x60]
21CDDE:  LDRH            R0, [R0,#8]
21CDE0:  CMP             R1, R0
21CDE2:  BEQ             loc_21CE0A
21CDE4:  MOV             R0, R5
21CDE6:  BLX             j__Z30RpAtomicGetWorldBoundingSphereP8RpAtomic; RpAtomicGetWorldBoundingSphere(RpAtomic *)
21CDEA:  MOV             R1, R0
21CDEC:  LDR.W           R0, [R10]
21CDF0:  LDR             R0, [R0]
21CDF2:  BLX             j__Z25RwCameraFrustumTestSpherePK8RwCameraPK8RwSphere; RwCameraFrustumTestSphere(RwCamera const*,RwSphere const*)
21CDF6:  CMP             R0, #0
21CDF8:  ITTT NE
21CDFA:  LDRNE           R1, [R5,#0x48]
21CDFC:  MOVNE           R0, R5
21CDFE:  BLXNE           R1
21CE00:  LDR.W           R0, [R11]
21CE04:  LDRH            R0, [R0,#8]
21CE06:  STRH.W          R0, [R5,#0x60]
21CE0A:  LDR             R4, [R4]
21CE0C:  CMP             R4, R6
21CE0E:  BNE             loc_21CDCE
21CE10:  MOV             R0, R8
21CE12:  ADD             SP, SP, #4
21CE14:  POP.W           {R8-R11}
21CE18:  POP             {R4-R7,PC}
