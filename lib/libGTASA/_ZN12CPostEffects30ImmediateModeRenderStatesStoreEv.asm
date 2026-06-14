; =========================================================
; Game Engine Function: _ZN12CPostEffects30ImmediateModeRenderStatesStoreEv
; Address            : 0x5B28D8 - 0x5B294A
; =========================================================

5B28D8:  PUSH            {R4,R6,R7,LR}
5B28DA:  ADD             R7, SP, #8
5B28DC:  LDR             R0, =(_ZN12CPostEffects6ms_imfE_ptr - 0x5B28E2)
5B28DE:  ADD             R0, PC; _ZN12CPostEffects6ms_imfE_ptr
5B28E0:  LDR             R4, [R0]; CPostEffects::ms_imf ...
5B28E2:  MOVS            R0, #0xA
5B28E4:  ADD.W           R1, R4, #0x130
5B28E8:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5B28EC:  ADD.W           R1, R4, #0x134
5B28F0:  MOVS            R0, #0xB
5B28F2:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5B28F6:  ADD.W           R1, R4, #0x138
5B28FA:  MOVS            R0, #0xE
5B28FC:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5B2900:  ADD.W           R1, R4, #0x13C
5B2904:  MOVS            R0, #0x14
5B2906:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5B290A:  ADD.W           R1, R4, #0x140
5B290E:  MOVS            R0, #6
5B2910:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5B2914:  ADD.W           R1, R4, #0x144
5B2918:  MOVS            R0, #8
5B291A:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5B291E:  ADD.W           R1, R4, #0x148
5B2922:  MOVS            R0, #7
5B2924:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5B2928:  ADD.W           R1, R4, #0x14C
5B292C:  MOVS            R0, #0xC
5B292E:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5B2932:  ADD.W           R1, R4, #0x150
5B2936:  MOVS            R0, #2
5B2938:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5B293C:  ADD.W           R1, R4, #0x154
5B2940:  MOVS            R0, #9
5B2942:  POP.W           {R4,R6,R7,LR}
5B2946:  B.W             sub_1A0144
