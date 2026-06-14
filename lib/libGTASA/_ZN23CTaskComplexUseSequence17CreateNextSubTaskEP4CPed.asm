; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSequence17CreateNextSubTaskEP4CPed
; Address            : 0x4F1690 - 0x4F172C
; =========================================================

4F1690:  PUSH            {R7,LR}
4F1692:  MOV             R7, SP
4F1694:  LDR.W           R12, [R0,#0xC]
4F1698:  ADDS.W          R1, R12, #1
4F169C:  BEQ             loc_4F1728
4F169E:  LDR             R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F16A6)
4F16A0:  LDR             R2, [R0,#0x10]
4F16A2:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F16A4:  ADD.W           LR, R2, #1
4F16A8:  STR.W           LR, [R0,#0x10]
4F16AC:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
4F16AE:  ADD.W           R1, R1, R12,LSL#6
4F16B2:  LDR.W           R3, [R1,#0x30]!
4F16B6:  CBZ             R3, loc_4F170E
4F16B8:  CMP.W           LR, #8
4F16BC:  BEQ             loc_4F16DA
4F16BE:  LDR             R2, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F16C4)
4F16C0:  ADD             R2, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F16C2:  LDR             R2, [R2]; CTaskSequences::ms_taskSequence ...
4F16C4:  ADD.W           R2, R2, R12,LSL#6
4F16C8:  ADD.W           R2, R2, LR,LSL#2
4F16CC:  LDR             R2, [R2,#0x10]
4F16CE:  CBZ             R2, loc_4F16DA
4F16D0:  CMP             R3, #1
4F16D2:  BNE             loc_4F16EE
4F16D4:  LDR             R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F16DA)
4F16D6:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F16D8:  B               loc_4F16F8
4F16DA:  LDR             R2, [R0,#0x18]
4F16DC:  MOV.W           LR, #0
4F16E0:  STR.W           LR, [R0,#0x10]
4F16E4:  ADDS            R2, #1
4F16E6:  STR             R2, [R0,#0x18]
4F16E8:  LDR             R3, [R1]
4F16EA:  CMP             R3, #1
4F16EC:  BEQ             loc_4F16D4
4F16EE:  LDR             R0, [R0,#0x18]
4F16F0:  CMP             R0, R3
4F16F2:  BEQ             loc_4F1728
4F16F4:  LDR             R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F16FA)
4F16F6:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F16F8:  LDR             R0, [R0]; CTaskSequences::ms_taskSequence ...
4F16FA:  ADD.W           R0, R0, R12,LSL#6
4F16FE:  ADD.W           R0, R0, LR,LSL#2
4F1702:  LDR             R0, [R0,#0x10]
4F1704:  LDR             R1, [R0]
4F1706:  LDR             R1, [R1,#8]
4F1708:  POP.W           {R7,LR}
4F170C:  BX              R1
4F170E:  CMP.W           LR, #8
4F1712:  BEQ             loc_4F1728
4F1714:  LDR             R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F171A)
4F1716:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F1718:  LDR             R0, [R0]; CTaskSequences::ms_taskSequence ...
4F171A:  ADD.W           R0, R0, R12,LSL#6
4F171E:  ADD.W           R0, R0, LR,LSL#2
4F1722:  LDR             R0, [R0,#0x10]
4F1724:  CMP             R0, #0
4F1726:  BNE             loc_4F1704
4F1728:  MOVS            R0, #0
4F172A:  POP             {R7,PC}
