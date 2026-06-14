; =========================================================
; Game Engine Function: _ZN10TouchSense14deleteInstanceEv
; Address            : 0x270480 - 0x2704A6
; =========================================================

270480:  LDR             R0, =(g_touchSense_ptr - 0x270486)
270482:  ADD             R0, PC; g_touchSense_ptr
270484:  LDR             R0, [R0]; g_touchSense
270486:  LDR             R0, [R0]; this
270488:  CBZ             R0, loc_27049A
27048A:  PUSH            {R7,LR}
27048C:  MOV             R7, SP
27048E:  BLX             j__ZN10TouchSenseD2Ev; TouchSense::~TouchSense()
270492:  BLX             _ZdlPv; operator delete(void *)
270496:  POP.W           {R7,LR}
27049A:  LDR             R0, =(g_touchSense_ptr - 0x2704A2)
27049C:  MOVS            R1, #0
27049E:  ADD             R0, PC; g_touchSense_ptr
2704A0:  LDR             R0, [R0]; g_touchSense
2704A2:  STR             R1, [R0]
2704A4:  BX              LR
