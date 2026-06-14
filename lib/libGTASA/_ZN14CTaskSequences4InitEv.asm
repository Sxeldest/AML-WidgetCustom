; =========================================================
; Game Engine Function: _ZN14CTaskSequences4InitEv
; Address            : 0x4EEAA0 - 0x4EEADE
; =========================================================

4EEAA0:  PUSH            {R4-R7,LR}
4EEAA2:  ADD             R7, SP, #0xC
4EEAA4:  PUSH.W          {R8}
4EEAA8:  LDR             R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x4EEAB8)
4EEAAA:  MOV.W           R2, #0xFFFFFFFF
4EEAAE:  LDR             R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4EEABC)
4EEAB0:  MOV.W           R8, #0
4EEAB4:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
4EEAB6:  MOVS            R5, #0
4EEAB8:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4EEABA:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
4EEABC:  LDR             R4, [R1]; CTaskSequences::ms_taskSequence ...
4EEABE:  STR             R2, [R0]; CTaskSequences::ms_iActiveSequence
4EEAC0:  LDR             R0, =(_ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x4EEAC6)
4EEAC2:  ADD             R0, PC; _ZN14CTaskSequences12ms_bIsOpenedE_ptr
4EEAC4:  LDR             R6, [R0]; CTaskSequences::ms_bIsOpened ...
4EEAC6:  MOV             R0, R4; this
4EEAC8:  STRB.W          R8, [R6,R5]
4EEACC:  BLX             j__ZN20CTaskComplexSequence5FlushEv; CTaskComplexSequence::Flush(void)
4EEAD0:  ADDS            R5, #1
4EEAD2:  ADDS            R4, #0x40 ; '@'
4EEAD4:  CMP             R5, #0x40 ; '@'
4EEAD6:  BNE             loc_4EEAC6
4EEAD8:  POP.W           {R8}
4EEADC:  POP             {R4-R7,PC}
