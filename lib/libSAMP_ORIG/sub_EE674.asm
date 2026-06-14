; =========================================================
; Game Engine Function: sub_EE674
; Address            : 0xEE674 - 0xEE6AE
; =========================================================

EE674:  PUSH            {R7,LR}
EE676:  MOV             R7, SP
EE678:  LDRD.W          R0, R2, [R0,#8]
EE67C:  SUBS            R2, R2, R0
EE67E:  CMP.W           R1, R2,ASR#2
EE682:  BCS             loc_EE68C
EE684:  LDR.W           R0, [R0,R1,LSL#2]
EE688:  CBZ             R0, loc_EE68C
EE68A:  POP             {R7,PC}
EE68C:  BL              loc_EE690
EE690:  PUSH            {R7,LR}
EE692:  MOV             R7, SP
EE694:  MOVS            R0, #4; thrown_size
EE696:  BLX             j___cxa_allocate_exception
EE69A:  BLX             j__ZNSt8bad_castC2Ev; std::bad_cast::bad_cast(void)
EE69E:  LDR             R1, =(_ZTISt8bad_cast_ptr - 0xEE6A6)
EE6A0:  LDR             R2, =(_ZNSt8bad_castD2Ev_ptr - 0xEE6A8)
EE6A2:  ADD             R1, PC; _ZTISt8bad_cast_ptr
EE6A4:  ADD             R2, PC; _ZNSt8bad_castD2Ev_ptr
EE6A6:  LDR             R1, [R1]; lptinfo
EE6A8:  LDR             R2, [R2]; std::bad_cast::~bad_cast() ; void (*)(void *)
EE6AA:  BLX             j___cxa_throw
