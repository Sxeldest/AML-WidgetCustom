; =========================================================
; Game Engine Function: _Z14RpAtomicCreatev
; Address            : 0x2140C4 - 0x214160
; =========================================================

2140C4:  PUSH            {R4,R5,R7,LR}
2140C6:  ADD             R7, SP, #8
2140C8:  LDR             R0, =(RwEngineInstance_ptr - 0x2140D0)
2140CA:  LDR             R1, =(dword_6BD598 - 0x2140D2)
2140CC:  ADD             R0, PC; RwEngineInstance_ptr
2140CE:  ADD             R1, PC; dword_6BD598
2140D0:  LDR             R0, [R0]; RwEngineInstance
2140D2:  LDR             R1, [R1]
2140D4:  LDR             R2, [R0]
2140D6:  LDR             R0, [R2,R1]
2140D8:  LDR.W           R1, [R2,#0x13C]
2140DC:  BLX             R1
2140DE:  MOV             R4, R0
2140E0:  MOVS            R5, #0
2140E2:  CBZ             R4, loc_21415C
2140E4:  LDR             R0, =(sub_21431E+1 - 0x2140F0)
2140E6:  MOVS            R1, #1
2140E8:  STR.W           R5, [R4,#1]
2140EC:  ADD             R0, PC; sub_21431E
2140EE:  STRB            R5, [R4,#7]
2140F0:  STRH.W          R5, [R4,#5]
2140F4:  STRB            R1, [R4]
2140F6:  MOVS            R1, #0
2140F8:  STRD.W          R0, R5, [R4,#0x10]
2140FC:  MOVW            R0, #0x105
214100:  STRH            R0, [R4,#2]
214102:  MOV             R0, R4
214104:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
214108:  LDR             R1, =(_Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0 - 0x214118)
21410A:  VMOV.I32        Q8, #0
21410E:  ADD.W           R2, R4, #0x28 ; '('
214112:  MOVS            R3, #3
214114:  ADD             R1, PC; _Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0
214116:  ADD.W           R12, R4, #0x48 ; 'H'
21411A:  VST1.32         {D16-D17}, [R2]
21411E:  ADD.W           R2, R4, #0x18
214122:  LDR             R1, [R1]; AtomicDefaultRenderCallBack(RpAtomic *)
214124:  VST1.32         {D16-D17}, [R2]
214128:  MOV.W           R2, #0x3F800000
21412C:  STRD.W          R2, R5, [R4,#0x58]
214130:  STRD.W          R5, R5, [R4,#0x38]
214134:  STRD.W          R5, R5, [R4,#0x40]
214138:  STM.W           R12, {R1,R3,R5}
21413C:  STR             R2, [R4,#0x54]
21413E:  ADD.W           R2, R4, #0x64 ; 'd'
214142:  LDRB            R1, [R4,#3]
214144:  LDR             R0, =(dword_683B48 - 0x214152)
214146:  ORR.W           R1, R1, #1
21414A:  STRD.W          R2, R2, [R4,#0x64]
21414E:  ADD             R0, PC; dword_683B48
214150:  STR             R5, [R4,#0x6C]
214152:  STRB            R1, [R4,#3]
214154:  MOV             R1, R4
214156:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
21415A:  MOV             R5, R4
21415C:  MOV             R0, R5
21415E:  POP             {R4,R5,R7,PC}
