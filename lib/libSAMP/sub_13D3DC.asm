; =========================================================
; Game Engine Function: sub_13D3DC
; Address            : 0x13D3DC - 0x13D434
; =========================================================

13D3DC:  PUSH            {R4-R7,LR}
13D3DE:  ADD             R7, SP, #0xC
13D3E0:  PUSH.W          {R8,R9,R11}
13D3E4:  MOV             R8, R3
13D3E6:  MOV             R9, R2
13D3E8:  MOV             R6, R1
13D3EA:  MOV             R5, R0
13D3EC:  BL              sub_12BC78
13D3F0:  LDR             R0, =(_ZTV5Label - 0x13D3FC); `vtable for'Label ...
13D3F2:  MOV             R4, R5
13D3F4:  VMOV.I32        Q8, #0
13D3F8:  ADD             R0, PC; `vtable for'Label
13D3FA:  ADDS            R0, #8
13D3FC:  STR.W           R0, [R4],#0x54
13D400:  MOVS            R0, #0xC
13D402:  MOV             R1, R4
13D404:  VST1.32         {D16-D17}, [R1],R0
13D408:  VST1.32         {D16-D17}, [R1]
13D40C:  MOV             R0, R4
13D40E:  MOV             R1, R6
13D410:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
13D414:  VLD1.32         {D16-D17}, [R9]
13D418:  ADD.W           R0, R5, #0x60 ; '`'
13D41C:  VLDR            S0, [R7,#arg_0]
13D420:  VST1.32         {D16-D17}, [R0]!
13D424:  STRB.W          R8, [R0]
13D428:  MOV             R0, R5
13D42A:  VSTR            S0, [R5,#0x74]
13D42E:  POP.W           {R8,R9,R11}
13D432:  POP             {R4-R7,PC}
