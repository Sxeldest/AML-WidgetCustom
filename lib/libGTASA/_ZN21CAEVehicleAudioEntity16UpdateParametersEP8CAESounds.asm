; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x3ABDC4 - 0x3AC050
; =========================================================

3ABDC4:  PUSH            {R4-R7,LR}
3ABDC6:  ADD             R7, SP, #0xC
3ABDC8:  PUSH.W          {R11}
3ABDCC:  VPUSH           {D8}
3ABDD0:  SUB             SP, SP, #0x10
3ABDD2:  MOV             R4, R1
3ABDD4:  MOV             R5, R2
3ABDD6:  MOV             R6, R0
3ABDD8:  CMP             R4, #0
3ABDDA:  BEQ.W           loc_3AC014
3ABDDE:  LDR             R1, [R4,#0xC]; float
3ABDE0:  MOVW            R0, #0xFFFF
3ABDE4:  CMP             R1, #0x63 ; 'c'
3ABDE6:  BEQ             loc_3ABE4A
3ABDE8:  CMP             R1, #0x5D ; ']'
3ABDEA:  BNE             loc_3ABE88
3ABDEC:  LDR             R0, [R4,#8]
3ABDEE:  CMP             R0, #0
3ABDF0:  BEQ.W           loc_3AC014
3ABDF4:  VLDR            S0, [R0,#0x54]
3ABDF8:  VLDR            S2, [R0,#0x58]
3ABDFC:  VMUL.F32        S0, S0, S0
3ABE00:  VLDR            S4, [R0,#0x5C]
3ABE04:  VMUL.F32        S2, S2, S2
3ABE08:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3ABE12)
3ABE0A:  VMUL.F32        S4, S4, S4
3ABE0E:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3ABE10:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3ABE12:  VADD.F32        S0, S0, S2
3ABE16:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3ABE18:  VMOV.F32        S2, #0.5625
3ABE1C:  LDRSB.W         R0, [R0,#0x5D]
3ABE20:  VADD.F32        S0, S0, S4
3ABE24:  VMIN.F32        D0, D0, D1
3ABE28:  VDIV.F32        S0, S0, S2
3ABE2C:  VMOV            S2, R0
3ABE30:  VCVT.F32.S32    S16, S2
3ABE34:  VLDR            S2, =1.0e-10
3ABE38:  VCMPE.F32       S0, S2
3ABE3C:  VMRS            APSR_nzcv, FPSCR
3ABE40:  BGE.W           loc_3ABF7E
3ABE44:  VLDR            S0, =-100.0
3ABE48:  B               loc_3ABF92
3ABE4A:  UXTH            R1, R5
3ABE4C:  CMP             R1, R0
3ABE4E:  BEQ.W           loc_3AC014
3ABE52:  LDR             R0, [R6,#4]
3ABE54:  LDR             R1, [R0,#0x14]
3ABE56:  ADD.W           R3, R1, #0x30 ; '0'
3ABE5A:  CMP             R1, #0
3ABE5C:  IT EQ
3ABE5E:  ADDEQ           R3, R0, #4
3ABE60:  MOV             R0, R4
3ABE62:  LDM             R3, {R1-R3}
3ABE64:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3ABE68:  LDR             R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x3ABE72)
3ABE6A:  VMOV.F32        S0, #0.5
3ABE6E:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
3ABE70:  LDR             R0, [R0]; CWeather::UnderWaterness ...
3ABE72:  VLDR            S2, [R0]
3ABE76:  VCMPE.F32       S2, S0
3ABE7A:  VMRS            APSR_nzcv, FPSCR
3ABE7E:  ITT GE
3ABE80:  MOVGE           R0, R4; this
3ABE82:  BLXGE           j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3ABE86:  B               loc_3ABF52
3ABE88:  UXTH            R1, R5
3ABE8A:  CMP             R1, R0
3ABE8C:  BNE             loc_3ABF52
3ABE8E:  LDR.W           R0, [R6,#0x158]
3ABE92:  CMP             R0, R4
3ABE94:  BEQ.W           loc_3ABF9C
3ABE98:  LDR.W           R0, [R6,#0x160]
3ABE9C:  CMP             R0, R4
3ABE9E:  BEQ.W           loc_3ABFB4
3ABEA2:  LDR.W           R0, [R6,#0x168]
3ABEA6:  CMP             R0, R4
3ABEA8:  BEQ.W           loc_3ABFD8
3ABEAC:  LDR.W           R0, [R6,#0x170]
3ABEB0:  CMP             R0, R4
3ABEB2:  BEQ.W           loc_3ABFDE
3ABEB6:  LDR.W           R0, [R6,#0x178]
3ABEBA:  CMP             R0, R4
3ABEBC:  BEQ.W           loc_3ABFE4
3ABEC0:  LDR.W           R0, [R6,#0x17C]
3ABEC4:  CMP             R0, R4
3ABEC6:  BEQ.W           loc_3ABFEA
3ABECA:  LDR.W           R0, [R6,#0x180]
3ABECE:  CMP             R0, R4
3ABED0:  BEQ.W           loc_3ABFF0
3ABED4:  MOV             R0, R6
3ABED6:  LDR.W           R1, [R0,#0xE8]!
3ABEDA:  CMP             R1, R4
3ABEDC:  ITTTT NE
3ABEDE:  MOVNE           R0, R6
3ABEE0:  LDRNE.W         R1, [R0,#0xF0]!
3ABEE4:  CMPNE           R1, R4
3ABEE6:  MOVNE           R0, R6
3ABEE8:  ITT NE
3ABEEA:  LDRNE.W         R1, [R0,#0xF8]!
3ABEEE:  CMPNE           R1, R4
3ABEF0:  BEQ.W           loc_3ABFF4
3ABEF4:  LDR.W           R0, [R6,#0x100]
3ABEF8:  CMP             R0, R4
3ABEFA:  BEQ.W           loc_3AC020
3ABEFE:  LDR.W           R0, [R6,#0x108]
3ABF02:  CMP             R0, R4
3ABF04:  BEQ.W           loc_3AC026
3ABF08:  LDR.W           R0, [R6,#0x110]
3ABF0C:  CMP             R0, R4
3ABF0E:  BEQ.W           loc_3AC02C
3ABF12:  LDR.W           R0, [R6,#0x118]
3ABF16:  CMP             R0, R4
3ABF18:  BEQ.W           loc_3AC032
3ABF1C:  LDR.W           R0, [R6,#0x120]
3ABF20:  CMP             R0, R4
3ABF22:  BEQ.W           loc_3AC038
3ABF26:  LDR.W           R0, [R6,#0x128]
3ABF2A:  CMP             R0, R4
3ABF2C:  BEQ.W           loc_3AC03E
3ABF30:  LDR.W           R0, [R6,#0x130]
3ABF34:  CMP             R0, R4
3ABF36:  BEQ.W           loc_3AC044
3ABF3A:  LDR.W           R0, [R6,#0x138]
3ABF3E:  CMP             R0, R4
3ABF40:  BEQ.W           loc_3AC04A
3ABF44:  LDR.W           R0, [R6,#0x140]
3ABF48:  CMP             R0, R4
3ABF4A:  BNE             loc_3ABFF8
3ABF4C:  ADD.W           R0, R6, #0x140
3ABF50:  B               loc_3ABFF4
3ABF52:  LDRB.W          R1, [R6,#0x80]
3ABF56:  SUBS            R0, R1, #4
3ABF58:  UXTB            R0, R0
3ABF5A:  CMP             R0, #2
3ABF5C:  BHI             loc_3ABF66
3ABF5E:  LDR.W           R0, [R6,#0x100]
3ABF62:  CMP             R0, R4
3ABF64:  BEQ             loc_3ABFA2
3ABF66:  LDR             R0, [R6,#4]
3ABF68:  LDR             R1, [R0,#0x14]
3ABF6A:  ADD.W           R3, R1, #0x30 ; '0'
3ABF6E:  CMP             R1, #0
3ABF70:  IT EQ
3ABF72:  ADDEQ           R3, R0, #4
3ABF74:  LDM             R3, {R1-R3}
3ABF76:  MOV             R0, R4
3ABF78:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3ABF7C:  B               loc_3ABFF8
3ABF7E:  VMOV            R0, S0; this
3ABF82:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3ABF86:  VMOV.F32        S0, #10.0
3ABF8A:  VMOV            S2, R0
3ABF8E:  VMUL.F32        S0, S2, S0
3ABF92:  VADD.F32        S0, S0, S16
3ABF96:  VSTR            S0, [R4,#0x14]
3ABF9A:  B               loc_3AC014
3ABF9C:  ADD.W           R0, R6, #0x158
3ABFA0:  B               loc_3ABFF4
3ABFA2:  LDR             R0, [R6,#4]
3ABFA4:  CMP             R1, #4
3ABFA6:  BNE             loc_3ABFBA
3ABFA8:  LDR             R1, [R0]
3ABFAA:  MOV             R2, SP
3ABFAC:  LDR             R3, [R1,#0x68]
3ABFAE:  MOVS            R1, #0xE
3ABFB0:  BLX             R3
3ABFB2:  B               loc_3ABFD2
3ABFB4:  ADD.W           R0, R6, #0x160
3ABFB8:  B               loc_3ABFF4
3ABFBA:  LDR             R1, [R0,#0x14]
3ABFBC:  ADD.W           R2, R1, #0x30 ; '0'
3ABFC0:  CMP             R1, #0
3ABFC2:  IT EQ
3ABFC4:  ADDEQ           R2, R0, #4
3ABFC6:  VLDR            D16, [R2]
3ABFCA:  LDR             R0, [R2,#8]
3ABFCC:  STR             R0, [SP,#0x28+var_20]
3ABFCE:  VSTR            D16, [SP,#0x28+var_28]
3ABFD2:  LDMFD.W         SP, {R1-R3}
3ABFD6:  B               loc_3ABF76
3ABFD8:  ADD.W           R0, R6, #0x168
3ABFDC:  B               loc_3ABFF4
3ABFDE:  ADD.W           R0, R6, #0x170
3ABFE2:  B               loc_3ABFF4
3ABFE4:  ADD.W           R0, R6, #0x178
3ABFE8:  B               loc_3ABFF4
3ABFEA:  ADD.W           R0, R6, #0x17C
3ABFEE:  B               loc_3ABFF4
3ABFF0:  ADD.W           R0, R6, #0x180
3ABFF4:  MOVS            R1, #0
3ABFF6:  STR             R1, [R0]
3ABFF8:  LDRB.W          R0, [R6,#0x80]
3ABFFC:  CMP             R0, #1
3ABFFE:  BHI             loc_3AC014
3AC000:  LDR.W           R0, [R6,#0x108]
3AC004:  CMP             R0, R4
3AC006:  ITTT EQ
3AC008:  LDRHEQ.W        R0, [R6,#0x148]
3AC00C:  STRHEQ.W        R0, [R6,#0x14A]
3AC010:  STRHEQ.W        R5, [R6,#0x148]
3AC014:  ADD             SP, SP, #0x10
3AC016:  VPOP            {D8}
3AC01A:  POP.W           {R11}
3AC01E:  POP             {R4-R7,PC}
3AC020:  ADD.W           R0, R6, #0x100
3AC024:  B               loc_3ABFF4
3AC026:  ADD.W           R0, R6, #0x108
3AC02A:  B               loc_3ABFF4
3AC02C:  ADD.W           R0, R6, #0x110
3AC030:  B               loc_3ABFF4
3AC032:  ADD.W           R0, R6, #0x118
3AC036:  B               loc_3ABFF4
3AC038:  ADD.W           R0, R6, #0x120
3AC03C:  B               loc_3ABFF4
3AC03E:  ADD.W           R0, R6, #0x128
3AC042:  B               loc_3ABFF4
3AC044:  ADD.W           R0, R6, #0x130
3AC048:  B               loc_3ABFF4
3AC04A:  ADD.W           R0, R6, #0x138
3AC04E:  B               loc_3ABFF4
