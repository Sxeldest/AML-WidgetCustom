; =========================================================
; Game Engine Function: _Z15emu_glVertex4fvPKf
; Address            : 0x1B90CC - 0x1B916A
; =========================================================

1B90CC:  PUSH            {R4-R7,LR}
1B90CE:  ADD             R7, SP, #0xC
1B90D0:  PUSH.W          {R8}
1B90D4:  VPUSH           {D8-D9}
1B90D8:  LDR             R1, =(Imm_ptr - 0x1B90E2)
1B90DA:  VLD1.32         {D8-D9}, [R0]
1B90DE:  ADD             R1, PC; Imm_ptr
1B90E0:  LDR             R1, [R1]; Imm
1B90E2:  LDR             R0, [R1,#(dword_6B32B4 - 0x6B32A4)]
1B90E4:  CBNZ            R0, loc_1B90F8
1B90E6:  LDR             R0, =(Imm_ptr - 0x1B90F0)
1B90E8:  MOVS            R2, #0
1B90EA:  MOVS            R3, #4
1B90EC:  ADD             R0, PC; Imm_ptr
1B90EE:  LDR             R1, [R0]; Imm
1B90F0:  MOVS            R0, #0x10
1B90F2:  STRD.W          R3, R0, [R1,#(dword_6B32B0 - 0x6B32A4)]
1B90F6:  STR             R2, [R1,#(dword_6B32B8 - 0x6B32A4)]
1B90F8:  LDR             R1, =(Imm_ptr - 0x1B90FE)
1B90FA:  ADD             R1, PC; Imm_ptr
1B90FC:  LDR             R1, [R1]; Imm
1B90FE:  LDRD.W          R2, R4, [R1,#(dword_6B32A8 - 0x6B32A4)]
1B9102:  ADD.W           R8, R4, R0
1B9106:  CMP             R2, R8
1B9108:  BGE             loc_1B9148
1B910A:  LDR             R0, =(Imm_ptr - 0x1B9114)
1B910C:  ADD.W           R1, R8, R8,LSL#1
1B9110:  ADD             R0, PC; Imm_ptr
1B9112:  LDR             R6, [R0]; Imm
1B9114:  ADD.W           R0, R1, R1,LSR#31
1B9118:  ASRS            R0, R0, #1; byte_count
1B911A:  STR             R0, [R6,#(dword_6B32A8 - 0x6B32A4)]
1B911C:  BLX             malloc
1B9120:  LDR             R6, [R6]
1B9122:  MOV             R5, R0
1B9124:  CBZ             R6, loc_1B913E
1B9126:  MOV             R0, R5; void *
1B9128:  MOV             R1, R6; void *
1B912A:  MOV             R2, R4; size_t
1B912C:  BLX             memcpy_1
1B9130:  MOV             R0, R6; p
1B9132:  BLX             free
1B9136:  LDR             R0, =(Imm_ptr - 0x1B913C)
1B9138:  ADD             R0, PC; Imm_ptr
1B913A:  LDR             R0, [R0]; Imm
1B913C:  LDR             R4, [R0,#(dword_6B32AC - 0x6B32A4)]
1B913E:  LDR             R0, =(Imm_ptr - 0x1B9144)
1B9140:  ADD             R0, PC; Imm_ptr
1B9142:  LDR             R0, [R0]; Imm
1B9144:  STR             R5, [R0]
1B9146:  B               loc_1B9150
1B9148:  LDR             R0, =(Imm_ptr - 0x1B914E)
1B914A:  ADD             R0, PC; Imm_ptr
1B914C:  LDR             R0, [R0]; Imm
1B914E:  LDR             R5, [R0]
1B9150:  LDR             R0, =(Imm_ptr - 0x1B9156)
1B9152:  ADD             R0, PC; Imm_ptr
1B9154:  LDR             R0, [R0]; Imm
1B9156:  STR.W           R8, [R0,#(dword_6B32AC - 0x6B32A4)]
1B915A:  ADDS            R0, R5, R4
1B915C:  VST1.32         {D8-D9}, [R0]
1B9160:  VPOP            {D8-D9}
1B9164:  POP.W           {R8}
1B9168:  POP             {R4-R7,PC}
