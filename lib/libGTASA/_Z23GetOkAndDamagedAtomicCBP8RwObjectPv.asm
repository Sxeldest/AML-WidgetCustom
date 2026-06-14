; =========================================================
; Game Engine Function: _Z23GetOkAndDamagedAtomicCBP8RwObjectPv
; Address            : 0x388358 - 0x388384
; =========================================================

388358:  PUSH            {R4,R5,R7,LR}
38835A:  ADD             R7, SP, #8
38835C:  MOV             R5, R1
38835E:  MOV             R4, R0
388360:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
388364:  TST.W           R0, #1
388368:  BNE             loc_38837A
38836A:  MOV             R0, R4
38836C:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
388370:  TST.W           R0, #2
388374:  BEQ             loc_388380
388376:  MOVS            R0, #1
388378:  B               loc_38837C
38837A:  MOVS            R0, #0
38837C:  STR.W           R4, [R5,R0,LSL#2]
388380:  MOV             R0, R4
388382:  POP             {R4,R5,R7,PC}
