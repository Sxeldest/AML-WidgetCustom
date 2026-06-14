; =========================================================
; Game Engine Function: sub_465F40
; Address            : 0x465F40 - 0x465F4E
; =========================================================

465F40:  PUSH            {R4,R6,R7,LR}
465F42:  ADD             R7, SP, #8
465F44:  MOV             R4, R0
465F46:  BLX             j__ZN14CCarFXRenderer24CustomCarPipeAtomicSetupEP8RpAtomic; CCarFXRenderer::CustomCarPipeAtomicSetup(RpAtomic *)
465F4A:  MOV             R0, R4
465F4C:  POP             {R4,R6,R7,PC}
