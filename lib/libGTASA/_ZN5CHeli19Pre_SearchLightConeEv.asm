; =========================================================
; Game Engine Function: _ZN5CHeli19Pre_SearchLightConeEv
; Address            : 0x5740E8 - 0x574140
; =========================================================

5740E8:  PUSH            {R7,LR}
5740EA:  MOV             R7, SP
5740EC:  MOVS            R0, #8
5740EE:  MOVS            R1, #0
5740F0:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5740F4:  MOVS            R0, #6
5740F6:  MOVS            R1, #1
5740F8:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5740FC:  MOVS            R0, #0xA
5740FE:  MOVS            R1, #2
574100:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
574104:  MOVS            R0, #0xB
574106:  MOVS            R1, #2
574108:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
57410C:  MOVS            R0, #0xC
57410E:  MOVS            R1, #1
574110:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
574114:  MOVS            R0, #1
574116:  MOVS            R1, #0
574118:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
57411C:  MOVS            R0, #0xE
57411E:  MOVS            R1, #0
574120:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
574124:  MOVS            R0, #7
574126:  MOVS            R1, #2
574128:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
57412C:  MOVS            R0, #0x1D
57412E:  MOVS            R1, #7
574130:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
574134:  MOVS            R0, #0x1E
574136:  MOVS            R1, #0
574138:  POP.W           {R7,LR}
57413C:  B.W             sub_192888
