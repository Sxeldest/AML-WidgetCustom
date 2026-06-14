; =========================================================
; Game Engine Function: _ZN19CTaskSimpleDieInCar10ProcessPedEP4CPed
; Address            : 0x4EB018 - 0x4EB024
; =========================================================

4EB018:  PUSH            {R7,LR}
4EB01A:  MOV             R7, SP
4EB01C:  BLX             j__ZN14CTaskSimpleDie10ProcessPedEP4CPed; CTaskSimpleDie::ProcessPed(CPed *)
4EB020:  MOVS            R0, #0
4EB022:  POP             {R7,PC}
