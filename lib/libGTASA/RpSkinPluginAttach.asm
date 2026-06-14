; =========================================================
; Game Engine Function: RpSkinPluginAttach
; Address            : 0x1C9144 - 0x1C91DE
; =========================================================

1C9144:  PUSH            {R4,R6,R7,LR}
1C9146:  ADD             R7, SP, #8
1C9148:  SUB             SP, SP, #8
1C914A:  LDR             R2, =(sub_1C9224+1 - 0x1C9158)
1C914C:  MOVS            R0, #0; int
1C914E:  LDR             R3, =(sub_1C92D4+1 - 0x1C915A)
1C9150:  MOV.W           R1, #0x116; unsigned int
1C9154:  ADD             R2, PC; sub_1C9224 ; void *(*)(void *, int, int)
1C9156:  ADD             R3, PC; sub_1C92D4 ; void *(*)(void *, int, int)
1C9158:  BLX             j__Z22RwEngineRegisterPluginijPFPvS_iiES1_; RwEngineRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int))
1C915C:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C9164)
1C915E:  LDR             R2, =(sub_1C9328+1 - 0x1C9168)
1C9160:  ADD             R1, PC; _rpSkinGlobals_ptr
1C9162:  LDR             R3, =(sub_1C933C+1 - 0x1C916C)
1C9164:  ADD             R2, PC; sub_1C9328 ; void *(*)(void *, int, int)
1C9166:  LDR             R4, [R1]; _rpSkinGlobals
1C9168:  ADD             R3, PC; sub_1C933C ; void *(*)(void *, int, int)
1C916A:  LDR             R1, =(sub_1C9354+1 - 0x1C9170)
1C916C:  ADD             R1, PC; sub_1C9354
1C916E:  STR             R0, [R4]
1C9170:  STR             R1, [SP,#0x10+var_10]; void *(*)(void *, const void *, int, int)
1C9172:  MOVS            R0, #4; int
1C9174:  MOV.W           R1, #0x116; unsigned int
1C9178:  BLX             j__Z22RpAtomicRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpAtomicRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
1C917C:  LDR             R1, =(sub_1C9368+1 - 0x1C9186)
1C917E:  LDR             R2, =(nullsub_2+1 - 0x1C9188)
1C9180:  LDR             R3, =(sub_1C9522+1 - 0x1C918C)
1C9182:  ADD             R1, PC; sub_1C9368
1C9184:  ADD             R2, PC; nullsub_2
1C9186:  STR             R0, [R4,#(dword_6B7278 - 0x6B7274)]
1C9188:  ADD             R3, PC; sub_1C9522
1C918A:  MOV.W           R0, #0x116
1C918E:  BLX             j__Z28RpAtomicRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpAtomicRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
1C9192:  LDR             R1, =(sub_1C9528+1 - 0x1C919C)
1C9194:  MOV.W           R0, #0x116; unsigned int
1C9198:  ADD             R1, PC; sub_1C9528 ; int (*)(void *, int, int)
1C919A:  BLX             j__Z31RpAtomicSetStreamAlwaysCallBackjPFiPviiE; RpAtomicSetStreamAlwaysCallBack(uint,int (*)(void *,int,int))
1C919E:  LDR             R1, =(sub_1C9590+1 - 0x1C91A8)
1C91A0:  MOV.W           R0, #0x116; unsigned int
1C91A4:  ADD             R1, PC; sub_1C9590 ; int (*)(void *, int, int, unsigned int)
1C91A6:  BLX             j__Z31RpAtomicSetStreamRightsCallBackjPFiPviijE; RpAtomicSetStreamRightsCallBack(uint,int (*)(void *,int,int,uint))
1C91AA:  LDR             R2, =(sub_1C95E4+1 - 0x1C91B8)
1C91AC:  MOV.W           R1, #0x116; unsigned int
1C91B0:  LDR             R3, =(sub_1C95F8+1 - 0x1C91BA)
1C91B2:  LDR             R0, =(nullsub_3+1 - 0x1C91BC)
1C91B4:  ADD             R2, PC; sub_1C95E4 ; void *(*)(void *, int, int)
1C91B6:  ADD             R3, PC; sub_1C95F8 ; void *(*)(void *, int, int)
1C91B8:  ADD             R0, PC; nullsub_3
1C91BA:  STR             R0, [SP,#0x10+var_10]; void *(*)(void *, const void *, int, int)
1C91BC:  MOVS            R0, #4; int
1C91BE:  BLX             j__Z24RpGeometryRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpGeometryRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
1C91C2:  LDR             R1, =(sub_1C9660+1 - 0x1C91CC)
1C91C4:  LDR             R2, =(sub_1C987C+1 - 0x1C91CE)
1C91C6:  LDR             R3, =(sub_1C9918+1 - 0x1C91D2)
1C91C8:  ADD             R1, PC; sub_1C9660
1C91CA:  ADD             R2, PC; sub_1C987C
1C91CC:  STR             R0, [R4,#(dword_6B727C - 0x6B7274)]
1C91CE:  ADD             R3, PC; sub_1C9918
1C91D0:  MOV.W           R0, #0x116
1C91D4:  BLX             j__Z30RpGeometryRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpGeometryRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
1C91D8:  MOVS            R0, #1
1C91DA:  ADD             SP, SP, #8
1C91DC:  POP             {R4,R6,R7,PC}
