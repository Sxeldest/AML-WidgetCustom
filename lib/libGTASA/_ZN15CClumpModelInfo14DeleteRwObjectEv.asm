; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo14DeleteRwObjectEv
; Address            : 0x3851D0 - 0x38523E
; =========================================================

3851D0:  PUSH            {R4,R6,R7,LR}
3851D2:  ADD             R7, SP, #8
3851D4:  MOV             R4, R0
3851D6:  LDR             R0, [R4,#0x34]
3851D8:  CMP             R0, #0
3851DA:  IT EQ
3851DC:  POPEQ           {R4,R6,R7,PC}
3851DE:  BLX             j__Z17Get2DEffectAtomicP7RpClump; Get2DEffectAtomic(RpClump *)
3851E2:  CBZ             R0, loc_385202
3851E4:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x3851EC)
3851E6:  LDR             R0, [R0,#0x18]
3851E8:  ADD             R1, PC; g2dEffectPluginOffset_ptr
3851EA:  LDR             R1, [R1]; g2dEffectPluginOffset
3851EC:  LDR             R1, [R1]
3851EE:  LDR             R0, [R0,R1]
3851F0:  CMP             R0, #0
3851F2:  ITE NE
3851F4:  LDRNE           R0, [R0]
3851F6:  MOVEQ           R0, #0
3851F8:  LDRB.W          R1, [R4,#0x23]
3851FC:  SUBS            R0, R1, R0
3851FE:  STRB.W          R0, [R4,#0x23]
385202:  LDR             R0, [R4,#0x34]
385204:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
385208:  MOVS            R0, #0
38520A:  STR             R0, [R4,#0x34]
38520C:  MOV             R0, R4; this
38520E:  BLX             j__ZN14CBaseModelInfo22RemoveTexDictionaryRefEv; CBaseModelInfo::RemoveTexDictionaryRef(void)
385212:  LDR             R0, [R4]
385214:  LDR             R1, [R0,#0x3C]
385216:  MOV             R0, R4
385218:  BLX             R1
38521A:  ADDS            R0, #1
38521C:  BEQ             loc_38522A
38521E:  LDR             R0, [R4]
385220:  LDR             R1, [R0,#0x3C]
385222:  MOV             R0, R4
385224:  BLX             R1
385226:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
38522A:  LDRB.W          R0, [R4,#0x29]
38522E:  LSLS            R0, R0, #0x1C
385230:  BMI             loc_385234
385232:  POP             {R4,R6,R7,PC}
385234:  MOV             R0, R4; this
385236:  POP.W           {R4,R6,R7,LR}
38523A:  B.W             sub_19DCD4
