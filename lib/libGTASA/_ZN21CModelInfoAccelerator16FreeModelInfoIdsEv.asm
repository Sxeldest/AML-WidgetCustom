; =========================================================
; Game Engine Function: _ZN21CModelInfoAccelerator16FreeModelInfoIdsEv
; Address            : 0x386518 - 0x38652E
; =========================================================

386518:  PUSH            {R4,R6,R7,LR}
38651A:  ADD             R7, SP, #8
38651C:  MOV             R4, R0
38651E:  LDR             R0, [R4]; void *
386520:  CMP             R0, #0
386522:  IT NE
386524:  BLXNE           _ZdaPv; operator delete[](void *)
386528:  MOVS            R0, #0
38652A:  STR             R0, [R4]
38652C:  POP             {R4,R6,R7,PC}
