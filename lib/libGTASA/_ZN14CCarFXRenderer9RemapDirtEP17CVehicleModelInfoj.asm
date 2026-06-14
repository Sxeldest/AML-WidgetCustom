; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer9RemapDirtEP17CVehicleModelInfoj
; Address            : 0x2CA170 - 0x2CA1A2
; =========================================================

2CA170:  PUSH            {R4-R7,LR}
2CA172:  ADD             R7, SP, #0xC
2CA174:  PUSH.W          {R8}
2CA178:  ADD.W           R5, R0, #0x248
2CA17C:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2CA186)
2CA17E:  MOV             R8, R1
2CA180:  MOVS            R6, #0
2CA182:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2CA184:  LDR             R4, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2CA186:  LDR.W           R0, [R5,R6,LSL#2]
2CA18A:  CMP             R0, #0
2CA18C:  ITT NE
2CA18E:  LDRNE.W         R1, [R4,R8,LSL#2]
2CA192:  BLXNE           j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
2CA196:  ADDS            R6, #1
2CA198:  CMP             R6, #0x40 ; '@'
2CA19A:  BNE             loc_2CA186
2CA19C:  POP.W           {R8}
2CA1A0:  POP             {R4-R7,PC}
