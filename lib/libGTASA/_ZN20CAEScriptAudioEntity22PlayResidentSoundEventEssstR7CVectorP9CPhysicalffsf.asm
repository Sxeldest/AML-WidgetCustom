; =========================================================
; Game Engine Function: _ZN20CAEScriptAudioEntity22PlayResidentSoundEventEssstR7CVectorP9CPhysicalffsf
; Address            : 0x3A46A8 - 0x3A4806
; =========================================================

3A46A8:  PUSH            {R4-R7,LR}
3A46AA:  ADD             R7, SP, #0xC
3A46AC:  PUSH.W          {R8-R11}
3A46B0:  SUB             SP, SP, #0x2C
3A46B2:  MOV             R4, R0
3A46B4:  LDR             R0, =(AEAudioHardware_ptr - 0x3A46BE)
3A46B6:  MOV             R10, R1
3A46B8:  UXTH            R1, R2; unsigned __int16
3A46BA:  ADD             R0, PC; AEAudioHardware_ptr
3A46BC:  MOV             R2, R10; __int16
3A46BE:  MOV             R6, R3
3A46C0:  LDR             R0, [R0]; AEAudioHardware ; this
3A46C2:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3A46C6:  CBZ             R0, loc_3A470E
3A46C8:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3A46D2)
3A46CA:  LDR.W           R11, [R7,#arg_0]
3A46CE:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3A46D0:  LDR             R5, [R7,#arg_8]
3A46D2:  VLDR            S0, [R7,#arg_18]
3A46D6:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3A46D8:  CMP             R5, #0
3A46DA:  LDR.W           R8, [R7,#arg_14]
3A46DE:  VLDR            S2, [R7,#arg_10]
3A46E2:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3A46E4:  VLDR            S4, [R7,#arg_C]
3A46E8:  LDRSB.W         R0, [R0,R11]
3A46EC:  VMOV            S6, R0
3A46F0:  VCVT.F32.S32    S6, S6
3A46F4:  VADD.F32        S4, S6, S4
3A46F8:  BEQ             loc_3A4716
3A46FA:  LDR             R0, [R5,#0x14]
3A46FC:  MOV             R2, R6
3A46FE:  ADD.W           R3, R0, #0x30 ; '0'
3A4702:  CMP             R0, #0
3A4704:  IT EQ
3A4706:  ADDEQ           R3, R5, #4
3A4708:  LDRD.W          R1, R12, [R3]
3A470C:  B               loc_3A478E
3A470E:  ADD             SP, SP, #0x2C ; ','
3A4710:  POP.W           {R8-R11}
3A4714:  POP             {R4-R7,PC}
3A4716:  LDR             R3, [R7,#arg_4]
3A4718:  VLDR            S8, =-1000.0
3A471C:  VLDR            S6, [R3]
3A4720:  VCMP.F32        S6, S8
3A4724:  VMRS            APSR_nzcv, FPSCR
3A4728:  BNE             loc_3A474A
3A472A:  VLDR            S10, [R3,#4]
3A472E:  VCMP.F32        S10, S8
3A4732:  VMRS            APSR_nzcv, FPSCR
3A4736:  ITTT EQ
3A4738:  VLDREQ          S10, [R3,#8]
3A473C:  VCMPEQ.F32      S10, S8
3A4740:  VMRSEQ          APSR_nzcv, FPSCR
3A4744:  BNE             loc_3A474A
3A4746:  MOV             R2, R6
3A4748:  B               loc_3A4776
3A474A:  VCMP.F32        S6, #0.0
3A474E:  VMRS            APSR_nzcv, FPSCR
3A4752:  BNE             loc_3A4784
3A4754:  VLDR            S8, [R3,#4]
3A4758:  MOV             R2, R6
3A475A:  VCMP.F32        S8, #0.0
3A475E:  VMRS            APSR_nzcv, FPSCR
3A4762:  VMOV            R12, S8
3A4766:  ITTT EQ
3A4768:  VLDREQ          S8, [R3,#8]
3A476C:  VCMPEQ.F32      S8, #0.0
3A4770:  VMRSEQ          APSR_nzcv, FPSCR
3A4774:  BNE             loc_3A478A
3A4776:  MOV.W           R9, #1
3A477A:  MOV.W           R12, #0x3F800000
3A477E:  MOVS            R1, #0
3A4780:  MOVS            R0, #0
3A4782:  B               loc_3A4794
3A4784:  LDR.W           R12, [R3,#4]
3A4788:  MOV             R2, R6
3A478A:  VMOV            R1, S6
3A478E:  LDR             R0, [R3,#8]
3A4790:  MOV.W           R9, #0
3A4794:  MOVS            R3, #0
3A4796:  MOV.W           R6, #0x3F800000
3A479A:  STRD.W          R6, R3, [SP,#0x48+var_30]
3A479E:  ADD.W           R6, R4, #8
3A47A2:  STRD.W          R3, R3, [SP,#0x48+var_28]
3A47A6:  STR             R3, [SP,#0x48+var_20]
3A47A8:  MOV             R3, R4
3A47AA:  VSTR            S4, [SP,#0x48+var_3C]
3A47AE:  VSTR            S0, [SP,#0x48+var_38]
3A47B2:  VSTR            S2, [SP,#0x48+var_34]
3A47B6:  STRD.W          R1, R12, [SP,#0x48+var_48]
3A47BA:  MOV             R1, R10
3A47BC:  STR             R0, [SP,#0x48+var_40]
3A47BE:  MOV             R0, R6
3A47C0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3A47C4:  MOVS            R0, #0x26 ; '&'
3A47C6:  MOVS            R1, #1; unsigned __int16
3A47C8:  STRH.W          R0, [R4,#0x5E]
3A47CC:  MOV             R0, R6; this
3A47CE:  MOV             R2, R9; unsigned __int16
3A47D0:  STRH.W          R8, [R4,#0x64]
3A47D4:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3A47D8:  CBZ             R5, loc_3A47EC
3A47DA:  MOV             R0, R6; this
3A47DC:  MOVS            R1, #0x80; unsigned __int16
3A47DE:  MOVS            R2, #1; unsigned __int16
3A47E0:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3A47E4:  MOV             R0, R6; this
3A47E6:  MOV             R1, R5; CEntity *
3A47E8:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3A47EC:  LDR             R0, =(AESoundManager_ptr - 0x3A47F8)
3A47EE:  MOV             R1, R6; CAESound *
3A47F0:  STR.W           R11, [R4,#0x14]
3A47F4:  ADD             R0, PC; AESoundManager_ptr
3A47F6:  LDR             R0, [R0]; AESoundManager ; this
3A47F8:  ADD             SP, SP, #0x2C ; ','
3A47FA:  POP.W           {R8-R11}
3A47FE:  POP.W           {R4-R7,LR}
3A4802:  B.W             sub_19F824
