; =========================================================
; Game Engine Function: sub_120D18
; Address            : 0x120D18 - 0x120D3A
; =========================================================

120D18:  PUSH            {R4,R6,R7,LR}
120D1A:  ADD             R7, SP, #8
120D1C:  MOV             R4, R0
120D1E:  MOVS            R0, #0x10; unsigned int
120D20:  BLX             j__Znwj; operator new(uint)
120D24:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP24RxOpenGLMeshInstanceDataPK8RpAtomicPK10RpGeometryiiiPhP6RwRGBASD_EEC1I12_rxOpenGLFixEEMT_FvS4_S7_SA_iiiSB_SD_SD_EPSI_EUlS4_S7_SA_iiiSB_SD_SD_E_NS_9allocatorISM_EESE_EE - 0x120D2E); `vtable for'std::__function::__func<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1},std::allocator<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1}>,void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)> ...
120D26:  VLDR            D16, [R4,#4]
120D2A:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1},std::allocator<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1}>,void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>
120D2C:  LDR             R2, [R4,#0xC]
120D2E:  ADDS            R1, #8
120D30:  STR             R1, [R0]
120D32:  STR             R2, [R0,#0xC]
120D34:  VSTR            D16, [R0,#4]
120D38:  POP             {R4,R6,R7,PC}
