; =========================================================
; Game Engine Function: _ZN20CTaskComplexSunbathe18CreateFirstSubTaskEP4CPed
; Address            : 0x4ED920 - 0x4EDAB0
; =========================================================

4ED920:  PUSH            {R4,R5,R7,LR}
4ED922:  ADD             R7, SP, #8
4ED924:  SUB             SP, SP, #0x10
4ED926:  MOV             R5, R1
4ED928:  MOV             R4, R0
4ED92A:  BLX             rand
4ED92E:  LDR.W           R0, [R5,#0x59C]
4ED932:  CMP             R0, #5
4ED934:  BNE             loc_4ED960
4ED936:  BLX             rand
4ED93A:  UXTH            R0, R0
4ED93C:  VLDR            S2, =0.000015259
4ED940:  VMOV            S0, R0
4ED944:  VMOV.F32        S4, #3.0
4ED948:  VCVT.F32.S32    S0, S0
4ED94C:  VMUL.F32        S0, S0, S2
4ED950:  VMUL.F32        S0, S0, S4
4ED954:  VCVT.S32.F32    S0, S0
4ED958:  VMOV            R0, S0
4ED95C:  ADDS            R0, #2
4ED95E:  B               loc_4ED978
4ED960:  LDRSH.W         R0, [R5,#0x26]; this
4ED964:  BLX             j__ZN11CPopulation11IsSunbatherEi; CPopulation::IsSunbather(int)
4ED968:  CMP             R0, #1
4ED96A:  BNE             loc_4ED976
4ED96C:  BLX             rand
4ED970:  AND.W           R0, R0, #1
4ED974:  B               loc_4ED978
4ED976:  MOVS            R0, #1
4ED978:  LDR             R1, [R4,#0x24]
4ED97A:  STR             R0, [R4,#0x20]
4ED97C:  LDRB            R0, [R1,#0x10]
4ED97E:  CBNZ            R0, loc_4ED98E
4ED980:  LDR             R0, [R4,#0x2C]
4ED982:  MOVW            R1, #0x63E7
4ED986:  ADD             R0, R1; this
4ED988:  MOVS            R1, #8; int
4ED98A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4ED98E:  LDR             R0, [R4,#0x28]
4ED990:  LDRB            R0, [R0,#0x10]
4ED992:  CBNZ            R0, loc_4ED9A2
4ED994:  LDR             R0, [R4,#0x30]
4ED996:  MOVW            R1, #0x63E7
4ED99A:  ADD             R0, R1; this
4ED99C:  MOVS            R1, #8; int
4ED99E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4ED9A2:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4ED9B0)
4ED9A4:  MOVS            R1, #0
4ED9A6:  STRB            R1, [R4,#0xD]
4ED9A8:  MOV.W           R2, #(elf_hash_bucket+0x98); CPed *
4ED9AC:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4ED9AE:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4ED9B6)
4ED9B0:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4ED9B2:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4ED9B4:  LDR             R1, [R1]; CWorld::Players ...
4ED9B6:  LDR             R0, [R0]; CWorld::PlayerInFocus
4ED9B8:  SMULBB.W        R0, R0, R2
4ED9BC:  LDR             R1, [R1,R0]
4ED9BE:  LDR.W           R0, [R1,#0x590]
4ED9C2:  CMP             R0, #0
4ED9C4:  ITT NE
4ED9C6:  LDRNE.W         R1, [R1,#0x484]
4ED9CA:  ANDSNE.W        R1, R1, #0x100; unsigned int
4ED9CE:  BEQ             loc_4EDA0A
4ED9D0:  VLDR            S0, [R0,#0x48]
4ED9D4:  VLDR            S2, [R0,#0x4C]
4ED9D8:  VMUL.F32        S0, S0, S0
4ED9DC:  VLDR            S4, [R0,#0x50]
4ED9E0:  VMUL.F32        S2, S2, S2
4ED9E4:  VMUL.F32        S4, S4, S4
4ED9E8:  VADD.F32        S0, S0, S2
4ED9EC:  VLDR            S2, =0.04
4ED9F0:  VADD.F32        S0, S0, S4
4ED9F4:  VCMPE.F32       S0, S2
4ED9F8:  VMRS            APSR_nzcv, FPSCR
4ED9FC:  BLE             loc_4EDA0A
4ED9FE:  LDR             R0, [R4,#0x24]
4EDA00:  LDRB            R0, [R0,#0x10]
4EDA02:  CBNZ            R0, loc_4EDA34
4EDA04:  MOVS            R0, #0
4EDA06:  ADD             SP, SP, #0x10
4EDA08:  POP             {R4,R5,R7,PC}
4EDA0A:  LDRB            R0, [R4,#0xC]
4EDA0C:  CBZ             R0, loc_4EDA2E
4EDA0E:  LDR             R0, [R4,#0x34]
4EDA10:  CBNZ            R0, loc_4EDA7A
4EDA12:  LDR             R0, [R4,#0x28]
4EDA14:  LDRB            R0, [R0,#0x10]
4EDA16:  CBZ             R0, loc_4EDA7A
4EDA18:  LDR             R0, [R4,#8]
4EDA1A:  CBZ             R0, loc_4EDA86
4EDA1C:  LDR             R1, [R0]
4EDA1E:  LDR             R1, [R1,#0x14]
4EDA20:  BLX             R1
4EDA22:  CMP.W           R0, #0x1AC
4EDA26:  BNE             loc_4EDA86
4EDA28:  LDR             R0, [R4,#8]
4EDA2A:  ADD             SP, SP, #0x10
4EDA2C:  POP             {R4,R5,R7,PC}
4EDA2E:  LDR             R0, [R4,#0x24]
4EDA30:  LDRB            R0, [R0,#0x10]
4EDA32:  CBZ             R0, loc_4EDA7A
4EDA34:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EDA3A)
4EDA36:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EDA38:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EDA3A:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
4EDA3C:  BLX             rand
4EDA40:  UXTH            R0, R0
4EDA42:  VLDR            S2, =0.000015259
4EDA46:  VMOV            S0, R0
4EDA4A:  MOVS            R0, #1
4EDA4C:  MOVW            R1, #0x4E20
4EDA50:  VCVT.F32.S32    S0, S0
4EDA54:  STR             R5, [R4,#0x14]
4EDA56:  VMUL.F32        S0, S0, S2
4EDA5A:  VLDR            S2, =80000.0
4EDA5E:  VMUL.F32        S0, S0, S2
4EDA62:  VCVT.S32.F32    S0, S0
4EDA66:  STRB            R0, [R4,#0x1C]
4EDA68:  STRB            R0, [R4,#0xD]
4EDA6A:  VMOV            R0, S0
4EDA6E:  ADD             R0, R1
4EDA70:  STR             R0, [R4,#0x18]
4EDA72:  MOV             R0, R4
4EDA74:  MOV.W           R1, #0x1A2
4EDA78:  B               loc_4EDA7E
4EDA7A:  MOV             R0, R4; this
4EDA7C:  MOVS            R1, #0xCA; int
4EDA7E:  ADD             SP, SP, #0x10
4EDA80:  POP.W           {R4,R5,R7,LR}
4EDA84:  B               _ZN20CTaskComplexSunbathe13CreateSubTaskEiP4CPed; CTaskComplexSunbathe::CreateSubTask(int,CPed *)
4EDA86:  MOVS            R0, #dword_20; this
4EDA88:  LDR             R4, [R4,#0x20]
4EDA8A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EDA8E:  LDR             R1, =(aStartSunbathin - 0x4EDA9A); "start sunbathing"
4EDA90:  MOVS            R2, #1
4EDA92:  MOV.W           R3, #0x1AC
4EDA96:  ADD             R1, PC; "start sunbathing"
4EDA98:  STRD.W          R3, R1, [SP,#0x18+var_18]
4EDA9C:  MOVS            R1, #0x30 ; '0'
4EDA9E:  STR             R2, [SP,#0x18+var_10]
4EDAA0:  ADD.W           R2, R4, #0xF4
4EDAA4:  MOV.W           R3, #0x40800000
4EDAA8:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4EDAAC:  ADD             SP, SP, #0x10
4EDAAE:  POP             {R4,R5,R7,PC}
