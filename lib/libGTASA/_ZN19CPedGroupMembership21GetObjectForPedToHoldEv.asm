; =========================================================
; Game Engine Function: _ZN19CPedGroupMembership21GetObjectForPedToHoldEv
; Address            : 0x4B1F88 - 0x4B1FD0
; =========================================================

4B1F88:  PUSH            {R7,LR}
4B1F8A:  MOV             R7, SP
4B1F8C:  BLX             rand
4B1F90:  UXTH            R0, R0
4B1F92:  VLDR            S2, =0.000015259
4B1F96:  VMOV            S0, R0
4B1F9A:  VCVT.F32.S32    S0, S0
4B1F9E:  VMUL.F32        S0, S0, S2
4B1FA2:  VLDR            S2, =100.0
4B1FA6:  VMUL.F32        S0, S0, S2
4B1FAA:  VCVT.S32.F32    S0, S0
4B1FAE:  VMOV            R0, S0
4B1FB2:  CMP             R0, #0x20 ; ' '
4B1FB4:  BGT             loc_4B1FBC
4B1FB6:  LDR             R0, =(MI_GANG_SMOKE_ptr - 0x4B1FBC)
4B1FB8:  ADD             R0, PC; MI_GANG_SMOKE_ptr
4B1FBA:  B               loc_4B1FCA
4B1FBC:  CMP             R0, #0x41 ; 'A'
4B1FBE:  ITT GT
4B1FC0:  MOVGT.W         R0, #0xFFFFFFFF
4B1FC4:  POPGT           {R7,PC}
4B1FC6:  LDR             R0, =(MI_GANG_DRINK_ptr - 0x4B1FCC)
4B1FC8:  ADD             R0, PC; MI_GANG_DRINK_ptr
4B1FCA:  LDR             R0, [R0]
4B1FCC:  LDRH            R0, [R0]
4B1FCE:  POP             {R7,PC}
