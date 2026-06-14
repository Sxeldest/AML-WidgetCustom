; =========================================================
; Game Engine Function: _ZN5CHeli20Post_SearchLightConeEv
; Address            : 0x574140 - 0x574188
; =========================================================

574140:  PUSH            {R7,LR}
574142:  MOV             R7, SP
574144:  MOVS            R0, #8
574146:  MOVS            R1, #1
574148:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
57414C:  MOVS            R0, #6
57414E:  MOVS            R1, #1
574150:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
574154:  MOVS            R0, #0xA
574156:  MOVS            R1, #5
574158:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
57415C:  MOVS            R0, #0xB
57415E:  MOVS            R1, #6
574160:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
574164:  MOVS            R0, #0xC
574166:  MOVS            R1, #0
574168:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
57416C:  MOVS            R0, #0x14
57416E:  MOVS            R1, #2
574170:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
574174:  MOVS            R0, #0x1D
574176:  MOVS            R1, #5
574178:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
57417C:  MOVS            R0, #0x1E
57417E:  MOVS            R1, #2
574180:  POP.W           {R7,LR}
574184:  B.W             sub_192888
