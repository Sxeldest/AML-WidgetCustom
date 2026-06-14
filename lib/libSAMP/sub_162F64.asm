; =========================================================
; Game Engine Function: sub_162F64
; Address            : 0x162F64 - 0x162FFA
; =========================================================

162F64:  PUSH            {R4-R7,LR}
162F66:  ADD             R7, SP, #0xC
162F68:  PUSH.W          {R8}
162F6C:  SUB             SP, SP, #8
162F6E:  MOV             R4, R0
162F70:  LDR             R0, =(off_23494C - 0x162F7E)
162F72:  MOVW            R5, #0x594
162F76:  MOVW            R6, #:lower16:unk_36D7A9
162F7A:  ADD             R0, PC; off_23494C
162F7C:  MOVT            R5, #0x82
162F80:  MOVT            R6, #:upper16:unk_36D7A9
162F84:  LDR.W           R8, [R7,#arg_0]
162F88:  LDR             R0, [R0]; dword_23DF24
162F8A:  STR.W           R8, [SP,#0x18+var_18]
162F8E:  LDR             R0, [R0]
162F90:  ADD             R5, R0
162F92:  ADD             R6, R0
162F94:  MOV             R0, R5
162F96:  BLX             R6
162F98:  STR             R0, [R4]
162F9A:  CBZ             R0, loc_162FA6
162F9C:  MOV             R0, R4
162F9E:  ADD             SP, SP, #8
162FA0:  POP.W           {R8}
162FA4:  POP             {R4-R7,PC}
162FA6:  LDR             R0, [R5]
162FA8:  CBNZ            R0, loc_162FBC
162FAA:  MOVS            R0, #8; thrown_size
162FAC:  BLX             j___cxa_allocate_exception
162FB0:  LDR             R1, =(aBlueprintIsNot - 0x162FB8); "Blueprint is not present" ...
162FB2:  MOV             R4, R0
162FB4:  ADD             R1, PC; "Blueprint is not present"
162FB6:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
162FBA:  B               loc_162FE8
162FBC:  CMP.W           R8, #0
162FC0:  BNE             loc_162FC6
162FC2:  LDR             R0, [R0,#0x20]
162FC4:  CBNZ            R0, loc_162FD8
162FC6:  MOVS            R0, #8; thrown_size
162FC8:  BLX             j___cxa_allocate_exception
162FCC:  LDR             R1, =(aEffectNotFound - 0x162FD4); "Effect not found" ...
162FCE:  MOV             R4, R0
162FD0:  ADD             R1, PC; "Effect not found"
162FD2:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
162FD6:  B               loc_162FE8
162FD8:  MOVS            R0, #8; thrown_size
162FDA:  BLX             j___cxa_allocate_exception
162FDE:  LDR             R1, =(aFxmanagerCCrea - 0x162FE6); "FxManager_c::CreateFxSystem return null"... ...
162FE0:  MOV             R4, R0
162FE2:  ADD             R1, PC; "FxManager_c::CreateFxSystem return null"...
162FE4:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
162FE8:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x162FF0)
162FEA:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x162FF2)
162FEC:  ADD             R0, PC; _ZTISt13runtime_error_ptr
162FEE:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
162FF0:  LDR             R1, [R0]; lptinfo
162FF2:  MOV             R0, R4; void *
162FF4:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
162FF6:  BLX             j___cxa_throw
