; =========================================================
; Game Engine Function: _ZN11CHandObject6RenderEv
; Address            : 0x452BD4 - 0x452C06
; =========================================================

452BD4:  PUSH            {R4,R6,R7,LR}
452BD6:  ADD             R7, SP, #8
452BD8:  MOV             R4, R0
452BDA:  LDR             R0, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x452BE0)
452BDC:  ADD             R0, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
452BDE:  LDR             R0, [R0]; CMirrors::TypeOfMirror ...
452BE0:  LDR             R0, [R0]; CMirrors::TypeOfMirror
452BE2:  CMP             R0, #3
452BE4:  IT EQ
452BE6:  POPEQ           {R4,R6,R7,PC}
452BE8:  LDR             R0, [R4,#0x18]
452BEA:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
452BEE:  LDR             R0, [R0,#0x18]
452BF0:  LDR.W           R1, [R4,#0x18C]
452BF4:  LDR             R0, [R0,#0x20]
452BF6:  LDR             R0, [R0]
452BF8:  BLX             j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
452BFC:  MOV             R0, R4; this
452BFE:  POP.W           {R4,R6,R7,LR}
452C02:  B.W             j_j__ZN7CObject6RenderEv; j_CObject::Render(void)
