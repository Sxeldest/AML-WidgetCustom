; =========================================================
; Game Engine Function: _ZN24CTaskSimplePutDownEntityC2Ev
; Address            : 0x5424B8 - 0x542500
; =========================================================

5424B8:  PUSH            {R7,LR}
5424BA:  MOV             R7, SP
5424BC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5424C0:  MOV.W           R2, #0x106
5424C4:  LDR             R1, =(_ZTV24CTaskSimplePutDownEntity_ptr - 0x5424DC)
5424C6:  STRH            R2, [R0,#0x18]
5424C8:  MOVS            R2, #0xBF
5424CA:  MOVS            R3, #0
5424CC:  VMOV.I32        Q8, #0
5424D0:  STRD.W          R2, R3, [R0,#0x20]
5424D4:  MOV.W           R2, #0x100
5424D8:  ADD             R1, PC; _ZTV24CTaskSimplePutDownEntity_ptr
5424DA:  STRD.W          R3, R3, [R0,#0x2C]
5424DE:  STRH            R2, [R0,#0x34]
5424E0:  ADD.W           R2, R0, #8
5424E4:  LDR             R1, [R1]; `vtable for'CTaskSimplePutDownEntity ...
5424E6:  STRB.W          R3, [R0,#0x36]
5424EA:  VST1.32         {D16-D17}, [R2]
5424EE:  MOV             R2, #0x3F19999A
5424F6:  ADDS            R1, #8
5424F8:  STR             R3, [R0,#0x38]
5424FA:  STR             R2, [R0,#0x3C]
5424FC:  STR             R1, [R0]
5424FE:  POP             {R7,PC}
