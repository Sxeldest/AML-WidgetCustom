; =========================================================
; Game Engine Function: _ZN11CPlayerInfo21StreamParachuteWeaponEb
; Address            : 0x408F6C - 0x409050
; =========================================================

408F6C:  PUSH            {R4,R5,R7,LR}
408F6E:  ADD             R7, SP, #8
408F70:  VPUSH           {D8-D9}
408F74:  MOV             R5, R1
408F76:  MOV             R4, R0
408F78:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
408F7C:  CMP             R0, #1
408F7E:  BNE             loc_408F82
408F80:  CBNZ            R5, loc_408FC6
408F82:  CMP             R5, #1
408F84:  BNE             loc_408FAE
408F86:  LDR             R0, [R4]
408F88:  CBZ             R0, loc_408F9A
408F8A:  LDRB.W          R1, [R0,#0x485]
408F8E:  LSLS            R1, R1, #0x1F
408F90:  ITT NE
408F92:  LDRNE.W         R1, [R0,#0x590]
408F96:  CMPNE           R1, #0
408F98:  BNE             loc_408FCC
408F9A:  LDR.W           R0, [R4,#0x190]
408F9E:  CBZ             R0, loc_408FAE
408FA0:  MOVW            R0, #(elf_hash_bucket+0x77); this
408FA4:  MOVS            R1, #4; int
408FA6:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
408FAA:  MOVS            R0, #1
408FAC:  B               loc_408FC2
408FAE:  LDRB.W          R0, [R4,#0x18C]
408FB2:  CBZ             R0, loc_408FC6
408FB4:  MOVW            R0, #(elf_hash_bucket+0x77); this
408FB8:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
408FBC:  MOVS            R0, #0
408FBE:  STR.W           R0, [R4,#0x190]
408FC2:  STRB.W          R0, [R4,#0x18C]
408FC6:  VPOP            {D8-D9}
408FCA:  POP             {R4,R5,R7,PC}
408FCC:  LDR.W           R1, [R1,#0x5A4]
408FD0:  CMP             R1, #4
408FD2:  BEQ             loc_408FE0
408FD4:  LDR.W           R1, [R0,#0x590]
408FD8:  LDR.W           R1, [R1,#0x5A4]
408FDC:  CMP             R1, #3
408FDE:  BNE             loc_408F9A
408FE0:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x408FEA)
408FE2:  VLDR            S16, =50.0
408FE6:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
408FE8:  VLDR            S2, =1000.0
408FEC:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
408FEE:  VLDR            S0, [R1]
408FF2:  LDR.W           R1, [R4,#0x190]
408FF6:  VDIV.F32        S0, S0, S16
408FFA:  VMUL.F32        S0, S0, S2
408FFE:  VCVT.U32.F32    S0, S0
409002:  VMOV            R2, S0
409006:  CMP             R1, R2
409008:  BLS             loc_409012
40900A:  SUBS            R0, R1, R2
40900C:  STR.W           R0, [R4,#0x190]
409010:  B               loc_408F9A
409012:  LDR.W           R0, [R0,#0x590]
409016:  MOVS            R5, #0
409018:  LDR             R2, =(TheCamera_ptr - 0x409020)
40901A:  LDR             R1, [R0,#0x14]
40901C:  ADD             R2, PC; TheCamera_ptr
40901E:  ADD.W           R3, R1, #0x30 ; '0'
409022:  CMP             R1, #0
409024:  IT EQ
409026:  ADDEQ           R3, R0, #4
409028:  LDR             R0, [R2]; TheCamera ; this
40902A:  MOVS            R1, #0; unsigned int
40902C:  VLDR            S18, [R3,#8]
409030:  BLX             j__ZN7CCamera21CalculateGroundHeightEj; CCamera::CalculateGroundHeight(uint)
409034:  VMOV            S0, R0
409038:  VSUB.F32        S0, S18, S0
40903C:  VCMPE.F32       S0, S16
409040:  VMRS            APSR_nzcv, FPSCR
409044:  IT GT
409046:  MOVWGT          R5, #0x1388
40904A:  STR.W           R5, [R4,#0x190]
40904E:  B               loc_408F9A
