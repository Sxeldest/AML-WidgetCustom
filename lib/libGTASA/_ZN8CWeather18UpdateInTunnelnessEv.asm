; =========================================================
; Game Engine Function: _ZN8CWeather18UpdateInTunnelnessEv
; Address            : 0x5CDD1C - 0x5CDEDC
; =========================================================

5CDD1C:  LDR             R0, =(_ZN10CCullZones19CurrentFlags_CameraE_ptr - 0x5CDD22)
5CDD1E:  ADD             R0, PC; _ZN10CCullZones19CurrentFlags_CameraE_ptr
5CDD20:  LDR             R0, [R0]; CCullZones::CurrentFlags_Camera ...
5CDD22:  LDRB            R0, [R0,#(byte_A7D3A1 - 0xA7D3A0)]
5CDD24:  LSLS            R0, R0, #0x1A
5CDD26:  BMI             loc_5CDD2E
5CDD28:  VLDR            S0, =0.0
5CDD2C:  B               loc_5CDE8C
5CDD2E:  PUSH            {R4,R5,R7,LR}
5CDD30:  ADD             R7, SP, #0x10+var_8
5CDD32:  VPUSH           {D8-D9}
5CDD36:  SUB             SP, SP, #0x20 ; ' '
5CDD38:  LDR             R0, =(TheCamera_ptr - 0x5CDD3E)
5CDD3A:  ADD             R0, PC; TheCamera_ptr
5CDD3C:  LDR             R1, [R0]; TheCamera
5CDD3E:  LDR             R0, [R1,#(dword_951FBC - 0x951FA8)]
5CDD40:  ADD.W           R2, R0, #0x30 ; '0'
5CDD44:  CMP             R0, #0
5CDD46:  IT EQ
5CDD48:  ADDEQ           R2, R1, #4
5CDD4A:  CMP             R0, #0
5CDD4C:  LDRD.W          R1, R2, [R2]
5CDD50:  STRD.W          R1, R2, [SP,#0x40+var_30]
5CDD54:  MOV.W           R1, #0
5CDD58:  STR             R1, [SP,#0x40+var_28]
5CDD5A:  BEQ             loc_5CDD6A
5CDD5C:  VLDR            D16, [R0,#0x10]
5CDD60:  LDR             R0, [R0,#0x18]
5CDD62:  STR             R0, [SP,#0x40+var_38]
5CDD64:  VSTR            D16, [SP,#0x40+var_40]
5CDD68:  B               loc_5CDD88
5CDD6A:  LDR             R0, =(TheCamera_ptr - 0x5CDD72)
5CDD6C:  STR             R1, [SP,#0x40+var_38]
5CDD6E:  ADD             R0, PC; TheCamera_ptr
5CDD70:  LDR             R0, [R0]; TheCamera
5CDD72:  LDR             R4, [R0,#(dword_951FB8 - 0x951FA8)]
5CDD74:  MOV             R0, R4; x
5CDD76:  BLX.W           cosf
5CDD7A:  STR             R0, [SP,#0x40+var_40+4]
5CDD7C:  MOV             R0, R4; x
5CDD7E:  BLX.W           sinf
5CDD82:  EOR.W           R0, R0, #0x80000000
5CDD86:  STR             R0, [SP,#0x40+var_40]
5CDD88:  MOVS            R0, #0
5CDD8A:  STR             R0, [SP,#0x40+var_38]
5CDD8C:  MOV             R0, SP; this
5CDD8E:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5CDD92:  VLDR            S16, =100.0
5CDD96:  VLDR            S0, [SP,#0x40+var_40]
5CDD9A:  VLDR            S2, [SP,#0x40+var_40+4]
5CDD9E:  VLDR            S4, [SP,#0x40+var_38]
5CDDA2:  VMUL.F32        S0, S0, S16
5CDDA6:  VMUL.F32        S2, S2, S16
5CDDAA:  VLDR            S6, [SP,#0x40+var_30]
5CDDAE:  VMUL.F32        S4, S4, S16
5CDDB2:  VLDR            S8, [SP,#0x40+var_2C]
5CDDB6:  VLDR            S10, =0.0
5CDDBA:  LDR             R0, =(byte_A7D218 - 0x5CDDC0)
5CDDBC:  ADD             R0, PC; byte_A7D218
5CDDBE:  VADD.F32        S0, S6, S0
5CDDC2:  VADD.F32        S2, S8, S2
5CDDC6:  VADD.F32        S4, S4, S10
5CDDCA:  VSTR            S0, [SP,#0x40+var_40]
5CDDCE:  VSTR            S2, [SP,#0x40+var_40+4]
5CDDD2:  VSTR            S4, [SP,#0x40+var_38]
5CDDD6:  LDRB            R0, [R0]
5CDDD8:  DMB.W           ISH
5CDDDC:  TST.W           R0, #1
5CDDE0:  BNE             loc_5CDE0C
5CDDE2:  LDR             R0, =(byte_A7D218 - 0x5CDDE8)
5CDDE4:  ADD             R0, PC; byte_A7D218 ; __guard *
5CDDE6:  BLX.W           j___cxa_guard_acquire
5CDDEA:  CBZ             R0, loc_5CDE0C
5CDDEC:  LDR             R1, =(dword_A7D20C - 0x5CDDF8)
5CDDEE:  MOVS            R2, #0
5CDDF0:  LDR             R0, =(byte_A7D218 - 0x5CDDFE)
5CDDF2:  MOVS            R3, #0
5CDDF4:  ADD             R1, PC; dword_A7D20C
5CDDF6:  MOVT            R2, #0xC47F
5CDDFA:  ADD             R0, PC; byte_A7D218 ; __guard *
5CDDFC:  MOVT            R3, #0x42AA
5CDE00:  MOVS            R5, #0
5CDE02:  STRD.W          R3, R2, [R1]
5CDE06:  STR             R5, [R1,#(dword_A7D214 - 0xA7D20C)]
5CDE08:  BLX.W           j___cxa_guard_release
5CDE0C:  LDR             R0, =(byte_A7D228 - 0x5CDE12)
5CDE0E:  ADD             R0, PC; byte_A7D228
5CDE10:  LDRB            R0, [R0]
5CDE12:  DMB.W           ISH
5CDE16:  TST.W           R0, #1
5CDE1A:  BNE             loc_5CDE4A
5CDE1C:  LDR             R0, =(byte_A7D228 - 0x5CDE22)
5CDE1E:  ADD             R0, PC; byte_A7D228 ; __guard *
5CDE20:  BLX.W           j___cxa_guard_acquire
5CDE24:  CBZ             R0, loc_5CDE4A
5CDE26:  LDR             R1, =(dword_A7D21C - 0x5CDE36)
5CDE28:  MOVW            R2, #0x8000
5CDE2C:  LDR             R0, =(byte_A7D228 - 0x5CDE3C)
5CDE2E:  MOVW            R3, #0x6000
5CDE32:  ADD             R1, PC; dword_A7D21C
5CDE34:  MOVT            R2, #0xC4F4
5CDE38:  ADD             R0, PC; byte_A7D228 ; __guard *
5CDE3A:  MOVT            R3, #0x44D2
5CDE3E:  MOVS            R5, #0
5CDE40:  STRD.W          R3, R2, [R1]
5CDE44:  STR             R5, [R1,#(dword_A7D224 - 0xA7D21C)]
5CDE46:  BLX.W           j___cxa_guard_release
5CDE4A:  LDR             R2, =(dword_A7D20C - 0x5CDE54)
5CDE4C:  ADD             R4, SP, #0x40+var_30
5CDE4E:  MOV             R5, SP
5CDE50:  ADD             R2, PC; dword_A7D20C ; CVector *
5CDE52:  MOV             R0, R4; this
5CDE54:  MOV             R1, R5; CVector *
5CDE56:  BLX.W           j__ZN10CCollision10DistToLineEPK7CVectorS2_S2_; CCollision::DistToLine(CVector const*,CVector const*,CVector const*)
5CDE5A:  LDR             R2, =(dword_A7D21C - 0x5CDE68)
5CDE5C:  VMOV            S0, R0
5CDE60:  MOV             R0, R4; this
5CDE62:  MOV             R1, R5; CVector *
5CDE64:  ADD             R2, PC; dword_A7D21C ; CVector *
5CDE66:  VMIN.F32        D9, D0, D8
5CDE6A:  BLX.W           j__ZN10CCollision10DistToLineEPK7CVectorS2_S2_; CCollision::DistToLine(CVector const*,CVector const*,CVector const*)
5CDE6E:  VMOV            S0, R0
5CDE72:  VMIN.F32        D0, D9, D0
5CDE76:  VMOV.F32        S2, #1.0
5CDE7A:  VDIV.F32        S0, S0, S16
5CDE7E:  VMIN.F32        D0, D0, D1
5CDE82:  ADD             SP, SP, #0x20 ; ' '
5CDE84:  VPOP            {D8-D9}
5CDE88:  POP.W           {R4,R5,R7,LR}
5CDE8C:  LDR             R0, =(_ZN8CWeather12InTunnelnessE_ptr - 0x5CDE94)
5CDE8E:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5CDE9A)
5CDE90:  ADD             R0, PC; _ZN8CWeather12InTunnelnessE_ptr
5CDE92:  VLDR            S6, =0.01
5CDE96:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5CDE98:  LDR             R0, [R0]; CWeather::InTunnelness ...
5CDE9A:  VLDR            S2, [R0]
5CDE9E:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
5CDEA0:  VSUB.F32        S4, S0, S2
5CDEA4:  VLDR            S8, [R0]
5CDEA8:  VMUL.F32        S6, S8, S6
5CDEAC:  VABS.F32        S8, S4
5CDEB0:  VCMPE.F32       S8, S6
5CDEB4:  VMRS            APSR_nzcv, FPSCR
5CDEB8:  BLT             loc_5CDED0
5CDEBA:  VCMPE.F32       S4, #0.0
5CDEBE:  VMRS            APSR_nzcv, FPSCR
5CDEC2:  VNEG.F32        S0, S6
5CDEC6:  IT LT
5CDEC8:  VMOVLT.F32      S6, S0
5CDECC:  VADD.F32        S0, S2, S6
5CDED0:  LDR             R0, =(_ZN8CWeather12InTunnelnessE_ptr - 0x5CDED6)
5CDED2:  ADD             R0, PC; _ZN8CWeather12InTunnelnessE_ptr
5CDED4:  LDR             R0, [R0]; CWeather::InTunnelness ...
5CDED6:  VSTR            S0, [R0]
5CDEDA:  BX              LR
