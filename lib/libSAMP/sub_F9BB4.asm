; =========================================================
; Game Engine Function: sub_F9BB4
; Address            : 0xF9BB4 - 0xF9C6C
; =========================================================

F9BB4:  PUSH            {R4-R7,LR}
F9BB6:  ADD             R7, SP, #0xC
F9BB8:  PUSH.W          {R8}
F9BBC:  SUB             SP, SP, #0x20
F9BBE:  MOV             R0, R1
F9BC0:  MOV             R6, R3
F9BC2:  MOV             R8, R2
F9BC4:  MOV             R5, R1
F9BC6:  BL              sub_108420
F9BCA:  CMP             R0, #0
F9BCC:  IT EQ
F9BCE:  MOVWEQ          R5, #0x48C7
F9BD2:  MOVW            R0, #0x4E20
F9BD6:  CMP             R5, R0
F9BD8:  BHI             loc_F9C04
F9BDA:  LDR             R0, =(unk_B2CDC - 0xF9BE2)
F9BDC:  MOV             R1, R5
F9BDE:  ADD             R0, PC; unk_B2CDC
F9BE0:  BL              sub_107188
F9BE4:  CBNZ            R0, loc_F9C04
F9BE6:  LDR             R0, =(unk_B2CF0 - 0xF9BEE)
F9BE8:  MOV             R1, R5
F9BEA:  ADD             R0, PC; unk_B2CF0
F9BEC:  BL              sub_107188
F9BF0:  LDR             R0, =(unk_B2C78 - 0xF9BF6)
F9BF2:  ADD             R0, PC; unk_B2C78
F9BF4:  BL              sub_107188
F9BF8:  MOV             R0, R5
F9BFA:  MOVW            R1, #0x1388
F9BFE:  BL              sub_F9CD8
F9C02:  CBZ             R0, loc_F9C4A
F9C04:  VLDR            S0, [R7,#arg_4]
F9C08:  VMOV            S4, R6
F9C0C:  VLDR            S2, [R7,#arg_0]
F9C10:  ADD             R1, SP, #0x30+var_14
F9C12:  VCVT.F64.F32    D16, S0
F9C16:  LDR             R0, =(unk_B2D68 - 0xF9C20)
F9C18:  STR             R1, [SP,#0x30+var_18]
F9C1A:  MOV             R1, R5
F9C1C:  ADD             R0, PC; unk_B2D68
F9C1E:  MOV             R2, R8
F9C20:  LDR             R4, [R7,#arg_8]
F9C22:  VCVT.F64.F32    D17, S2
F9C26:  VCVT.F64.F32    D18, S4
F9C2A:  VSTR            D18, [SP,#0x30+var_30]
F9C2E:  VSTR            D17, [SP,#0x30+var_28]
F9C32:  VSTR            D16, [SP,#0x30+var_20]
F9C36:  BL              sub_107188
F9C3A:  LDR             R0, [SP,#0x30+var_14]
F9C3C:  CBZ             R4, loc_F9C42
F9C3E:  UXTH            R1, R0
F9C40:  STR             R1, [R4]
F9C42:  ADD             SP, SP, #0x20 ; ' '
F9C44:  POP.W           {R8}
F9C48:  POP             {R4-R7,PC}
F9C4A:  MOVS            R0, #8; thrown_size
F9C4C:  BLX             j___cxa_allocate_exception
F9C50:  LDR             R1, =(aCanTLoadPickup - 0xF9C58); "can't load pickup model" ...
F9C52:  MOV             R4, R0
F9C54:  ADD             R1, PC; "can't load pickup model"
F9C56:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
F9C5A:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0xF9C62)
F9C5C:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0xF9C64)
F9C5E:  ADD             R0, PC; _ZTISt13runtime_error_ptr
F9C60:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
F9C62:  LDR             R1, [R0]; lptinfo
F9C64:  MOV             R0, R4; void *
F9C66:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
F9C68:  BLX             j___cxa_throw
