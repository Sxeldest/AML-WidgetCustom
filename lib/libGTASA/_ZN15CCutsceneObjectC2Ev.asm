; =========================================================
; Game Engine Function: _ZN15CCutsceneObjectC2Ev
; Address            : 0x465980 - 0x4659F0
; =========================================================

465980:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CCutsceneObject::CCutsceneObject(void)'
465982:  ADD             R7, SP, #8
465984:  MOV             R4, R0
465986:  BLX             j__ZN7CObjectC2Ev; CObject::CObject(void)
46598A:  VMOV.I32        Q8, #0
46598E:  ADD.W           R2, R4, #0x18C
465992:  MOVS            R1, #0
465994:  LDR             R0, =(_ZTV15CCutsceneObject_ptr - 0x4659A2)
465996:  STRD.W          R1, R1, [R4,#0x19C]
46599A:  VST1.32         {D16-D17}, [R2]
46599E:  ADD             R0, PC; _ZTV15CCutsceneObject_ptr
4659A0:  STRD.W          R1, R1, [R4,#0x184]
4659A4:  MOVS            R1, #4
4659A6:  LDRB.W          R2, [R4,#0x3A]
4659AA:  STRB.W          R1, [R4,#0x140]
4659AE:  MOVS            R1, #2
4659B0:  BFI.W           R2, R1, #3, #0x1D
4659B4:  MOVW            R1, #0xFBFE
4659B8:  LDR             R3, [R4,#0x1C]
4659BA:  MOVT            R1, #0xEFFF
4659BE:  LDR             R0, [R0]; `vtable for'CCutsceneObject ...
4659C0:  ANDS            R1, R3
4659C2:  STRB.W          R2, [R4,#0x3A]
4659C6:  ORR.W           R1, R1, #0x10000000
4659CA:  ADDS            R0, #8
4659CC:  ORR.W           R1, R1, #0x400
4659D0:  STR             R1, [R4,#0x1C]
4659D2:  STR             R0, [R4]
4659D4:  MOV             R0, R4; this
4659D6:  MOVS            R1, #0; bool
4659D8:  BLX             j__ZN7CObject11SetIsStaticEb; CObject::SetIsStatic(bool)
4659DC:  LDR             R0, [R4,#0x1C]
4659DE:  MOV.W           R1, #0x3F000000
4659E2:  STR.W           R1, [R4,#0x130]
4659E6:  BIC.W           R0, R0, #0x8000000
4659EA:  STR             R0, [R4,#0x1C]
4659EC:  MOV             R0, R4
4659EE:  POP             {R4,R6,R7,PC}
