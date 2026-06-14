; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer19MaterialRemapDirtCBEP10RpMaterialPv
; Address            : 0x2CA10C - 0x2CA146
; =========================================================

2CA10C:  PUSH            {R4,R5,R7,LR}
2CA10E:  ADD             R7, SP, #8
2CA110:  MOV             R4, R0
2CA112:  MOV             R5, R1
2CA114:  LDR             R0, [R4]
2CA116:  CBZ             R0, loc_2CA12E
2CA118:  LDR             R1, =(RwEngineInstance_ptr - 0x2CA120)
2CA11A:  ADDS            R0, #0x10
2CA11C:  ADD             R1, PC; RwEngineInstance_ptr
2CA11E:  LDR             R1, [R1]; RwEngineInstance
2CA120:  LDR             R1, [R1]
2CA122:  LDR.W           R2, [R1,#0x110]
2CA126:  LDR             R1, =(aVehiclegrunge2_0 - 0x2CA12C); "vehiclegrunge256"
2CA128:  ADD             R1, PC; "vehiclegrunge256"
2CA12A:  BLX             R2
2CA12C:  CBZ             R0, loc_2CA132
2CA12E:  MOV             R0, R4
2CA130:  POP             {R4,R5,R7,PC}
2CA132:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2CA138)
2CA134:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2CA136:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2CA138:  LDR.W           R1, [R0,R5,LSL#2]
2CA13C:  MOV             R0, R4
2CA13E:  BLX             j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
2CA142:  MOV             R0, R4
2CA144:  POP             {R4,R5,R7,PC}
