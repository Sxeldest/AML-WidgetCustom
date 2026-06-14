; =========================================================
; Game Engine Function: _ZN22CTaskInteriorSitAtDeskC2EiP14InteriorInfo_th
; Address            : 0x52A7F8 - 0x52A83C
; =========================================================

52A7F8:  PUSH            {R4-R7,LR}
52A7FA:  ADD             R7, SP, #0xC
52A7FC:  PUSH.W          {R11}
52A800:  MOV             R4, R3
52A802:  MOV             R5, R2
52A804:  MOV             R6, R1
52A806:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52A80A:  LDR             R1, =(_ZTV22CTaskInteriorSitAtDesk_ptr - 0x52A818)
52A80C:  MOVS            R2, #0
52A80E:  MOV.W           R3, #0xFFFFFFFF
52A812:  STRH            R2, [R0,#0x24]
52A814:  ADD             R1, PC; _ZTV22CTaskInteriorSitAtDesk_ptr
52A816:  STRH            R2, [R0,#0x30]
52A818:  STRD.W          R2, R2, [R0,#0x1C]
52A81C:  LDR             R1, [R1]; `vtable for'CTaskInteriorSitAtDesk ...
52A81E:  STRD.W          R2, R2, [R0,#0x28]
52A822:  STRD.W          R6, R5, [R0,#8]
52A826:  ADDS            R1, #8
52A828:  STRB            R4, [R0,#0x10]
52A82A:  STR             R2, [R0,#0x14]
52A82C:  STR             R3, [R0,#0x18]
52A82E:  STRH            R2, [R0,#0x34]
52A830:  STRB.W          R2, [R0,#0x36]
52A834:  STR             R1, [R0]
52A836:  POP.W           {R11}
52A83A:  POP             {R4-R7,PC}
