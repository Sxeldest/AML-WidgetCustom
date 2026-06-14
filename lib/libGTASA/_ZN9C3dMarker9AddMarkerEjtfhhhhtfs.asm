; =========================================================
; Game Engine Function: _ZN9C3dMarker9AddMarkerEjtfhhhhtfs
; Address            : 0x5C2FFC - 0x5C3116
; =========================================================

5C2FFC:  PUSH            {R4-R7,LR}
5C2FFE:  ADD             R7, SP, #0xC
5C3000:  PUSH.W          {R8-R11}
5C3004:  SUB             SP, SP, #4
5C3006:  VPUSH           {D8-D9}
5C300A:  SUB             SP, SP, #8
5C300C:  MOV             R4, R0
5C300E:  MOV             R6, R3
5C3010:  MOV             R5, R2
5C3012:  STR             R1, [R4,#0x54]
5C3014:  BLX.W           j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
5C3018:  LDR.W           R9, [R7,#arg_10]
5C301C:  VMOV            S18, R6
5C3020:  LDR.W           R8, [R7,#arg_8]
5C3024:  MOVS            R0, #0
5C3026:  VLDR            S16, [R7,#arg_14]
5C302A:  CMP             R5, #3
5C302C:  STR             R0, [SP,#0x38+var_34]
5C302E:  BEQ             loc_5C3044
5C3030:  CMP             R5, #2
5C3032:  BNE             loc_5C3054
5C3034:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5C303C)
5C3036:  LDR             R1, =(_Z14MarkerAtomicCBP8RpAtomicPv_ptr - 0x5C303E)
5C3038:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5C303A:  ADD             R1, PC; _Z14MarkerAtomicCBP8RpAtomicPv_ptr
5C303C:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5C303E:  LDR             R1, [R1]; MarkerAtomicCB(RpAtomic *,void *)
5C3040:  LDR             R0, [R0,#(dword_A5795C - 0xA57958)]
5C3042:  B               loc_5C3064
5C3044:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5C304C)
5C3046:  LDR             R1, =(_Z14MarkerAtomicCBP8RpAtomicPv_ptr - 0x5C304E)
5C3048:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5C304A:  ADD             R1, PC; _Z14MarkerAtomicCBP8RpAtomicPv_ptr
5C304C:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5C304E:  LDR             R1, [R1]; MarkerAtomicCB(RpAtomic *,void *)
5C3050:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray
5C3052:  B               loc_5C3064
5C3054:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5C305C)
5C3056:  LDR             R1, =(_Z14MarkerAtomicCBP8RpAtomicPv_ptr - 0x5C305E)
5C3058:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5C305A:  ADD             R1, PC; _Z14MarkerAtomicCBP8RpAtomicPv_ptr
5C305C:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5C305E:  LDR             R1, [R1]; MarkerAtomicCB(RpAtomic *,void *)
5C3060:  LDR.W           R0, [R0,R5,LSL#2]
5C3064:  ADD             R2, SP, #0x38+var_34
5C3066:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5C306A:  LDR             R0, [SP,#0x38+var_34]
5C306C:  BLX.W           j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
5C3070:  MOV             R6, R0
5C3072:  BLX.W           j__Z13RwFrameCreatev; RwFrameCreate(void)
5C3076:  MOV             R1, R0
5C3078:  MOV             R0, R6
5C307A:  BLX.W           j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
5C307E:  MOV             R0, R6
5C3080:  MOVS            R1, #0
5C3082:  MOV.W           R10, #0
5C3086:  BLX.W           j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
5C308A:  LDR.W           R11, [R6,#0x18]
5C308E:  MOVS            R2, #0
5C3090:  LDR.W           R0, [R11,#8]
5C3094:  ORR.W           R0, R0, #0x40 ; '@'
5C3098:  STR.W           R0, [R11,#8]
5C309C:  STR             R6, [R4,#0x48]
5C309E:  LDR             R0, [R6,#4]
5C30A0:  ADD.W           R1, R0, #0x10
5C30A4:  MOV             R0, R4
5C30A6:  BLX.W           j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
5C30AA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5C30B4)
5C30AC:  LDR.W           R1, [R11,#0x20]
5C30B0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5C30B2:  LDR             R3, [R7,#arg_18]
5C30B4:  LDR             R2, [R0]; CTimer::m_snTimeInMilliseconds ...
5C30B6:  LDR             R0, [R4,#0x48]
5C30B8:  LDR             R1, [R1]
5C30BA:  STRH.W          R9, [R4,#0x5C]
5C30BE:  CMP             R0, #0
5C30C0:  STRH.W          R3, [R4,#0x5E]
5C30C4:  LDR             R3, [R7,#arg_C]
5C30C6:  STRB.W          R8, [R4,#0x5A]
5C30CA:  STRB.W          R3, [R4,#0x5B]
5C30CE:  STR             R1, [R4,#0x4C]
5C30D0:  LDR             R1, [R7,#arg_0]
5C30D2:  VSTR            S16, [R4,#0x64]
5C30D6:  VSTR            S18, [R4,#0x68]
5C30DA:  VSTR            S18, [R4,#0x6C]
5C30DE:  STRB.W          R1, [R4,#0x58]
5C30E2:  LDR             R1, [R7,#arg_4]
5C30E4:  STRB.W          R1, [R4,#0x59]
5C30E8:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds
5C30EA:  MOV             R2, #0x477FFF00
5C30F2:  STRH.W          R5, [R4,#0x50]
5C30F6:  STR             R1, [R4,#0x60]
5C30F8:  STRD.W          R2, R10, [R4,#0x8C]
5C30FC:  STRD.W          R10, R10, [R4,#0x94]
5C3100:  STR.W           R1, [R4,#0x9C]
5C3104:  IT NE
5C3106:  MOVNE           R0, #1
5C3108:  ADD             SP, SP, #8
5C310A:  VPOP            {D8-D9}
5C310E:  ADD             SP, SP, #4
5C3110:  POP.W           {R8-R11}
5C3114:  POP             {R4-R7,PC}
