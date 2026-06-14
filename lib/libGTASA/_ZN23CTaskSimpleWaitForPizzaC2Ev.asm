; =========================================================
; Game Engine Function: _ZN23CTaskSimpleWaitForPizzaC2Ev
; Address            : 0x4EE634 - 0x4EE650
; =========================================================

4EE634:  PUSH            {R7,LR}; Alternative name is 'CTaskSimpleWaitForPizza::CTaskSimpleWaitForPizza(void)'
4EE636:  MOV             R7, SP
4EE638:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EE63C:  LDR             R1, =(_ZTV23CTaskSimpleWaitForPizza_ptr - 0x4EE646)
4EE63E:  MOVS            R2, #0
4EE640:  STRH            R2, [R0,#0x10]
4EE642:  ADD             R1, PC; _ZTV23CTaskSimpleWaitForPizza_ptr
4EE644:  STRD.W          R2, R2, [R0,#8]
4EE648:  LDR             R1, [R1]; `vtable for'CTaskSimpleWaitForPizza ...
4EE64A:  ADDS            R1, #8
4EE64C:  STR             R1, [R0]
4EE64E:  POP             {R7,PC}
