; =========================================================
; Game Engine Function: sub_74070
; Address            : 0x74070 - 0x740E8
; =========================================================

74070:  PUSH            {R4-R7,LR}
74072:  ADD             R7, SP, #0xC
74074:  PUSH.W          {R8,R9,R11}
74078:  MOV             R4, R0
7407A:  LDR             R0, =(byte_1A44E4 - 0x74080)
7407C:  ADD             R0, PC; byte_1A44E4
7407E:  STRB            R4, [R0]
74080:  BL              sub_6C844
74084:  LDR             R5, [R0,#8]
74086:  MOV             R6, R0
74088:  LDR             R0, =(off_114AB0 - 0x7408E)
7408A:  ADD             R0, PC; off_114AB0
7408C:  CBNZ            R5, loc_740BC
7408E:  MOV             R9, R0
74090:  MOV.W           R0, #0x2F0; unsigned int
74094:  BLX             j__Znwj; operator new(uint)
74098:  MOV             R5, R0
7409A:  LDR             R0, =(_ZTV10CPlayerPed - 0x740A6); `vtable for'CPlayerPed ...
7409C:  LDR.W           R1, [R9]; dword_1A4408
740A0:  MOV             R8, R9
740A2:  ADD             R0, PC; `vtable for'CPlayerPed
740A4:  ADDS            R0, #8
740A6:  STR             R0, [R5]
740A8:  LDR             R1, [R1]
740AA:  MOV             R0, #0x103B89
740B2:  ADD             R1, R0
740B4:  MOV             R0, R5
740B6:  BLX             R1
740B8:  MOV             R0, R8
740BA:  STR             R5, [R6,#8]
740BC:  LDR             R0, [R0]; dword_1A4408
740BE:  MOVW            R1, #:lower16:(loc_10421C+1)
740C2:  EOR.W           R4, R4, #1
740C6:  MOVT            R1, #:upper16:(loc_10421C+1)
740CA:  LDR             R0, [R0]
740CC:  ADDS            R2, R0, R1
740CE:  MOV             R0, R5
740D0:  MOV             R1, R4
740D2:  BLX             R2
740D4:  BL              sub_6C808
740D8:  LDR             R0, [R0,#0x60]
740DA:  MOV             R1, R4
740DC:  POP.W           {R8,R9,R11}
740E0:  POP.W           {R4-R7,LR}
740E4:  B.W             sub_6C90C
