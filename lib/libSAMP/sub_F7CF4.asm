; =========================================================
; Game Engine Function: sub_F7CF4
; Address            : 0xF7CF4 - 0xF7DF2
; =========================================================

F7CF4:  PUSH            {R4-R7,LR}
F7CF6:  ADD             R7, SP, #0xC
F7CF8:  PUSH.W          {R8}
F7CFC:  VPUSH           {D8}
F7D00:  SUB             SP, SP, #0x20
F7D02:  MOV             R4, R0
F7D04:  LDR             R0, =(_ZTV6CActor - 0xF7D0E); `vtable for'CActor ...
F7D06:  MOV             R5, R1
F7D08:  MOVS            R1, #0
F7D0A:  ADD             R0, PC; `vtable for'CActor
F7D0C:  MOV             R8, R3
F7D0E:  ADDS            R0, #8
F7D10:  STRD.W          R0, R1, [R4]
F7D14:  MOV             R0, R5
F7D16:  MOV             R6, R2
F7D18:  STRB            R1, [R4,#0x10]
F7D1A:  STRD.W          R1, R1, [R4,#8]
F7D1E:  BL              sub_F9C94
F7D22:  CBNZ            R0, loc_F7D3A
F7D24:  MOV             R0, R5
F7D26:  BL              sub_F9CBC
F7D2A:  BL              sub_F9CCC
F7D2E:  MOV             R0, R5
F7D30:  MOVS            R1, #0xC8
F7D32:  BL              sub_F9CD8
F7D36:  CMP             R0, #0
F7D38:  BEQ             loc_F7DD0
F7D3A:  VMOV.F32        S6, #-1.0
F7D3E:  VLDR            S4, [R7,#arg_0]
F7D42:  VMOV            S0, R8
F7D46:  LDR             R0, =(unk_92D1E - 0xF7D56)
F7D48:  VMOV            S2, R6
F7D4C:  ADD             R1, SP, #0x38+var_1C
F7D4E:  VCVT.F64.F32    D16, S0
F7D52:  ADD             R0, PC; unk_92D1E
F7D54:  STR             R1, [SP,#0x38+var_20]
F7D56:  MOVS            R1, #5
F7D58:  MOV             R2, R5
F7D5A:  VADD.F32        S4, S4, S6
F7D5E:  VLDR            S16, [R7,#arg_4]
F7D62:  VCVT.F64.F32    D17, S2
F7D66:  VSTR            D17, [SP,#0x38+var_38]
F7D6A:  VCVT.F64.F32    D18, S4
F7D6E:  VSTR            D16, [SP,#0x38+var_30]
F7D72:  VSTR            D18, [SP,#0x38+var_28]
F7D76:  BL              sub_107188
F7D7A:  VCVT.F64.F32    D16, S16
F7D7E:  LDR             R0, =(unk_92D32 - 0xF7D86)
F7D80:  LDR             R1, [SP,#0x38+var_1C]
F7D82:  ADD             R0, PC; unk_92D32
F7D84:  VMOV            R2, R3, D16
F7D88:  BL              sub_107188
F7D8C:  LDR             R0, [SP,#0x38+var_1C]
F7D8E:  STR             R0, [R4,#8]
F7D90:  BL              sub_1082F4
F7D94:  LDR             R1, [R4,#8]
F7D96:  LDR             R2, =(unk_92D46 - 0xF7D9E)
F7D98:  STR             R0, [R4,#0xC]
F7D9A:  ADD             R2, PC; unk_92D46
F7D9C:  STR             R0, [R4,#4]
F7D9E:  MOV             R0, R2
F7DA0:  MOVS            R2, #0
F7DA2:  BL              sub_107188
F7DA6:  LDR             R1, [R4,#8]
F7DA8:  MOVS            R2, #:lower16:(elf_gnu_hash_indexes+0x194A)
F7DAA:  LDR             R0, =(unk_92D5A - 0xF7DB4)
F7DAC:  MOVT            R2, #:upper16:(elf_gnu_hash_indexes+0x194A)
F7DB0:  ADD             R0, PC; unk_92D5A
F7DB2:  BL              sub_107188
F7DB6:  LDR             R1, [R4,#8]
F7DB8:  MOVS            R2, #1
F7DBA:  LDR             R0, =(unk_92D6E - 0xF7DC0)
F7DBC:  ADD             R0, PC; unk_92D6E
F7DBE:  BL              sub_107188
F7DC2:  MOV             R0, R4
F7DC4:  ADD             SP, SP, #0x20 ; ' '
F7DC6:  VPOP            {D8}
F7DCA:  POP.W           {R8}
F7DCE:  POP             {R4-R7,PC}
F7DD0:  MOVS            R0, #8; thrown_size
F7DD2:  BLX             j___cxa_allocate_exception
F7DD6:  LDR             R1, =(aErrorLoadingSk - 0xF7DDE); "error loading skin model" ...
F7DD8:  MOV             R4, R0
F7DDA:  ADD             R1, PC; "error loading skin model"
F7DDC:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
F7DE0:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0xF7DE8)
F7DE2:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0xF7DEA)
F7DE4:  ADD             R0, PC; _ZTISt13runtime_error_ptr
F7DE6:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
F7DE8:  LDR             R1, [R0]; lptinfo
F7DEA:  MOV             R0, R4; void *
F7DEC:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
F7DEE:  BLX             j___cxa_throw
