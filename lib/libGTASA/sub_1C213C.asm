; =========================================================
; Game Engine Function: sub_1C213C
; Address            : 0x1C213C - 0x1C21D4
; =========================================================

1C213C:  PUSH            {R4-R7,LR}
1C213E:  ADD             R7, SP, #0xC
1C2140:  PUSH.W          {R8}
1C2144:  SUB             SP, SP, #0x38
1C2146:  MOV             R4, R0
1C2148:  LDR             R0, =(dword_67A1A4 - 0x1C2152)
1C214A:  LDR             R1, =(dword_67A1A0 - 0x1C2158)
1C214C:  MOVS            R2, #4
1C214E:  ADD             R0, PC; dword_67A1A4
1C2150:  MOV.W           R8, #0x24 ; '$'
1C2154:  ADD             R1, PC; dword_67A1A0
1C2156:  LDR             R3, [R0]
1C2158:  LDR             R0, =(unk_6B70A4 - 0x1C2160)
1C215A:  LDR             R1, [R1]
1C215C:  ADD             R0, PC; unk_6B70A4
1C215E:  STR             R0, [SP,#0x48+var_48]
1C2160:  MOVS            R0, #0x24 ; '$'
1C2162:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1C2166:  MOV             R5, R0
1C2168:  LDR             R0, =(_Z18RpHAnimKeyFrameAddPvS_S__ptr - 0x1C2170)
1C216A:  LDR             R1, =(_Z23RpHAnimKeyFrameMulRecipPvS__ptr - 0x1C2174)
1C216C:  ADD             R0, PC; _Z18RpHAnimKeyFrameAddPvS_S__ptr
1C216E:  LDR             R2, =(_Z25RpHAnimKeyFrameStreamReadP8RwStreamP15RtAnimAnimation_ptr - 0x1C217C)
1C2170:  ADD             R1, PC; _Z23RpHAnimKeyFrameMulRecipPvS__ptr
1C2172:  LDR             R3, =(_Z26RpHAnimKeyFrameStreamWritePK15RtAnimAnimationP8RwStream_ptr - 0x1C2180)
1C2174:  LDR.W           R12, [R0]; RpHAnimKeyFrameAdd(void *,void *,void *)
1C2178:  ADD             R2, PC; _Z25RpHAnimKeyFrameStreamReadP8RwStreamP15RtAnimAnimation_ptr
1C217A:  LDR             R0, =(RpHAnimAtomicGlobals_ptr - 0x1C2186)
1C217C:  ADD             R3, PC; _Z26RpHAnimKeyFrameStreamWritePK15RtAnimAnimationP8RwStream_ptr
1C217E:  LDR.W           LR, [R1]; RpHAnimKeyFrameMulRecip(void *,void *)
1C2182:  ADD             R0, PC; RpHAnimAtomicGlobals_ptr
1C2184:  LDR             R1, =(_Z20RpHAnimKeyFrameApplyPvS__ptr - 0x1C218E)
1C2186:  LDR             R6, =(_Z28RpHAnimKeyFrameStreamGetSizePK15RtAnimAnimation_ptr - 0x1C2190)
1C2188:  LDR             R0, [R0]; RpHAnimAtomicGlobals
1C218A:  ADD             R1, PC; _Z20RpHAnimKeyFrameApplyPvS__ptr
1C218C:  ADD             R6, PC; _Z28RpHAnimKeyFrameStreamGetSizePK15RtAnimAnimation_ptr
1C218E:  LDR             R2, [R2]; RpHAnimKeyFrameStreamRead(RwStream *,RtAnimAnimation *)
1C2190:  LDR             R1, [R1]; RpHAnimKeyFrameApply(void *,void *)
1C2192:  STR             R5, [R0,#(dword_6B70A0 - 0x6B709C)]
1C2194:  MOVS            R0, #1
1C2196:  STR             R0, [SP,#0x48+var_40]
1C2198:  LDR             R0, =(_Z26RpHAnimKeyFrameInterpolatePvS_S_fS__ptr - 0x1C21A2)
1C219A:  STRD.W          R8, R8, [SP,#0x48+var_3C]
1C219E:  ADD             R0, PC; _Z26RpHAnimKeyFrameInterpolatePvS_S_fS__ptr
1C21A0:  STR             R1, [SP,#0x48+var_34]
1C21A2:  LDR             R1, =(_Z20RpHAnimKeyFrameBlendPvS_S_f_ptr - 0x1C21AA)
1C21A4:  LDR             R0, [R0]; RpHAnimKeyFrameInterpolate(void *,void *,void *,float,void *)
1C21A6:  ADD             R1, PC; _Z20RpHAnimKeyFrameBlendPvS_S_f_ptr
1C21A8:  LDR             R3, [R3]; RpHAnimKeyFrameStreamWrite(RtAnimAnimation const*,RwStream *)
1C21AA:  LDR             R6, [R6]; RpHAnimKeyFrameStreamGetSize(RtAnimAnimation const*)
1C21AC:  LDR             R1, [R1]; RpHAnimKeyFrameBlend(void *,void *,void *,float)
1C21AE:  STRD.W          R1, R0, [SP,#0x48+var_30]
1C21B2:  ADD             R0, SP, #0x48+var_20
1C21B4:  STRD.W          R12, LR, [SP,#0x48+var_28]
1C21B8:  STM             R0!, {R2,R3,R6}
1C21BA:  MOVS            R0, #0
1C21BC:  STR             R0, [SP,#0x48+var_14]
1C21BE:  ADD             R0, SP, #0x48+var_40
1C21C0:  BLX             j__Z33RtAnimRegisterInterpolationSchemeP22RtAnimInterpolatorInfo; RtAnimRegisterInterpolationScheme(RtAnimInterpolatorInfo *)
1C21C4:  CMP             R5, #0
1C21C6:  IT EQ
1C21C8:  MOVEQ           R4, R5
1C21CA:  MOV             R0, R4
1C21CC:  ADD             SP, SP, #0x38 ; '8'
1C21CE:  POP.W           {R8}
1C21D2:  POP             {R4-R7,PC}
