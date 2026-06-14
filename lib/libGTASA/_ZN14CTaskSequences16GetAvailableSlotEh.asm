; =========================================================
; Game Engine Function: _ZN14CTaskSequences16GetAvailableSlotEh
; Address            : 0x4EEB28 - 0x4EEB6A
; =========================================================

4EEB28:  MOV.W           R12, #0x40 ; '@'
4EEB2C:  CMP             R0, #0
4EEB2E:  ITE EQ
4EEB30:  MOVEQ.W         R12, #0x20 ; ' '
4EEB34:  MOVNE           R0, #0x20 ; ' '
4EEB36:  CMP             R0, R12
4EEB38:  BCS             loc_4EEB64
4EEB3A:  LDR             R2, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4EEB42)
4EEB3C:  LDR             R3, =(_ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x4EEB44)
4EEB3E:  ADD             R2, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4EEB40:  ADD             R3, PC; _ZN14CTaskSequences12ms_bIsOpenedE_ptr
4EEB42:  LDR             R2, [R2]; CTaskSequences::ms_taskSequence ...
4EEB44:  LDR             R3, [R3]; CTaskSequences::ms_bIsOpened ...
4EEB46:  ADD.W           R2, R2, R0,LSL#6
4EEB4A:  ADDS            R2, #0x10
4EEB4C:  LDRB            R1, [R3,R0]
4EEB4E:  CMP             R1, #0
4EEB50:  ITTT EQ
4EEB52:  LDREQ           R1, [R2]
4EEB54:  CMPEQ           R1, #0
4EEB56:  BXEQ            LR
4EEB58:  ADD.W           R0, R0, #1
4EEB5C:  ADD.W           R2, R2, #0x40 ; '@'
4EEB60:  CMP             R0, R12
4EEB62:  BLT             loc_4EEB4C
4EEB64:  MOV.W           R0, #0xFFFFFFFF
4EEB68:  BX              LR
