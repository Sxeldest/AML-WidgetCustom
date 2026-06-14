; =========================================================
; Game Engine Function: _ZN10MobileMenu4LoadEv
; Address            : 0x29AE48 - 0x29B03A
; =========================================================

29AE48:  PUSH            {R4-R7,LR}
29AE4A:  ADD             R7, SP, #0xC
29AE4C:  PUSH.W          {R8}
29AE50:  VPUSH           {D8-D10}
29AE54:  SUB             SP, SP, #8
29AE56:  MOV             R4, R0
29AE58:  ADR             R0, aResetinput; "resetinput"
29AE5A:  MOVS            R1, #0; char *
29AE5C:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
29AE60:  LDR             R0, =(aMenu_1 - 0x29AE66); "menu"
29AE62:  ADD             R0, PC; "menu"
29AE64:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
29AE68:  MOV             R5, R0
29AE6A:  MOV             R0, #0x3C23D70A; this
29AE72:  MOVS            R1, #1; float
29AE74:  BLX             j__ZN22TextureDatabaseRuntime15UpdateStreamingEfb; TextureDatabaseRuntime::UpdateStreaming(float,bool)
29AE78:  MOV             R0, R5; this
29AE7A:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
29AE7E:  ADR             R0, aMenuBgmap; "menu_bgmap"
29AE80:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29AE84:  LDR             R1, [R0,#0x54]
29AE86:  ADDS            R1, #1; char *
29AE88:  STR             R1, [R0,#0x54]
29AE8A:  STR             R0, [R4,#0x30]
29AE8C:  ADR             R0, aMenuSliderempt; "menu_sliderempty"
29AE8E:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29AE92:  LDR             R1, [R0,#0x54]
29AE94:  ADDS            R1, #1; char *
29AE96:  STR             R1, [R0,#0x54]
29AE98:  STR             R0, [R4,#0x34]
29AE9A:  ADR             R0, aMenuSliderfull; "menu_sliderfull"
29AE9C:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29AEA0:  LDR             R1, [R0,#0x54]
29AEA2:  ADDS            R1, #1; char *
29AEA4:  STR             R1, [R0,#0x54]
29AEA6:  STR             R0, [R4,#0x38]
29AEA8:  ADR             R0, aMenuSlidernub; "menu_slidernub"
29AEAA:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29AEAE:  LDR             R1, [R0,#0x54]
29AEB0:  ADDS            R1, #1; char *
29AEB2:  STR             R1, [R0,#0x54]
29AEB4:  STR             R0, [R4,#0x3C]
29AEB6:  ADR             R0, aMenuAdjback; "menu_adjback"
29AEB8:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29AEBC:  LDR             R1, [R0,#0x54]
29AEBE:  ADDS            R1, #1; char *
29AEC0:  STR             R1, [R0,#0x54]
29AEC2:  STR             R0, [R4,#0x40]
29AEC4:  ADR             R0, aMenuAdjback2; "menu_adjback2"
29AEC6:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29AECA:  LDR             R1, [R0,#0x54]
29AECC:  ADDS            R1, #1
29AECE:  STR             R1, [R0,#0x54]
29AED0:  STR             R0, [R4,#0x44]
29AED2:  BLX             j__ZN6CTimer14StartUserPauseEv; CTimer::StartUserPause(void)
29AED6:  ADD.W           R8, SP, #0x30+var_2C
29AEDA:  MOV             R6, SP
29AEDC:  MOVS            R0, #0; int
29AEDE:  MOV             R2, R6; int *
29AEE0:  MOV             R1, R8; int *
29AEE2:  MOVS            R3, #0; float *
29AEE4:  BLX             j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
29AEE8:  LDR             R0, =(RsGlobal_ptr - 0x29AEF6)
29AEEA:  MOV             R1, R8; int *
29AEEC:  VLDR            S4, [SP,#0x30+var_2C]
29AEF0:  MOV             R2, R6; int *
29AEF2:  ADD             R0, PC; RsGlobal_ptr
29AEF4:  VLDR            S18, =240.0
29AEF8:  VLDR            S16, =480.0
29AEFC:  MOVS            R3, #0; float *
29AEFE:  LDR             R5, [R0]; RsGlobal
29AF00:  MOVS            R0, #1; int
29AF02:  VLDR            S20, =320.0
29AF06:  VLDR            S0, [R5,#4]
29AF0A:  VLDR            S2, [R5,#8]
29AF0E:  VCVT.F32.S32    S0, S0
29AF12:  VCVT.F32.S32    S4, S4
29AF16:  VLDR            S6, [SP,#0x30+var_30]
29AF1A:  VCVT.F32.S32    S6, S6
29AF1E:  VCVT.F32.S32    S2, S2
29AF22:  VMUL.F32        S0, S0, S18
29AF26:  VMUL.F32        S4, S4, S16
29AF2A:  VSUB.F32        S0, S4, S0
29AF2E:  VMUL.F32        S4, S6, S16
29AF32:  VDIV.F32        S0, S0, S2
29AF36:  VDIV.F32        S2, S4, S2
29AF3A:  VADD.F32        S0, S0, S20
29AF3E:  VSTR            S0, [R4,#0x70]
29AF42:  VSTR            S2, [R4,#0x74]
29AF46:  BLX             j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
29AF4A:  VLDR            S0, [R5,#4]
29AF4E:  MOVS            R0, #2; int
29AF50:  VLDR            S4, [SP,#0x30+var_2C]
29AF54:  MOV             R1, R8; int *
29AF56:  VLDR            S2, [R5,#8]
29AF5A:  VCVT.F32.S32    S0, S0
29AF5E:  VCVT.F32.S32    S4, S4
29AF62:  VLDR            S6, [SP,#0x30+var_30]
29AF66:  MOV             R2, R6; int *
29AF68:  MOVS            R3, #0; float *
29AF6A:  VCVT.F32.S32    S6, S6
29AF6E:  VCVT.F32.S32    S2, S2
29AF72:  VMUL.F32        S0, S0, S18
29AF76:  VMUL.F32        S4, S4, S16
29AF7A:  VSUB.F32        S0, S4, S0
29AF7E:  VMUL.F32        S4, S6, S16
29AF82:  VDIV.F32        S0, S0, S2
29AF86:  VDIV.F32        S2, S4, S2
29AF8A:  VADD.F32        S0, S0, S20
29AF8E:  VSTR            S0, [R4,#0x78]
29AF92:  VSTR            S2, [R4,#0x7C]
29AF96:  BLX             j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
29AF9A:  VLDR            S0, [R5,#4]
29AF9E:  MOVS            R0, #3; int
29AFA0:  VLDR            S4, [SP,#0x30+var_2C]
29AFA4:  MOV             R1, R8; int *
29AFA6:  VLDR            S2, [R5,#8]
29AFAA:  VCVT.F32.S32    S0, S0
29AFAE:  VCVT.F32.S32    S4, S4
29AFB2:  VLDR            S6, [SP,#0x30+var_30]
29AFB6:  MOV             R2, R6; int *
29AFB8:  MOVS            R3, #0; float *
29AFBA:  VCVT.F32.S32    S6, S6
29AFBE:  VCVT.F32.S32    S2, S2
29AFC2:  VMUL.F32        S0, S0, S18
29AFC6:  VMUL.F32        S4, S4, S16
29AFCA:  VSUB.F32        S0, S4, S0
29AFCE:  VMUL.F32        S4, S6, S16
29AFD2:  VDIV.F32        S0, S0, S2
29AFD6:  VDIV.F32        S2, S4, S2
29AFDA:  VADD.F32        S0, S0, S20
29AFDE:  VSTR            S0, [R4,#0x80]
29AFE2:  VSTR            S2, [R4,#0x84]
29AFE6:  BLX             j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
29AFEA:  VLDR            S0, [R5,#4]
29AFEE:  VLDR            S4, [SP,#0x30+var_2C]
29AFF2:  VLDR            S2, [R5,#8]
29AFF6:  VCVT.F32.S32    S0, S0
29AFFA:  VCVT.F32.S32    S4, S4
29AFFE:  VLDR            S6, [SP,#0x30+var_30]
29B002:  VCVT.F32.S32    S6, S6
29B006:  VCVT.F32.S32    S2, S2
29B00A:  VMUL.F32        S0, S0, S18
29B00E:  VMUL.F32        S4, S4, S16
29B012:  VSUB.F32        S0, S4, S0
29B016:  VMUL.F32        S4, S6, S16
29B01A:  VDIV.F32        S0, S0, S2
29B01E:  VDIV.F32        S2, S4, S2
29B022:  VADD.F32        S0, S0, S20
29B026:  VSTR            S0, [R4,#0x88]
29B02A:  VSTR            S2, [R4,#0x8C]
29B02E:  ADD             SP, SP, #8
29B030:  VPOP            {D8-D10}
29B034:  POP.W           {R8}
29B038:  POP             {R4-R7,PC}
