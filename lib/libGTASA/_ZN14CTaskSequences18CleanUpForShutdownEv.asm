; =========================================================
; Game Engine Function: _ZN14CTaskSequences18CleanUpForShutdownEv
; Address            : 0x4EEAEC - 0x4EEB1E
; =========================================================

4EEAEC:  PUSH            {R4-R7,LR}
4EEAEE:  ADD             R7, SP, #0xC
4EEAF0:  PUSH.W          {R8}
4EEAF4:  LDR             R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4EEB00)
4EEAF6:  MOV.W           R8, #0
4EEAFA:  MOVS            R5, #0
4EEAFC:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4EEAFE:  LDR             R4, [R0]; CTaskSequences::ms_taskSequence ...
4EEB00:  LDR             R0, =(_ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x4EEB06)
4EEB02:  ADD             R0, PC; _ZN14CTaskSequences12ms_bIsOpenedE_ptr
4EEB04:  LDR             R6, [R0]; CTaskSequences::ms_bIsOpened ...
4EEB06:  MOV             R0, R4; this
4EEB08:  STRB.W          R8, [R6,R5]
4EEB0C:  BLX             j__ZN20CTaskComplexSequence5FlushEv; CTaskComplexSequence::Flush(void)
4EEB10:  ADDS            R5, #1
4EEB12:  ADDS            R4, #0x40 ; '@'
4EEB14:  CMP             R5, #0x40 ; '@'
4EEB16:  BNE             loc_4EEB06
4EEB18:  POP.W           {R8}
4EEB1C:  POP             {R4-R7,PC}
