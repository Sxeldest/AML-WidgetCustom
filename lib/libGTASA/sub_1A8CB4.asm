; =========================================================
; Game Engine Function: sub_1A8CB4
; Address            : 0x1A8CB4 - 0x1A8CC8
; =========================================================

1A8CB4:  PUSH            {R7,LR}
1A8CB6:  MOV             R7, SP
1A8CB8:  LDR             R0, =(_ZN17CPlantSurfPropMgr13m_SurfPropTabE_ptr - 0x1A8CC2)
1A8CBA:  MOVW            R1, #0x1B9C
1A8CBE:  ADD             R0, PC; _ZN17CPlantSurfPropMgr13m_SurfPropTabE_ptr
1A8CC0:  LDR             R0, [R0]; CPlantSurfPropMgr::m_SurfPropTab ...
1A8CC2:  BLX             j___aeabi_memclr8_0
1A8CC6:  POP             {R7,PC}
