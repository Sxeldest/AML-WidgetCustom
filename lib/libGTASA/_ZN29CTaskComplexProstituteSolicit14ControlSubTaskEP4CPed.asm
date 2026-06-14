; =========================================================
; Game Engine Function: _ZN29CTaskComplexProstituteSolicit14ControlSubTaskEP4CPed
; Address            : 0x51BB48 - 0x51C352
; =========================================================

51BB48:  PUSH            {R4-R7,LR}
51BB4A:  ADD             R7, SP, #0xC
51BB4C:  PUSH.W          {R8-R11}
51BB50:  SUB             SP, SP, #4
51BB52:  VPUSH           {D8-D11}
51BB56:  SUB             SP, SP, #0x30
51BB58:  MOV             R4, R0
51BB5A:  MOV             R10, R1
51BB5C:  LDRH            R0, [R4,#0x2C]
51BB5E:  AND.W           R1, R0, #0x102
51BB62:  CMP.W           R1, #0x100
51BB66:  BEQ             loc_51BB72
51BB68:  CMP             R1, #2
51BB6A:  BNE             loc_51BB78
51BB6C:  ORR.W           R0, R0, #0x100
51BB70:  B               loc_51BB76
51BB72:  BIC.W           R0, R0, #0x100
51BB76:  STRH            R0, [R4,#0x2C]
51BB78:  LDR             R1, [R4,#0xC]; CPed *
51BB7A:  MOV             R0, R10; this
51BB7C:  BLX             j__ZN29CTaskComplexProstituteSolicit11IsTaskValidEP4CPedS1_; CTaskComplexProstituteSolicit::IsTaskValid(CPed *,CPed *)
51BB80:  LDRH            R1, [R4,#0x2C]
51BB82:  CMP             R0, #0
51BB84:  VLDR            S16, =50.0
51BB88:  ITTT EQ
51BB8A:  BICEQ.W         R0, R1, #0x104
51BB8E:  ORREQ.W         R1, R0, #4
51BB92:  STRHEQ          R1, [R4,#0x2C]
51BB94:  VLDR            S2, =1000.0
51BB98:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x51BBA0)
51BB9C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
51BB9E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
51BBA0:  VLDR            S0, [R0]
51BBA4:  LSLS            R0, R1, #0x1D
51BBA6:  VDIV.F32        S0, S0, S16
51BBAA:  VMUL.F32        S0, S0, S2
51BBAE:  VCVT.S32.F32    S0, S0
51BBB2:  VMOV            R11, S0
51BBB6:  BMI             loc_51BC16
51BBB8:  MOV             R9, R4
51BBBA:  LDR.W           R0, [R9,#8]!
51BBBE:  LDR             R1, [R0]
51BBC0:  LDR             R1, [R1,#0x14]
51BBC2:  BLX             R1
51BBC4:  CMP             R0, #0xCB
51BBC6:  BNE             loc_51BC2A
51BBC8:  LDR.W           R0, =(Pads_ptr - 0x51BBD0)
51BBCC:  ADD             R0, PC; Pads_ptr
51BBCE:  LDR             R0, [R0]; Pads ; this
51BBD0:  BLX             j__ZN4CPad23ConversationYesJustDownEv; CPad::ConversationYesJustDown(void)
51BBD4:  CMP             R0, #1
51BBD6:  BNE.W           loc_51BCDA
51BBDA:  LDR             R0, [R4,#0xC]; this
51BBDC:  LDRH            R1, [R4,#0x2C]
51BBDE:  CMP             R0, #0
51BBE0:  ORR.W           R1, R1, #0x400
51BBE4:  STRH            R1, [R4,#0x2C]
51BBE6:  BEQ             loc_51BBFC
51BBE8:  MOVS            R1, #0
51BBEA:  MOVS            R2, #0; unsigned int
51BBEC:  STRD.W          R1, R1, [SP,#0x70+var_70]; unsigned __int8
51BBF0:  MOV.W           R3, #0x3F800000; float
51BBF4:  STR             R1, [SP,#0x70+var_68]; unsigned __int8
51BBF6:  MOVS            R1, #0xC4; unsigned __int16
51BBF8:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
51BBFC:  LDR             R0, [R4]
51BBFE:  MOV             R1, R10
51BC00:  LDR             R2, [R0,#0x28]
51BC02:  MOV             R0, R4
51BC04:  ADD             SP, SP, #0x30 ; '0'
51BC06:  VPOP            {D8-D11}
51BC0A:  ADD             SP, SP, #4
51BC0C:  POP.W           {R8-R11}
51BC10:  POP.W           {R4-R7,LR}
51BC14:  BX              R2
51BC16:  LDRH            R0, [R4,#0x2A]
51BC18:  CBZ             R0, loc_51BC96
51BC1A:  SUB.W           R0, R0, R11
51BC1E:  STRH            R0, [R4,#0x2A]
51BC20:  LSLS            R0, R0, #0x10
51BC22:  CMP             R0, #1
51BC24:  BLT             loc_51BD0E
51BC26:  LDR             R0, [R4,#8]
51BC28:  B               loc_51C344
51BC2A:  LDR.W           R0, [R9]
51BC2E:  LDR             R1, [R0]
51BC30:  LDR             R1, [R1,#0x14]
51BC32:  BLX             R1
51BC34:  MOVW            R1, #0x38B
51BC38:  CMP             R0, R1
51BC3A:  BEQ             loc_51BC4C
51BC3C:  LDR.W           R0, [R9]
51BC40:  LDR             R1, [R0]
51BC42:  LDR             R1, [R1,#0x14]
51BC44:  BLX             R1
51BC46:  CMP.W           R0, #0x2BC
51BC4A:  BNE             loc_51BD48
51BC4C:  LDR             R0, [R4,#0xC]
51BC4E:  VMOV.F32        S4, #16.0
51BC52:  VLDR            S0, [R4,#0x10]
51BC56:  LDR.W           R0, [R0,#0x590]
51BC5A:  LDR             R1, [R0,#0x14]
51BC5C:  ADD.W           R2, R1, #0x30 ; '0'
51BC60:  CMP             R1, #0
51BC62:  IT EQ
51BC64:  ADDEQ           R2, R0, #4
51BC66:  VLDR            D16, [R4,#0x14]
51BC6A:  VLDR            S2, [R2]
51BC6E:  VLDR            D17, [R2,#4]
51BC72:  VSUB.F32        S0, S2, S0
51BC76:  VSUB.F32        D16, D17, D16
51BC7A:  VMUL.F32        D1, D16, D16
51BC7E:  VMUL.F32        S0, S0, S0
51BC82:  VADD.F32        S0, S0, S2
51BC86:  VADD.F32        S0, S0, S3
51BC8A:  VCMPE.F32       S0, S4
51BC8E:  VMRS            APSR_nzcv, FPSCR
51BC92:  BGT             loc_51BD04
51BC94:  B               loc_51C340
51BC96:  MOV             R9, R4
51BC98:  LDR.W           R0, [R9,#8]!
51BC9C:  LDR             R1, [R0]
51BC9E:  LDR             R1, [R1,#0x14]
51BCA0:  BLX             R1
51BCA2:  CMP.W           R0, #0x2C0
51BCA6:  BEQ.W           loc_51C340
51BCAA:  LDR.W           R0, [R9]
51BCAE:  MOVS            R2, #1
51BCB0:  MOVS            R3, #0
51BCB2:  LDR             R1, [R0]
51BCB4:  LDR             R6, [R1,#0x1C]
51BCB6:  MOV             R1, R10
51BCB8:  BLX             R6
51BCBA:  CMP             R0, #1
51BCBC:  BNE.W           loc_51C340
51BCC0:  MOV             R0, R4; this
51BCC2:  MOV.W           R1, #0x2C0; int
51BCC6:  MOV             R2, R10; CPed *
51BCC8:  ADD             SP, SP, #0x30 ; '0'
51BCCA:  VPOP            {D8-D11}
51BCCE:  ADD             SP, SP, #4
51BCD0:  POP.W           {R8-R11}
51BCD4:  POP.W           {R4-R7,LR}
51BCD8:  B               _ZN29CTaskComplexProstituteSolicit13CreateSubTaskEiP4CPed; CTaskComplexProstituteSolicit::CreateSubTask(int,CPed *)
51BCDA:  LDR.W           R0, =(Pads_ptr - 0x51BCE2)
51BCDE:  ADD             R0, PC; Pads_ptr
51BCE0:  LDR             R0, [R0]; Pads ; this
51BCE2:  BLX             j__ZN4CPad22ConversationNoJustDownEv; CPad::ConversationNoJustDown(void)
51BCE6:  CMP             R0, #1
51BCE8:  BNE.W           loc_51C340
51BCEC:  LDR             R0, [R4,#0xC]; this
51BCEE:  CBZ             R0, loc_51BD04
51BCF0:  MOVS            R1, #0
51BCF2:  MOVS            R2, #0; unsigned int
51BCF4:  STRD.W          R1, R1, [SP,#0x70+var_70]; unsigned __int8
51BCF8:  MOV.W           R3, #0x3F800000; float
51BCFC:  STR             R1, [SP,#0x70+var_68]; unsigned __int8
51BCFE:  MOVS            R1, #0xC3; unsigned __int16
51BD00:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
51BD04:  LDRH            R0, [R4,#0x2C]
51BD06:  ORR.W           R0, R0, #4
51BD0A:  STRH            R0, [R4,#0x2C]
51BD0C:  B               loc_51C340
51BD0E:  MOVW            R1, #:lower16:(elf_hash_chain+0xD358)
51BD12:  MOV.W           R0, #0xFFFFFFFF
51BD16:  STR             R0, [SP,#0x70+var_70]; __int16
51BD18:  MOVT            R1, #:upper16:(elf_hash_chain+0xD358); __int16
51BD1C:  MOVS            R0, #byte_9; this
51BD1E:  MOV.W           R2, #0xFFFFFFFF; unsigned int
51BD22:  MOV.W           R3, #0xFFFFFFFF; __int16
51BD26:  BLX             j__ZN23CAEPedSpeechAudioEntity9SetCJMoodEsjsss; CAEPedSpeechAudioEntity::SetCJMood(short,uint,short,short,short)
51BD2A:  LDR             R0, [R4,#0xC]; this
51BD2C:  MOVS            R5, #0
51BD2E:  MOVS            R1, #0xB; unsigned __int16
51BD30:  MOVS            R2, #0; unsigned int
51BD32:  MOV.W           R3, #0x3F800000; float
51BD36:  STRD.W          R5, R5, [SP,#0x70+var_70]; unsigned __int8
51BD3A:  STR             R5, [SP,#0x70+var_68]; unsigned __int8
51BD3C:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
51BD40:  ADD.W           R9, R4, #8
51BD44:  STRH            R5, [R4,#0x2A]
51BD46:  B               loc_51C340
51BD48:  LDR.W           R0, [R9]
51BD4C:  LDR             R1, [R0]
51BD4E:  LDR             R1, [R1,#0x14]
51BD50:  BLX             R1
51BD52:  MOVW            R1, #0x2D5
51BD56:  CMP             R0, R1
51BD58:  BNE.W           loc_51C340
51BD5C:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51BD68)
51BD60:  LDR.W           R1, =(TheCamera_ptr - 0x51BD6A)
51BD64:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51BD66:  ADD             R1, PC; TheCamera_ptr
51BD68:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51BD6A:  LDR             R1, [R1]; TheCamera
51BD6C:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
51BD6E:  LDR.W           R0, [R1,#(dword_952054 - 0x951FA8)]
51BD72:  CMP             R0, #1
51BD74:  BNE             loc_51BDA8
51BD76:  STR             R5, [R4,#0x1C]
51BD78:  MOV.W           R0, #0x1F40
51BD7C:  LDRH            R1, [R4,#0x2C]
51BD7E:  STRH            R0, [R4,#0x2A]
51BD80:  BIC.W           R1, R1, #0x980
51BD84:  LDR             R0, [R4,#8]
51BD86:  ORR.W           R1, R1, #0x880
51BD8A:  STRH            R1, [R4,#0x2C]
51BD8C:  B               loc_51C344
51BD8E:  ALIGN 0x10
51BD90:  DCFS 50.0
51BD94:  DCFS 1000.0
51BD98:  DCFD 2.06158464e11
51BDA0:  DCFS 56.25
51BDA4:  DCFS 400.0
51BDA8:  LDR             R0, [R4,#0xC]
51BDAA:  VLDR            D16, =2.06158464e11
51BDAE:  LDR.W           R0, [R0,#0x590]
51BDB2:  VLDR            S0, [R0,#0x48]
51BDB6:  VLDR            D17, [R0,#0x4C]
51BDBA:  VMUL.F32        S0, S0, S16
51BDBE:  LDRH            R0, [R4,#0x2C]
51BDC0:  VMUL.F32        D16, D17, D16
51BDC4:  VMOV.F32        S16, #0.5625
51BDC8:  VMUL.F32        D1, D16, D16
51BDCC:  VMUL.F32        S0, S0, S0
51BDD0:  VADD.F32        S0, S0, S2
51BDD4:  VADD.F32        S18, S0, S3
51BDD8:  VCMPE.F32       S18, S16
51BDDC:  VMRS            APSR_nzcv, FPSCR
51BDE0:  BGE             loc_51BDE8
51BDE2:  ANDS.W          R1, R0, #0x80
51BDE6:  BEQ             loc_51BDF0
51BDE8:  BIC.W           R0, R0, #0x80
51BDEC:  STRH            R0, [R4,#0x2C]
51BDEE:  STR             R5, [R4,#0x1C]
51BDF0:  MOV.W           R0, #0xFFFFFFFF; int
51BDF4:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
51BDF8:  MOV             R12, R0
51BDFA:  LDR             R0, [R4,#0x20]
51BDFC:  STR             R5, [SP,#0x70+var_54]
51BDFE:  CMP             R5, R0
51BE00:  BLS.W           loc_51BF38
51BE04:  LDRH            R0, [R4,#0x2C]
51BE06:  MOV.W           R8, #0
51BE0A:  LDR             R1, [SP,#0x70+var_54]
51BE0C:  BIC.W           R0, R0, #0x38 ; '8'
51BE10:  VLDR            S20, =56.25
51BE14:  ADD.W           R1, R1, #0x3E8
51BE18:  STR             R1, [R4,#0x20]
51BE1A:  STRH            R0, [R4,#0x2C]
51BE1C:  LDR.W           R0, [R10,#0x440]
51BE20:  VLDR            S22, =400.0
51BE24:  ADD.W           LR, R0, #0x130
51BE28:  LDR.W           R1, [LR,R8,LSL#2]
51BE2C:  CMP             R1, #0
51BE2E:  BEQ             loc_51BF2C
51BE30:  LDR             R2, [R4,#0xC]
51BE32:  CMP             R1, R2
51BE34:  ITT NE
51BE36:  LDRNE.W         R0, [R1,#0x59C]
51BE3A:  CMPNE           R0, #0x16
51BE3C:  BEQ             loc_51BF2C
51BE3E:  LDR.W           R0, [R10,#0x14]
51BE42:  LDR             R3, [R1,#0x14]
51BE44:  ADD.W           R5, R0, #0x30 ; '0'
51BE48:  CMP             R0, #0
51BE4A:  ADD.W           R0, R1, #4
51BE4E:  IT EQ
51BE50:  ADDEQ.W         R5, R10, #4
51BE54:  CMP             R3, #0
51BE56:  VLDR            S0, [R5]
51BE5A:  MOV             R6, R0
51BE5C:  IT NE
51BE5E:  ADDNE.W         R6, R3, #0x30 ; '0'
51BE62:  VLDR            D16, [R5,#4]
51BE66:  VLDR            S2, [R6]
51BE6A:  VLDR            D17, [R6,#4]
51BE6E:  VSUB.F32        S0, S2, S0
51BE72:  VSUB.F32        D16, D17, D16
51BE76:  VMUL.F32        D1, D16, D16
51BE7A:  VMUL.F32        S0, S0, S0
51BE7E:  VADD.F32        S0, S0, S2
51BE82:  VADD.F32        S0, S0, S3
51BE86:  VCMPE.F32       S0, S20
51BE8A:  VMRS            APSR_nzcv, FPSCR
51BE8E:  VCMPE.F32       S0, S22
51BE92:  ITTT LT
51BE94:  LDRHLT          R3, [R4,#0x2C]
51BE96:  ORRLT.W         R3, R3, #0x10
51BE9A:  STRHLT          R3, [R4,#0x2C]
51BE9C:  VMRS            APSR_nzcv, FPSCR
51BEA0:  ITTT LT
51BEA2:  LDRHLT          R3, [R4,#0x2C]
51BEA4:  ORRLT.W         R3, R3, #8
51BEA8:  STRHLT          R3, [R4,#0x2C]
51BEAA:  LDR.W           R3, [R1,#0x59C]
51BEAE:  CMP             R3, #6
51BEB0:  BNE             loc_51BF2C
51BEB2:  CMP.W           R12, #0
51BEB6:  ITT NE
51BEB8:  LDRHNE          R3, [R4,#0x2C]
51BEBA:  ANDSNE.W        R3, R3, #2
51BEBE:  BEQ             loc_51BF2C
51BEC0:  LDR.W           R3, [R12,#0x2C]
51BEC4:  CMP             R3, #0
51BEC6:  BGT             loc_51BF2C
51BEC8:  LDR.W           R2, [R2,#0x590]
51BECC:  LDR             R5, [R2,#0x1C]
51BECE:  STR             R5, [SP,#0x70+var_58]
51BED0:  LDR             R3, [R2,#0x20]
51BED2:  BIC.W           R6, R5, #1
51BED6:  MOVS            R5, #0
51BED8:  STRD.W          R6, R3, [R2,#0x1C]
51BEDC:  MOVS            R6, #(stderr+1)
51BEDE:  LDR             R2, [R4,#0xC]
51BEE0:  LDR             R1, [R1,#0x14]
51BEE2:  LDR             R3, [R2,#0x14]
51BEE4:  CMP             R1, #0
51BEE6:  STR             R5, [SP,#0x70+var_70]; bool
51BEE8:  STRD.W          R6, R5, [SP,#0x70+var_6C]; bool
51BEEC:  STRD.W          R6, R5, [SP,#0x70+var_64]; CColLine *
51BEF0:  IT NE
51BEF2:  ADDNE.W         R0, R1, #0x30 ; '0'; this
51BEF6:  ADD.W           R1, R3, #0x30 ; '0'
51BEFA:  CMP             R3, #0
51BEFC:  IT EQ
51BEFE:  ADDEQ           R1, R2, #4; CVector *
51BF00:  MOVS            R2, #(stderr+1); CVector *
51BF02:  MOVS            R3, #1; bool
51BF04:  MOV             R5, R12
51BF06:  MOV             R6, LR
51BF08:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
51BF0C:  LDR             R1, [R4,#0xC]
51BF0E:  CMP             R0, #1
51BF10:  LDR             R3, [SP,#0x70+var_58]
51BF12:  MOV             LR, R6
51BF14:  MOV             R12, R5
51BF16:  LDR.W           R1, [R1,#0x590]
51BF1A:  LDR             R2, [R1,#0x1C]
51BF1C:  BFI.W           R2, R3, #0, #1; float
51BF20:  STR             R2, [R1,#0x1C]
51BF22:  ITTT EQ
51BF24:  LDRHEQ          R0, [R4,#0x2C]
51BF26:  ORREQ.W         R0, R0, #0x20 ; ' '
51BF2A:  STRHEQ          R0, [R4,#0x2C]
51BF2C:  ADD.W           R8, R8, #1
51BF30:  CMP.W           R8, #0x10
51BF34:  BNE.W           loc_51BE28
51BF38:  LDRH            R0, [R4,#0x2C]
51BF3A:  TST.W           R0, #1
51BF3E:  BNE             loc_51BF74
51BF40:  LSLS            R1, R0, #0x1E
51BF42:  BPL.W           loc_51C340
51BF46:  MOV             R6, R12
51BF48:  LSLS            R1, R0, #0x19
51BF4A:  BPL             loc_51BF62
51BF4C:  MOVW            R1, #0x3A98
51BF50:  BIC.W           R0, R0, #0x40 ; '@'
51BF54:  STRH            R1, [R4,#0x2A]
51BF56:  MOV.W           R1, #0x3F800000; unsigned __int16
51BF5A:  STRH            R0, [R4,#0x2C]
51BF5C:  MOVS            R0, #(dword_BC+2); this
51BF5E:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
51BF62:  LDR.W           R0, =(Pads_ptr - 0x51BF6A)
51BF66:  ADD             R0, PC; Pads_ptr
51BF68:  LDR             R0, [R0]; Pads ; this
51BF6A:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
51BF6E:  CBZ             R0, loc_51BFBE
51BF70:  MOVS            R5, #1
51BF72:  B               loc_51BFD2
51BF74:  LDR             R2, [SP,#0x70+var_54]
51BF76:  VCMPE.F32       S18, S16
51BF7A:  VMRS            APSR_nzcv, FPSCR
51BF7E:  BGE.W           loc_51C340
51BF82:  LDR             R1, [R4,#0x1C]
51BF84:  SUBS            R1, R2, R1
51BF86:  CMP.W           R1, #0xFA0
51BF8A:  BLS.W           loc_51C340
51BF8E:  LSLS            R1, R0, #0x1C
51BF90:  BMI             loc_51BFF6
51BF92:  LDR.W           R1, =(TheText_ptr - 0x51BFA4)
51BF96:  BIC.W           R0, R0, #3
51BF9A:  ORR.W           R0, R0, #2
51BF9E:  STR             R2, [R4,#0x24]
51BFA0:  ADD             R1, PC; TheText_ptr
51BFA2:  STRH            R0, [R4,#0x2C]
51BFA4:  ADR.W           R4, aPros02; "PROS_02"
51BFA8:  LDR             R0, [R1]; TheText ; this
51BFAA:  MOV             R1, R4; CKeyGen *
51BFAC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
51BFB0:  MOV             R1, R0
51BFB2:  MOVS            R0, #1
51BFB4:  STR             R0, [SP,#0x70+var_70]
51BFB6:  MOV             R0, R4
51BFB8:  MOV.W           R2, #0x7D0
51BFBC:  B               loc_51C08E
51BFBE:  LDR.W           R0, =(Pads_ptr - 0x51BFC6)
51BFC2:  ADD             R0, PC; Pads_ptr
51BFC4:  LDR             R0, [R0]; Pads ; this
51BFC6:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
51BFCA:  MOV             R5, R0
51BFCC:  CMP             R5, #0
51BFCE:  IT NE
51BFD0:  MOVNE           R5, #1
51BFD2:  BLX             rand
51BFD6:  MOV             R2, R0
51BFD8:  LDRH            R0, [R4,#0x2C]
51BFDA:  CMP             R6, #0
51BFDC:  MOV.W           R8, #0
51BFE0:  IT NE
51BFE2:  ANDSNE.W        R1, R0, #0x20 ; ' '
51BFE6:  BEQ             loc_51C03E
51BFE8:  LDR             R1, [R6,#0x2C]
51BFEA:  CMP             R1, #0
51BFEC:  BLE             loc_51C026
51BFEE:  MOV.W           R8, #0
51BFF2:  CBNZ            R5, loc_51C040
51BFF4:  B               loc_51C096
51BFF6:  LSLS            R0, R0, #0x13
51BFF8:  BMI.W           loc_51C340
51BFFC:  LDR             R0, =(TheText_ptr - 0x51C004)
51BFFE:  ADR             R5, aPros01; "PROS_01"
51C000:  ADD             R0, PC; TheText_ptr
51C002:  MOV             R1, R5; CKeyGen *
51C004:  LDR             R0, [R0]; TheText ; this
51C006:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
51C00A:  MOV             R1, R0; char *
51C00C:  MOVS            R0, #1
51C00E:  STR             R0, [SP,#0x70+var_70]; unsigned __int16
51C010:  MOV             R0, R5; this
51C012:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
51C016:  MOVS            R3, #1; unsigned int
51C018:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
51C01C:  LDRH            R0, [R4,#0x2C]
51C01E:  ORR.W           R0, R0, #0x1000
51C022:  STRH            R0, [R4,#0x2C]
51C024:  B               loc_51C340
51C026:  MOV.W           R0, #0xFFFFFFFF; int
51C02A:  MOV             R6, R2
51C02C:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
51C030:  MOVS            R1, #1; int
51C032:  MOV.W           R8, #1
51C036:  BLX             j__ZN7CWanted14SetWantedLevelEi; CWanted::SetWantedLevel(int)
51C03A:  LDRH            R0, [R4,#0x2C]
51C03C:  MOV             R2, R6
51C03E:  CBZ             R5, loc_51C096
51C040:  LDR             R1, [SP,#0x70+var_54]
51C042:  STR             R1, [R4,#0x1C]
51C044:  MOVW            R1, #0xF7FC
51C048:  ANDS            R0, R1
51C04A:  MOVW            R1, #0x801
51C04E:  ORRS            R1, R0
51C050:  STRH            R1, [R4,#0x2C]
51C052:  MOV             R1, #0x1FFFFFFF
51C056:  CMP             R2, R1
51C058:  BCC             loc_51C066
51C05A:  LDRSH.W         R1, [R4,#0x2A]
51C05E:  MOVW            R2, #0xBB7
51C062:  CMP             R1, R2
51C064:  BGT             loc_51C13C
51C066:  LDR             R1, =(TheText_ptr - 0x51C070)
51C068:  MOVS            R2, #0
51C06A:  LDR             R5, =(aPros09 - 0x51C07C); "PROS_09"
51C06C:  ADD             R1, PC; TheText_ptr
51C06E:  STRH            R2, [R4,#0x2A]
51C070:  MOVW            R2, #0x805
51C074:  ORRS            R0, R2
51C076:  STRH            R0, [R4,#0x2C]
51C078:  ADD             R5, PC; "PROS_09"
51C07A:  LDR             R0, [R1]; TheText ; this
51C07C:  MOV             R1, R5; CKeyGen *
51C07E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
51C082:  MOV             R1, R0; char *
51C084:  MOVS            R0, #1
51C086:  STR             R0, [SP,#0x70+var_70]; unsigned __int16
51C088:  MOV             R0, R5; this
51C08A:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
51C08E:  MOVS            R3, #1; unsigned int
51C090:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
51C094:  B               loc_51C340
51C096:  AND.W           R1, R0, #0x10
51C09A:  ORR.W           R1, R8, R1,LSR#4
51C09E:  CBZ             R1, loc_51C0CC
51C0A0:  LDR             R1, [SP,#0x70+var_54]
51C0A2:  STR             R1, [R4,#0x1C]
51C0A4:  MOVW            R1, #0xF7FC
51C0A8:  ANDS            R0, R1
51C0AA:  MOVW            R1, #0x801
51C0AE:  LDRSH.W         R2, [R4,#0x2A]
51C0B2:  ORRS            R1, R0
51C0B4:  STRH            R1, [R4,#0x2C]
51C0B6:  MOVW            R1, #0xBB7
51C0BA:  CMP             R2, R1
51C0BC:  BGT             loc_51C11C
51C0BE:  MOVS            R1, #0
51C0C0:  STRH            R1, [R4,#0x2A]
51C0C2:  MOVW            R1, #0x805
51C0C6:  ORRS            R0, R1
51C0C8:  STRH            R0, [R4,#0x2C]
51C0CA:  B               loc_51C340
51C0CC:  LDRH            R0, [R4,#0x28]
51C0CE:  MOV             R6, R2
51C0D0:  SUB.W           R0, R0, R11
51C0D4:  STRH            R0, [R4,#0x28]
51C0D6:  LDR.W           R8, [SP,#0x70+var_54]
51C0DA:  LSLS            R0, R0, #0x10
51C0DC:  CMP.W           R0, #0x10000
51C0E0:  BGE             loc_51C144
51C0E2:  BLX             rand
51C0E6:  VMOV            S0, R0
51C0EA:  VLDR            S2, =-4.6566e-10
51C0EE:  VMOV.F32        S4, #-0.5
51C0F2:  MOV             R5, R4
51C0F4:  VCVT.F32.S32    S0, S0
51C0F8:  LDRSH.W         R0, [R5,#0x2A]!
51C0FC:  MOVW            R1, #0x2711
51C100:  CMP             R0, R1
51C102:  VMUL.F32        S0, S0, S2
51C106:  VLDR            S2, =0.4
51C10A:  VMUL.F32        S0, S0, S2
51C10E:  VADD.F32        S16, S0, S4
51C112:  BLT             loc_51C14A
51C114:  MOVW            R0, #0x352
51C118:  STRH            R0, [R4,#0x28]
51C11A:  B               loc_51C186
51C11C:  LDR             R0, =(TheText_ptr - 0x51C124)
51C11E:  ADR             R5, aPros01; "PROS_01"
51C120:  ADD             R0, PC; TheText_ptr
51C122:  MOV             R1, R5; CKeyGen *
51C124:  LDR             R0, [R0]; TheText ; this
51C126:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
51C12A:  MOV             R1, R0; char *
51C12C:  MOVS            R0, #1
51C12E:  STR             R0, [SP,#0x70+var_70]; unsigned __int16
51C130:  MOV             R0, R5; this
51C132:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
51C136:  MOVS            R3, #1; unsigned int
51C138:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
51C13C:  MOV.W           R0, #0x1F40
51C140:  STRH            R0, [R4,#0x2A]
51C142:  B               loc_51C340
51C144:  ADD.W           R5, R4, #0x2A ; '*'
51C148:  B               loc_51C25A
51C14A:  MOVW            R1, #0x1389; int
51C14E:  CMP             R0, R1
51C150:  BLT             loc_51C15A
51C152:  MOV.W           R0, #0x1C2
51C156:  STRH            R0, [R4,#0x28]
51C158:  B               loc_51C186
51C15A:  CMP.W           R0, #0x3E8
51C15E:  BLE             loc_51C166
51C160:  MOVS            R0, #0x78 ; 'x'
51C162:  STRH            R0, [R4,#0x28]
51C164:  B               loc_51C186
51C166:  MOVW            R0, #0x352
51C16A:  STRH            R0, [R4,#0x28]
51C16C:  MOVS            R0, #0; this
51C16E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
51C172:  MOV.W           R1, #0x3E8; __int16
51C176:  MOVS            R2, #0x78 ; 'x'; unsigned __int8
51C178:  MOVS            R3, #0; unsigned int
51C17A:  BLX             j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
51C17E:  VMOV.F32        S0, #0.5
51C182:  VMUL.F32        S16, S16, S0
51C186:  LDR             R1, [R4,#0xC]
51C188:  VMOV.F32        S4, #15.0
51C18C:  LDR.W           R0, [R1,#0x590]
51C190:  LDR             R2, [R0,#0x14]
51C192:  ADD.W           R3, R2, #0x30 ; '0'
51C196:  CMP             R2, #0
51C198:  IT EQ
51C19A:  ADDEQ           R3, R0, #4
51C19C:  LDR             R2, [R1,#0x14]
51C19E:  VLDR            S0, [R3]
51C1A2:  VLDR            S2, [R3,#4]
51C1A6:  ADD.W           R3, R2, #0x30 ; '0'
51C1AA:  CMP             R2, #0
51C1AC:  IT EQ
51C1AE:  ADDEQ           R3, R1, #4
51C1B0:  VLDR            D16, [R3]
51C1B4:  LDR             R2, [R3,#8]
51C1B6:  STR             R2, [SP,#0x70+var_48]
51C1B8:  VSTR            D16, [SP,#0x70+var_50]
51C1BC:  VLDR            S6, [R0,#0x90]
51C1C0:  VLDR            S8, [R1,#0x90]
51C1C4:  LSLS            R1, R6, #0x1F
51C1C6:  VDIV.F32        S4, S6, S4
51C1CA:  VLDR            S6, =150.0
51C1CE:  VMIN.F32        D16, D2, D3
51C1D2:  VMAX.F32        D2, D16, D4
51C1D6:  VMUL.F32        S4, S16, S4
51C1DA:  BNE             loc_51C1EE
51C1DC:  LDR.W           R2, [R10,#0x14]
51C1E0:  ADD.W           R1, R2, #0x30 ; '0'
51C1E4:  CMP             R2, #0
51C1E6:  IT EQ
51C1E8:  ADDEQ.W         R1, R10, #4
51C1EC:  B               loc_51C1F0
51C1EE:  ADD             R1, SP, #0x70+var_50
51C1F0:  VMOV            R3, S4
51C1F4:  VLDR            S4, [R1]
51C1F8:  VLDR            S6, [R1,#4]
51C1FC:  MOVS            R1, #0
51C1FE:  VSUB.F32        S0, S4, S0
51C202:  STR             R1, [SP,#0x70+var_68]
51C204:  VSUB.F32        S2, S6, S2
51C208:  MOVS            R1, #0
51C20A:  MOVS            R2, #0
51C20C:  VSTR            S0, [SP,#0x70+var_70]
51C210:  VSTR            S2, [SP,#0x70+var_6C]
51C214:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
51C218:  LDR             R0, [R4,#0xC]
51C21A:  MOVS            R1, #0x6C ; 'l'; int
51C21C:  MOVS            R2, #0; float
51C21E:  LDR.W           R0, [R0,#0x590]
51C222:  ADD.W           R0, R0, #0x13C; this
51C226:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
51C22A:  CMP.W           R6, #0x10000000
51C22E:  BCC             loc_51C25A
51C230:  LDRH            R0, [R4,#0x2C]
51C232:  ANDS.W          R0, R0, #0x200
51C236:  BEQ             loc_51C25A
51C238:  UXTH            R0, R6
51C23A:  CMP             R0, #0xFE
51C23C:  MOV.W           R0, #0
51C240:  MOV.W           R2, #0; unsigned int
51C244:  STRD.W          R0, R0, [SP,#0x70+var_70]; unsigned __int8
51C248:  MOV.W           R3, #0x3F000000; float
51C24C:  STR             R0, [SP,#0x70+var_68]; unsigned __int8
51C24E:  ITE HI
51C250:  MOVHI           R1, #0x74 ; 't'
51C252:  MOVLS           R1, #0x70 ; 'p'; unsigned __int16
51C254:  MOV             R0, R10; this
51C256:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
51C25A:  LDRH            R0, [R5]
51C25C:  SUB.W           R0, R0, R11
51C260:  STRH            R0, [R5]
51C262:  LSLS            R0, R0, #0x10
51C264:  CMP.W           R0, #0x10000
51C268:  BGE             loc_51C27C
51C26A:  LDRH            R0, [R4,#0x2C]
51C26C:  MOVW            R1, #0xBB8
51C270:  STRH            R1, [R4,#0x2A]
51C272:  BIC.W           R0, R0, #6
51C276:  ORR.W           R0, R0, #4
51C27A:  STRH            R0, [R4,#0x2C]
51C27C:  LDR             R0, [R4,#0x24]
51C27E:  SUB.W           R0, R8, R0
51C282:  CMP.W           R0, #0x3E8
51C286:  BLS             loc_51C340
51C288:  LDR             R0, [R4,#0xC]; this
51C28A:  STR.W           R8, [R4,#0x24]
51C28E:  BLX             j__ZN10CPlayerPed29GetPlayerInfoForThisPlayerPedEv; CPlayerPed::GetPlayerInfoForThisPlayerPed(void)
51C292:  MOV             R6, R0
51C294:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x51C29A)
51C296:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
51C298:  LDR             R1, [R0]; CCheat::m_aCheatsActive ...
51C29A:  LDR.W           R0, [R6,#0xB8]
51C29E:  LDRB.W          R1, [R1,#(byte_796856 - 0x7967F4)]
51C2A2:  CBZ             R1, loc_51C2AC
51C2A4:  ADDS            R0, #2
51C2A6:  STR.W           R0, [R6,#0xB8]
51C2AA:  B               loc_51C330
51C2AC:  CMP             R0, #2
51C2AE:  BLT             loc_51C2CC
51C2B0:  SUBS            R0, #2
51C2B2:  STR.W           R0, [R6,#0xB8]
51C2B6:  MOVS            R0, #(dword_20+1); this
51C2B8:  MOV.W           R1, #0x40000000; unsigned __int16
51C2BC:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
51C2C0:  LDRH.W          R0, [R10,#0x75E]
51C2C4:  ADDS            R0, #1
51C2C6:  STRH.W          R0, [R10,#0x75E]
51C2CA:  B               loc_51C330
51C2CC:  MOVS            R0, #0
51C2CE:  STR.W           R0, [R6,#0xB8]
51C2D2:  LDRH            R1, [R4,#0x2C]; unsigned __int8
51C2D4:  STRH            R0, [R4,#0x2A]
51C2D6:  BIC.W           R0, R1, #6
51C2DA:  ORR.W           R0, R0, #4
51C2DE:  STRH            R0, [R4,#0x2C]
51C2E0:  MOVS            R0, #0; this
51C2E2:  BLX             j__ZN9CMessages13ClearMessagesEh; CMessages::ClearMessages(uchar)
51C2E6:  LDR             R0, =(TheText_ptr - 0x51C2F0)
51C2E8:  LDR.W           R8, =(aPros06 - 0x51C2F2); "PROS_06"
51C2EC:  ADD             R0, PC; TheText_ptr
51C2EE:  ADD             R8, PC; "PROS_06"
51C2F0:  LDR             R5, [R0]; TheText
51C2F2:  MOV             R1, R8; CKeyGen *
51C2F4:  MOV             R0, R5; this
51C2F6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
51C2FA:  MOV             R1, R0; char *
51C2FC:  MOV.W           R10, #1
51C300:  MOV             R0, R8; this
51C302:  MOV.W           R2, #(elf_hash_bucket+0x6D4); unsigned __int16 *
51C306:  MOVS            R3, #1; unsigned int
51C308:  STR.W           R10, [SP,#0x70+var_70]; unsigned __int16
51C30C:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
51C310:  LDR.W           R8, =(aPros09 - 0x51C31A); "PROS_09"
51C314:  MOV             R0, R5; this
51C316:  ADD             R8, PC; "PROS_09"
51C318:  MOV             R1, R8; CKeyGen *
51C31A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
51C31E:  MOV             R1, R0; char *
51C320:  MOV             R0, R8; this
51C322:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
51C326:  MOVS            R3, #1; unsigned int
51C328:  STR.W           R10, [SP,#0x70+var_70]; unsigned __int16
51C32C:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
51C330:  LDRB.W          R0, [R4,#0x2D]
51C334:  LSLS            R0, R0, #0x1C
51C336:  BMI             loc_51C340
51C338:  MOV             R0, R6; this
51C33A:  MOVS            R1, #2; int
51C33C:  BLX             j__ZN11CPlayerInfo9AddHealthEi; CPlayerInfo::AddHealth(int)
51C340:  LDR.W           R0, [R9]
51C344:  ADD             SP, SP, #0x30 ; '0'
51C346:  VPOP            {D8-D11}
51C34A:  ADD             SP, SP, #4
51C34C:  POP.W           {R8-R11}
51C350:  POP             {R4-R7,PC}
