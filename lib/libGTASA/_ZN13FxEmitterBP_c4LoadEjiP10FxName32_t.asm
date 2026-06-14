; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_c4LoadEjiP10FxName32_t
; Address            : 0x46DFC8 - 0x46E072
; =========================================================

46DFC8:  PUSH            {R4-R7,LR}
46DFCA:  ADD             R7, SP, #0xC
46DFCC:  PUSH.W          {R8-R10}
46DFD0:  VPUSH           {D8}
46DFD4:  SUB             SP, SP, #0x188
46DFD6:  MOV             R4, R0
46DFD8:  LDR             R0, =(__stack_chk_guard_ptr - 0x46DFE0)
46DFDA:  MOV             R5, R1
46DFDC:  ADD             R0, PC; __stack_chk_guard_ptr
46DFDE:  LDR             R0, [R0]; __stack_chk_guard
46DFE0:  LDR             R0, [R0]
46DFE2:  STR             R0, [SP,#0x1A8+var_24]
46DFE4:  MOV             R0, R4; int
46DFE6:  BLX             j__ZN10FxPrimBP_c4LoadEjiP10FxName32_t; FxPrimBP_c::Load(uint,int,FxName32_t *)
46DFEA:  ADD             R6, SP, #0x1A8+var_124
46DFEC:  MOV             R0, R5; unsigned int
46DFEE:  MOV.W           R2, #0x100; int
46DFF2:  MOV             R1, R6; char *
46DFF4:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DFF8:  LDR.W           R8, =(aSF_0 - 0x46E008); "%s %f"
46DFFC:  ADD.W           R9, SP, #0x1A8+var_1A4
46E000:  MOV             R10, SP
46E002:  MOV             R0, R6; s
46E004:  ADD             R8, PC; "%s %f"
46E006:  MOV             R2, R9
46E008:  MOV             R3, R10
46E00A:  MOV             R1, R8; format
46E00C:  BLX             sscanf
46E010:  VLDR            S16, =64.0
46E014:  MOV             R1, R6; char *
46E016:  VLDR            S0, [SP,#0x1A8+var_1A8]
46E01A:  MOV.W           R2, #0x100; int
46E01E:  VMUL.F32        S0, S0, S16
46E022:  VCVT.U32.F32    S0, S0
46E026:  VMOV            R0, S0
46E02A:  STRH            R0, [R4,#0x38]
46E02C:  MOV             R0, R5; unsigned int
46E02E:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E032:  MOV             R0, R6; s
46E034:  MOV             R1, R8; format
46E036:  MOV             R2, R9
46E038:  MOV             R3, R10
46E03A:  BLX             sscanf
46E03E:  VLDR            S0, [SP,#0x1A8+var_1A8]
46E042:  VMUL.F32        S0, S0, S16
46E046:  VCVT.U32.F32    S0, S0
46E04A:  VMOV            R0, S0
46E04E:  STRH            R0, [R4,#0x3A]
46E050:  LDR             R0, =(__stack_chk_guard_ptr - 0x46E058)
46E052:  LDR             R1, [SP,#0x1A8+var_24]
46E054:  ADD             R0, PC; __stack_chk_guard_ptr
46E056:  LDR             R0, [R0]; __stack_chk_guard
46E058:  LDR             R0, [R0]
46E05A:  SUBS            R0, R0, R1
46E05C:  ITTTT EQ
46E05E:  MOVEQ           R0, #1
46E060:  ADDEQ           SP, SP, #0x188
46E062:  VPOPEQ          {D8}
46E066:  POPEQ.W         {R8-R10}
46E06A:  IT EQ
46E06C:  POPEQ           {R4-R7,PC}
46E06E:  BLX             __stack_chk_fail
