; =========================================================
; Game Engine Function: _ZN16CAtomicModelInfo14DeleteRwObjectEv
; Address            : 0x384970 - 0x3849D8
; =========================================================

384970:  PUSH            {R4-R7,LR}
384972:  ADD             R7, SP, #0xC
384974:  PUSH.W          {R11}
384978:  MOV             R4, R0
38497A:  LDR             R0, [R4,#0x34]
38497C:  CBZ             R0, loc_3849D2
38497E:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x384988)
384980:  MOVS            R6, #0
384982:  LDR             R2, [R0,#0x18]
384984:  ADD             R1, PC; g2dEffectPluginOffset_ptr
384986:  LDR             R1, [R1]; g2dEffectPluginOffset
384988:  LDR             R1, [R1]
38498A:  LDR             R1, [R2,R1]
38498C:  CMP             R1, #0
38498E:  ITE NE
384990:  LDRNE           R1, [R1]
384992:  MOVEQ           R1, #0
384994:  LDRB.W          R2, [R4,#0x23]
384998:  SUBS            R1, R2, R1
38499A:  STRB.W          R1, [R4,#0x23]
38499E:  LDR             R5, [R0,#4]
3849A0:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
3849A4:  MOV             R0, R5
3849A6:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
3849AA:  MOV             R0, R4; this
3849AC:  STR             R6, [R4,#0x34]
3849AE:  BLX             j__ZN14CBaseModelInfo22RemoveTexDictionaryRefEv; CBaseModelInfo::RemoveTexDictionaryRef(void)
3849B2:  LDR             R0, [R4]
3849B4:  LDR             R1, [R0,#0x3C]
3849B6:  MOV             R0, R4
3849B8:  BLX             R1
3849BA:  ADDS            R0, #1
3849BC:  BEQ             loc_3849D2
3849BE:  LDR             R0, [R4]
3849C0:  LDR             R1, [R0,#0x3C]
3849C2:  MOV             R0, R4
3849C4:  BLX             R1
3849C6:  POP.W           {R11}
3849CA:  POP.W           {R4-R7,LR}
3849CE:  B.W             sub_18ABA4
3849D2:  POP.W           {R11}
3849D6:  POP             {R4-R7,PC}
