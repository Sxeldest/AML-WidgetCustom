; =========================================================
; Game Engine Function: alDopplerVelocity
; Address            : 0x25D8F8 - 0x25D978
; =========================================================

25D8F8:  PUSH            {R4,R5,R7,LR}
25D8FA:  ADD             R7, SP, #8
25D8FC:  MOV             R5, R0
25D8FE:  BLX             j_GetContextRef
25D902:  MOV             R4, R0
25D904:  CMP             R4, #0
25D906:  IT EQ
25D908:  POPEQ           {R4,R5,R7,PC}
25D90A:  VMOV            S0, R5
25D90E:  VCMPE.F32       S0, #0.0
25D912:  VMRS            APSR_nzcv, FPSCR
25D916:  BLT             loc_25D934
25D918:  VABS.F32        S2, S0
25D91C:  VLDR            S4, =+Inf
25D920:  VCMP.F32        S2, S4
25D924:  VMRS            APSR_nzcv, FPSCR
25D928:  BEQ             loc_25D934
25D92A:  MOVS            R0, #1
25D92C:  VSTR            S0, [R4,#0x64]
25D930:  STR             R0, [R4,#0x54]
25D932:  B               loc_25D96E
25D934:  LDR             R0, =(TrapALError_ptr - 0x25D93A)
25D936:  ADD             R0, PC; TrapALError_ptr
25D938:  LDR             R0, [R0]; TrapALError
25D93A:  LDRB            R0, [R0]
25D93C:  CMP             R0, #0
25D93E:  ITT NE
25D940:  MOVNE           R0, #5; sig
25D942:  BLXNE           raise
25D946:  LDREX.W         R0, [R4,#0x50]
25D94A:  CBNZ            R0, loc_25D966
25D94C:  ADD.W           R0, R4, #0x50 ; 'P'
25D950:  MOVW            R1, #0xA003
25D954:  DMB.W           ISH
25D958:  STREX.W         R2, R1, [R0]
25D95C:  CBZ             R2, loc_25D96A
25D95E:  LDREX.W         R2, [R0]
25D962:  CMP             R2, #0
25D964:  BEQ             loc_25D958
25D966:  CLREX.W
25D96A:  DMB.W           ISH
25D96E:  MOV             R0, R4
25D970:  POP.W           {R4,R5,R7,LR}
25D974:  B.W             ALCcontext_DecRef
