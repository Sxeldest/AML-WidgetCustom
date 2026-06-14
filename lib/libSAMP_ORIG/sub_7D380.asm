; =========================================================
; Game Engine Function: sub_7D380
; Address            : 0x7D380 - 0x7D3D8
; =========================================================

7D380:  PUSH            {R4-R7,LR}
7D382:  ADD             R7, SP, #0xC
7D384:  PUSH.W          {R8,R9,R11}
7D388:  MOV             R8, R3
7D38A:  MOV             R9, R2
7D38C:  MOV             R6, R1
7D38E:  MOV             R5, R0
7D390:  BL              sub_7C360
7D394:  LDR             R0, =(_ZTV5Label - 0x7D3A0); `vtable for'Label ...
7D396:  MOV             R4, R5
7D398:  VMOV.I32        Q8, #0
7D39C:  ADD             R0, PC; `vtable for'Label
7D39E:  ADDS            R0, #8
7D3A0:  STR.W           R0, [R4],#0x54
7D3A4:  MOVS            R0, #0xC
7D3A6:  MOV             R1, R4
7D3A8:  VST1.32         {D16-D17}, [R1],R0
7D3AC:  VST1.32         {D16-D17}, [R1]
7D3B0:  MOV             R0, R4
7D3B2:  MOV             R1, R6
7D3B4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
7D3B8:  VLD1.32         {D16-D17}, [R9]
7D3BC:  ADD.W           R0, R5, #0x60 ; '`'
7D3C0:  VLDR            S0, [R7,#arg_0]
7D3C4:  VST1.32         {D16-D17}, [R0]!
7D3C8:  STRB.W          R8, [R0]
7D3CC:  MOV             R0, R5
7D3CE:  VSTR            S0, [R5,#0x74]
7D3D2:  POP.W           {R8,R9,R11}
7D3D6:  POP             {R4-R7,PC}
