; =========================================================
; Game Engine Function: sub_120D40
; Address            : 0x120D40 - 0x120D56
; =========================================================

120D40:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP24RxOpenGLMeshInstanceDataPK8RpAtomicPK10RpGeometryiiiPhP6RwRGBASD_EEC1I12_rxOpenGLFixEEMT_FvS4_S7_SA_iiiSB_SD_SD_EPSI_EUlS4_S7_SA_iiiSB_SD_SD_E_NS_9allocatorISM_EESE_EE - 0x120D46); `vtable for'std::__function::__func<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1},std::allocator<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1}>,void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)> ...
120D42:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1},std::allocator<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1}>,void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>
120D44:  ADDS            R2, #8
120D46:  STR             R2, [R1]
120D48:  VLDR            D16, [R0,#4]
120D4C:  LDR             R0, [R0,#0xC]
120D4E:  STR             R0, [R1,#0xC]
120D50:  VSTR            D16, [R1,#4]
120D54:  BX              LR
