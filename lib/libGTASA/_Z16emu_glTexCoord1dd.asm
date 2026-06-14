; =========================================================
; Game Engine Function: _Z16emu_glTexCoord1dd
; Address            : 0x1B71D0 - 0x1B7272
; =========================================================

1B71D0:  LDR             R2, =(Imm_ptr - 0x1B71DA)
1B71D2:  VMOV            D16, R0, R1
1B71D6:  ADD             R2, PC; Imm_ptr
1B71D8:  LDR             R0, [R2]; Imm
1B71DA:  LDR             R0, [R0,#(dword_6B32CC - 0x6B32A4)]
1B71DC:  CBNZ            R0, loc_1B71F0
1B71DE:  LDR             R0, =(Imm_ptr - 0x1B71E8)
1B71E0:  MOVS            R2, #0
1B71E2:  MOVS            R3, #1
1B71E4:  ADD             R0, PC; Imm_ptr
1B71E6:  LDR             R1, [R0]; Imm
1B71E8:  MOVS            R0, #4
1B71EA:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B71EE:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B71F0:  PUSH            {R4-R7,LR}
1B71F2:  ADD             R7, SP, #0xC
1B71F4:  PUSH.W          {R8}
1B71F8:  VPUSH           {D8}
1B71FC:  LDR             R1, =(Imm_ptr - 0x1B7206)
1B71FE:  VCVT.F32.F64    S16, D16
1B7202:  ADD             R1, PC; Imm_ptr
1B7204:  LDR             R1, [R1]; Imm
1B7206:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B720A:  ADD.W           R8, R4, R0
1B720E:  CMP             R2, R8
1B7210:  BGE             loc_1B7250
1B7212:  LDR             R0, =(Imm_ptr - 0x1B721C)
1B7214:  ADD.W           R1, R8, R8,LSL#1
1B7218:  ADD             R0, PC; Imm_ptr
1B721A:  LDR             R6, [R0]; Imm
1B721C:  ADD.W           R0, R1, R1,LSR#31
1B7220:  ASRS            R0, R0, #1; byte_count
1B7222:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B7224:  BLX             malloc
1B7228:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B722A:  MOV             R5, R0
1B722C:  CBZ             R6, loc_1B7246
1B722E:  MOV             R0, R5; void *
1B7230:  MOV             R1, R6; void *
1B7232:  MOV             R2, R4; size_t
1B7234:  BLX             memcpy_1
1B7238:  MOV             R0, R6; p
1B723A:  BLX             free
1B723E:  LDR             R0, =(Imm_ptr - 0x1B7244)
1B7240:  ADD             R0, PC; Imm_ptr
1B7242:  LDR             R0, [R0]; Imm
1B7244:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B7246:  LDR             R0, =(Imm_ptr - 0x1B724C)
1B7248:  ADD             R0, PC; Imm_ptr
1B724A:  LDR             R0, [R0]; Imm
1B724C:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B724E:  B               loc_1B7258
1B7250:  LDR             R0, =(Imm_ptr - 0x1B7256)
1B7252:  ADD             R0, PC; Imm_ptr
1B7254:  LDR             R0, [R0]; Imm
1B7256:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B7258:  LDR             R0, =(Imm_ptr - 0x1B725E)
1B725A:  ADD             R0, PC; Imm_ptr
1B725C:  LDR             R0, [R0]; Imm
1B725E:  STR.W           R8, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B7262:  ADDS            R0, R5, R4
1B7264:  VSTR            S16, [R0]
1B7268:  VPOP            {D8}
1B726C:  POP.W           {R8}
1B7270:  POP             {R4-R7,PC}
