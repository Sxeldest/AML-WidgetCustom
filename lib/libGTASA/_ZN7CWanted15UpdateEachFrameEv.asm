; =========================================================
; Game Engine Function: _ZN7CWanted15UpdateEachFrameEv
; Address            : 0x422D60 - 0x422D88
; =========================================================

422D60:  PUSH            {R7,LR}
422D62:  MOV             R7, SP
422D64:  MOV.W           R0, #0xFFFFFFFF; int
422D68:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
422D6C:  LDRB            R1, [R0,#0x1E]
422D6E:  LSLS            R1, R1, #0x1D
422D70:  BNE             loc_422D7C
422D72:  LDR             R0, [R0,#0x2C]
422D74:  SUBS            R0, #3
422D76:  CMP             R0, #4
422D78:  IT CC
422D7A:  POPCC           {R7,PC}
422D7C:  LDR             R0, =(_ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr - 0x422D84)
422D7E:  MOVS            R1, #1
422D80:  ADD             R0, PC; _ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr
422D82:  LDR             R0, [R0]; CWanted::bUseNewsHeliInAdditionToPolice ...
422D84:  STRB            R1, [R0]; CWanted::bUseNewsHeliInAdditionToPolice
422D86:  POP             {R7,PC}
