; =========================================================
; Game Engine Function: _ZN15CTouchInterface17SetupSteeringModeEv
; Address            : 0x2AFE64 - 0x2AFFFA
; =========================================================

2AFE64:  PUSH            {R4-R7,LR}
2AFE66:  ADD             R7, SP, #0xC
2AFE68:  PUSH.W          {R8,R9,R11}
2AFE6C:  SUB             SP, SP, #8
2AFE6E:  MOV.W           R0, #0xFFFFFFFF; int
2AFE72:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2AFE76:  CMP             R0, #0
2AFE78:  BEQ.W           loc_2AFF90
2AFE7C:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
2AFE80:  BLX             j__ZN4CPad15GetSteeringModeEv; CPad::GetSteeringMode(void)
2AFE84:  MOV             R5, R0
2AFE86:  CMP             R5, #1
2AFE88:  BNE             loc_2AFE94
2AFE8A:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFE90)
2AFE8C:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFE8E:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFE90:  LDR             R0, [R0,#(dword_6F37A8 - 0x6F3794)]
2AFE92:  CBZ             R0, loc_2AFEB4
2AFE94:  CBNZ            R5, loc_2AFEA2
2AFE96:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFE9C)
2AFE98:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFE9A:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFE9C:  LDR.W           R0, [R0,#(dword_6F3A44 - 0x6F3794)]
2AFEA0:  CBZ             R0, loc_2AFEB4
2AFEA2:  CMP             R5, #2
2AFEA4:  BNE             loc_2AFF90
2AFEA6:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFEAC)
2AFEA8:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFEAA:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFEAC:  LDR.W           R0, [R0,#(dword_6F3A48 - 0x6F3794)]
2AFEB0:  CMP             R0, #0
2AFEB2:  BNE             loc_2AFF90
2AFEB4:  LDR             R0, =(aMobile_1 - 0x2AFEBA); "mobile"
2AFEB6:  ADD             R0, PC; "mobile"
2AFEB8:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
2AFEBC:  MOV             R4, R0
2AFEBE:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
2AFEC2:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFEC8)
2AFEC4:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFEC6:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFEC8:  LDR             R0, [R0,#(dword_6F37A8 - 0x6F3794)]
2AFECA:  CBZ             R0, loc_2AFEDC
2AFECC:  LDR             R1, [R0]
2AFECE:  LDR             R1, [R1,#4]
2AFED0:  BLX             R1
2AFED2:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFEDA)
2AFED4:  MOVS            R1, #0
2AFED6:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFED8:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFEDA:  STR             R1, [R0,#(dword_6F37A8 - 0x6F3794)]
2AFEDC:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFEE2)
2AFEDE:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFEE0:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFEE2:  LDR             R0, [R0,#(dword_6F37AC - 0x6F3794)]
2AFEE4:  CBZ             R0, loc_2AFEF6
2AFEE6:  LDR             R1, [R0]
2AFEE8:  LDR             R1, [R1,#4]
2AFEEA:  BLX             R1
2AFEEC:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFEF4)
2AFEEE:  MOVS            R1, #0
2AFEF0:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFEF2:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFEF4:  STR             R1, [R0,#(dword_6F37AC - 0x6F3794)]
2AFEF6:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFEFC)
2AFEF8:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFEFA:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFEFC:  LDR.W           R0, [R0,#(dword_6F3A44 - 0x6F3794)]
2AFF00:  CBZ             R0, loc_2AFF14
2AFF02:  LDR             R1, [R0]
2AFF04:  LDR             R1, [R1,#4]
2AFF06:  BLX             R1
2AFF08:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFF10)
2AFF0A:  MOVS            R1, #0
2AFF0C:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFF0E:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFF10:  STR.W           R1, [R0,#(dword_6F3A44 - 0x6F3794)]
2AFF14:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFF1A)
2AFF16:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFF18:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFF1A:  LDR.W           R0, [R0,#(dword_6F3A48 - 0x6F3794)]
2AFF1E:  CBZ             R0, loc_2AFF32
2AFF20:  LDR             R1, [R0]
2AFF22:  LDR             R1, [R1,#4]
2AFF24:  BLX             R1
2AFF26:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFF2E)
2AFF28:  MOVS            R1, #0
2AFF2A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFF2C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFF2E:  STR.W           R1, [R0,#(dword_6F3A48 - 0x6F3794)]
2AFF32:  CBZ             R5, loc_2AFF98
2AFF34:  CMP             R5, #2
2AFF36:  BEQ             loc_2AFFC2
2AFF38:  CMP             R5, #1
2AFF3A:  BNE             loc_2AFFEA
2AFF3C:  MOVS            R0, #0xA8; unsigned int
2AFF3E:  BLX             _Znwj; operator new(uint)
2AFF42:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AFF50)
2AFF44:  MOVS            R3, #0x1A
2AFF46:  LDR             R2, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AFF54)
2AFF48:  MOV.W           R8, #0x40 ; '@'
2AFF4C:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AFF4E:  STR             R3, [SP,#0x20+var_1C]
2AFF50:  ADD             R2, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AFF52:  MOVS            R3, #1
2AFF54:  LDR.W           R9, [R1]; CTouchInterface::m_pszWidgetTextures ...
2AFF58:  LDR             R6, [R2]; CTouchInterface::m_WidgetPosition ...
2AFF5A:  ADD.W           R1, R9, #0x280
2AFF5E:  STR.W           R8, [SP,#0x20+var_20]
2AFF62:  ADD.W           R2, R6, #0x50 ; 'P'
2AFF66:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AFF6A:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFF70)
2AFF6C:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFF6E:  LDR             R5, [R1]; CTouchInterface::m_pWidgets ...
2AFF70:  STR             R0, [R5,#(dword_6F37A8 - 0x6F3794)]
2AFF72:  MOVS            R0, #0xA8; unsigned int
2AFF74:  BLX             _Znwj; operator new(uint)
2AFF78:  MOVS            R1, #0x1B
2AFF7A:  ADD.W           R2, R6, #0x60 ; '`'
2AFF7E:  STRD.W          R8, R1, [SP,#0x20+var_20]
2AFF82:  ADD.W           R1, R9, #0x300
2AFF86:  MOVS            R3, #1
2AFF88:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AFF8C:  STR             R0, [R5,#(dword_6F37AC - 0x6F3794)]
2AFF8E:  B               loc_2AFFEA
2AFF90:  ADD             SP, SP, #8
2AFF92:  POP.W           {R8,R9,R11}
2AFF96:  POP             {R4-R7,PC}
2AFF98:  MOVS            R0, #0xA8; unsigned int
2AFF9A:  BLX             _Znwj; operator new(uint)
2AFF9E:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AFFA6)
2AFFA0:  LDR             R2, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AFFA8)
2AFFA2:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AFFA4:  ADD             R2, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AFFA6:  LDR             R1, [R1]; CTouchInterface::m_pszWidgetTextures ...
2AFFA8:  LDR             R2, [R2]; CTouchInterface::m_WidgetPosition ...
2AFFAA:  ADD.W           R1, R1, #0x5600
2AFFAE:  ADD.W           R2, R2, #0x790
2AFFB2:  BLX             j__ZN18CWidgetRegionSteerC2EPKcRK14WidgetPosition; CWidgetRegionSteer::CWidgetRegionSteer(char const*,WidgetPosition const&)
2AFFB6:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFFBC)
2AFFB8:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFFBA:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2AFFBC:  STR.W           R0, [R1,#(dword_6F3A44 - 0x6F3794)]
2AFFC0:  B               loc_2AFFEA
2AFFC2:  MOVS            R0, #0x98; unsigned int
2AFFC4:  BLX             _Znwj; operator new(uint)
2AFFC8:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AFFD0)
2AFFCA:  LDR             R2, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AFFD2)
2AFFCC:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AFFCE:  ADD             R2, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AFFD0:  LDR             R1, [R1]; CTouchInterface::m_pszWidgetTextures ...
2AFFD2:  LDR             R2, [R2]; CTouchInterface::m_WidgetPosition ...
2AFFD4:  ADD.W           R1, R1, #0x5680
2AFFD8:  ADD.W           R2, R2, #0x7A0
2AFFDC:  BLX             j__ZN18CWidgetRegionFlickC2EPKcRK14WidgetPosition; CWidgetRegionFlick::CWidgetRegionFlick(char const*,WidgetPosition const&)
2AFFE0:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFFE6)
2AFFE2:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFFE4:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2AFFE6:  STR.W           R0, [R1,#(dword_6F3A48 - 0x6F3794)]
2AFFEA:  MOV             R0, R4
2AFFEC:  ADD             SP, SP, #8
2AFFEE:  POP.W           {R8,R9,R11}
2AFFF2:  POP.W           {R4-R7,LR}
2AFFF6:  B.W             j_j__ZN22TextureDatabaseRuntime10UnregisterEPS_; j_TextureDatabaseRuntime::Unregister(TextureDatabaseRuntime*)
