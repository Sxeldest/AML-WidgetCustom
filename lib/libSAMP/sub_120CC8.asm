; =========================================================
; Game Engine Function: sub_120CC8
; Address            : 0x120CC8 - 0x120D0C
; =========================================================

120CC8:  PUSH            {R4,R5,R7,LR}
120CCA:  ADD             R7, SP, #8
120CCC:  SUB             SP, SP, #0x18
120CCE:  MOV             R4, R0
120CD0:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP24RxOpenGLMeshInstanceDataPK8RpAtomicPK10RpGeometryiiiPhP6RwRGBASD_EEC1I12_rxOpenGLFixEEMT_FvS4_S7_SA_iiiSB_SD_SD_EPSI_EUlS4_S7_SA_iiiSB_SD_SD_E_NS_9allocatorISM_EESE_EE - 0x120CDC); `vtable for'std::__function::__func<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1},std::allocator<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1}>,void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)> ...
120CD2:  LDRD.W          R2, R3, [R1]
120CD6:  MOV             R5, SP
120CD8:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1},std::allocator<function_helper<void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>::function_helper<_rxOpenGLFix>(void (_rxOpenGLFix::*)(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *),_rxOpenGLFix*)::{lambda(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)#1}>,void ()(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,int,int,int,uchar *,RwRGBA *,RwRGBA *)>
120CDA:  LDR             R1, [R1,#8]
120CDC:  ADDS            R0, #8
120CDE:  STRD.W          R1, R5, [SP,#0x20+var_14]
120CE2:  STR             R0, [SP,#0x20+var_20]
120CE4:  MOV             R0, R5
120CE6:  MOV             R1, R4
120CE8:  STRD.W          R2, R3, [SP,#0x20+var_1C]
120CEC:  BL              sub_120E10
120CF0:  LDR             R0, [SP,#0x20+var_10]
120CF2:  CMP             R5, R0
120CF4:  BEQ             loc_120CFC
120CF6:  CBZ             R0, loc_120D06
120CF8:  MOVS            R1, #5
120CFA:  B               loc_120CFE
120CFC:  MOVS            R1, #4
120CFE:  LDR             R2, [R0]
120D00:  LDR.W           R1, [R2,R1,LSL#2]
120D04:  BLX             R1
120D06:  MOV             R0, R4
120D08:  ADD             SP, SP, #0x18
120D0A:  POP             {R4,R5,R7,PC}
